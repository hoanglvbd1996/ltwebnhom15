package mypackage;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
@WebServlet("/UploadServlet")

public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 

    // location to store file uploaded
    private static final String UPLOAD_DIRECTORY = "/img";

    // upload settings
    private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
    	connect c = new connect();
		c.DBConnectionManager();
    		String id= request.getParameter("ID");
    		String value= request.getParameter("value");
    		String fileName =null;
        // checks if the request actually contains upload file
        if (!ServletFileUpload.isMultipartContent(request)) {
            // if not, we stop here
            PrintWriter writer = response.getWriter();
            writer.println("Error: Form must has enctype=multipart/form-data.");
            writer.flush();
            return;
        }

        // configures upload settings
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // sets memory threshold - beyond which files are stored in disk 
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // sets temporary location to store files
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        ServletFileUpload upload = new ServletFileUpload(factory);

        // sets maximum size of upload file
        upload.setFileSizeMax(MAX_FILE_SIZE);

        // sets maximum size of request (include file + form data)
        upload.setSizeMax(MAX_REQUEST_SIZE);

        // constructs the directory path to store upload file
        // this path is relative to application's directory
        String uploadPath = getServletContext().getRealPath("")
                + File.separator + UPLOAD_DIRECTORY;

        // creates the directory if it does not exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        try {
            // parses the request's content to extract file data
            List<FileItem> formItems = upload.parseRequest(request);

            if (formItems != null && formItems.size() > 0) {
                // iterates over form's fields
                for (FileItem item : formItems) {
                    // processes only fields that are not form fields
                    if (!item.isFormField()) {
                         fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);

                        // saves the file on disk
                        item.write(storeFile);
                       
                    }
                }
            }
        } catch (Exception ex) {
        }
        if(value.equals("thongbao"))
        {
        
			String sql ="update thongbao set hinhanh ='"+fileName+"' where ID= "+id+"";
        	try {
				int kq = c.RunSQlUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
			}
        	 getServletContext().getRequestDispatcher("/quanlythongbao.jsp").forward(
                     request, response);
        }
        if(value.equals("hoatdong"))
        {
        
			String sql ="update hoatdong set hinhanh ='"+fileName+"' where mahd= "+id+"";
        	try {
				int kq = c.RunSQlUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
			}
        	 getServletContext().getRequestDispatcher("/quanlyhoatdong.jsp").forward(
                     request, response);
        }
        // redirects client to message page
       
    }
}
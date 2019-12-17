package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import model.Product;
import java.util.List;
import dao.ProductDAOImpl;
import java.text.NumberFormat;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>Trang chủ</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/menu.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/product.css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\t<div id=\"main\">\n");
      out.write("\n");
      out.write("\t\t");

			String username = null;
				Cookie[] cookies = request.getCookies();
				if(cookies !=null)
				{
				for(Cookie cookie : cookies)
				{
				    if(cookie.getName().equals("username")) 
				    	username = cookie.getValue();
				}
				}
				
			if (username != null) {
		
      out.write("\n");
      out.write("\t\t<div id=\"head-link\">\n");
      out.write("\t\t\t<div id='menungang'>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li class='last'><a href=\"index.jsp\"><span>Trang\n");
      out.write("\t\t\t\t\t\t\t\tchủ</span></a></li>\n");
      out.write("\t\t\t\t\t<li class='last'><a href=\"cart.jsp\"><span>Giỏ hàng</span></a></li>\n");
      out.write("                                        <li class='last'><a href=\"history.jsp\"><span>Lịch sử</span></a></li>\n");
      out.write("<!--\t\t\t\t\t<li class='last'><a href=\"search_page.jsp\"><span>Tìm kiếm</span></a></li>-->\n");
      out.write("\t\t\t\t\t<li class='last' style=\"float: right;\"><a href=\"LogoutServlet\"><span>Đăng\n");
      out.write("\t\t\t\t\t\t\t\txuất</span></a></li>\n");
      out.write("\t\t\t\t\t<li class='last' style=\"float: right;\"><a href=\"update_user.jsp?username=abc\"><span>");
      out.print(username);
      out.write("</span></a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t");

			} else {
		
      out.write("\n");
      out.write("\t\t<div id=\"head-link\">\n");
      out.write("\t\t\t<div id='menungang'>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li class='last'><a href=\"index.jsp\"><span>Trang\n");
      out.write("\t\t\t\t\t\t\t\tchủ</span></a></li>\n");
      out.write("<!--\t\t\t\t\t<li class='last'><a href=\"product.jsp\"><span>Sản phẩm</span></a></li>\n");
      out.write("\t\t\t\t\t<li class='last'><a href=\"search_page.jsp\"><span>Tìm kiếm</span></a></li>-->\n");
      out.write("\t\t\t\t\t<li class='last' style=\"float: right;\"><a href=\"register.jsp\"><span>Đăng\n");
      out.write("\t\t\t\t\t\t\t\tký</span></a></li>\n");
      out.write("\t\t\t\t\t<li class='last' style=\"float: right;\"><a href=\"login.jsp\"><span>Đăng\n");
      out.write("\t\t\t\t\t\t\t\tnhập</span></a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t");

			}
		
      out.write("\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("\t\t\t<div id=\"left\">");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "category.jsp", out, false);
      out.write("</div>\n");
      out.write("\t\t\t<div id=\"right\">\n");
      out.write("\t\t\t\t");

					ProductDAOImpl productDAO = new ProductDAOImpl();
						List<Product> list = new ArrayList<Product>();
						list = productDAO.getList();
						String ma_the_loai = null;
						if (request.getParameter("ma_the_loai") != null) {
					ma_the_loai = request.getParameter("ma_the_loai");
						}
						NumberFormat nf = NumberFormat.getInstance();
						nf.setMinimumFractionDigits(0);
				
      out.write("\n");
      out.write("\t\t\t\t<div id=\"site-wrapper\" style=\"float: left\">\n");
      out.write("\t\t\t\t\t<ul class=\"products homepage\">\n");
      out.write("\t\t\t\t\t\t");

							if (ma_the_loai != null) {
									for (Product p : productDAO.getListByCategory(Integer
											.parseInt(ma_the_loai))) {
						
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<li class=\"preorder\"><span class=\"tagimg \"> </span> <a\n");
      out.write("\t\t\t\t\t\t\thref=\"detail.jsp?ma_san_pham=");
      out.print(p.getMa_san_pham());
      out.write("\"> <img\n");
      out.write("\t\t\t\t\t\t\t\tsrc=\"sanpham/");
      out.print(p.getHinh_anh());
      out.write("\" width=\" 250px\" height=\"250px\" />\n");
      out.write("\t\t\t\t\t\t\t\t<h3>");
      out.print(p.getTen_san_pham());
      out.write("</h3>\n");
      out.write("\t\t\t\t\t\t\t\t<h4>\n");
      out.write("\t\t\t\t\t\t\t\t\tGiá:\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(nf.format(p.getGia_ban()));
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\tVNĐ\n");
      out.write("\t\t\t\t\t\t\t\t</h4> <span class=\"textkm\">Khuyến mãi trị giá đến <strong>500.000₫</strong>\n");
      out.write("\t\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t\t\t\t<p class=\"info\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<span>Hãng sx: ");
      out.print(p.getHang_san_xuat());
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t</span> <span>Giá: ");
      out.print(nf.format(p.getGia_ban()));
      out.write(" VNĐ\n");
      out.write("\t\t\t\t\t\t\t\t\t</span> <span>Thông tin: ");
      out.print(p.getThong_tin());
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t</a></li>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t");

							}
								} else {
									for (Product p : productDAO.getList()) {
						
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<li class=\"preorder\"><span class=\"tagimg \"></span> <a\n");
      out.write("\t\t\t\t\t\t\thref=\"detail.jsp?ma_san_pham=");
      out.print(p.getMa_san_pham());
      out.write("\"> <img\n");
      out.write("\t\t\t\t\t\t\t\tsrc=\"sanpham/");
      out.print(p.getHinh_anh());
      out.write("\" width=\"250px\" height=\"250px\" />\n");
      out.write("\t\t\t\t\t\t\t\t<h3>");
      out.print(p.getTen_san_pham());
      out.write("</h3>\n");
      out.write("\t\t\t\t\t\t\t\t<h4>\n");
      out.write("\t\t\t\t\t\t\t\t\tGiá:\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.print(nf.format(p.getGia_ban()));
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\tVNĐ\n");
      out.write("\t\t\t\t\t\t\t\t</h4> <span class=\"textkm\">Khuyến mãi trị giá đến <strong>500.000₫</strong>\n");
      out.write("\t\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t\t\t\t<p class=\"info\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<span>Hãng sx: ");
      out.print(p.getHang_san_xuat());
      out.write("</span> <span>Giá:\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");
      out.print(nf.format(p.getGia_ban()));
      out.write(" VNĐ</span> <span>Thông tin: ");
      out.print(p.getThong_tin());
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t</a></li>\n");
      out.write("\t\t\t\t\t\t");

							}
								}
						
      out.write("\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

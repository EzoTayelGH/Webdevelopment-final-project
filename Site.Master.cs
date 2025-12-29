using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MasculineLifeASPNET
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Debug: Check if Header exists
            if (Page.Header == null)
            {
                // Try to find it manually
                var head = FindControl("head1") as HtmlHead;
                if (head != null)
                {
                    AddCssLink(head);
                }
                else
                {
                    // Log error
                    System.Diagnostics.Debug.WriteLine("Header not found!");
                }
            }
            else
            {
                AddCssLink(Page.Header);
            }
        }

        private void AddCssLink(HtmlHead head)
        {
            HtmlLink cssLink = new HtmlLink();
            cssLink.Href = ResolveUrl("~/Content/styles.css");
            cssLink.Attributes["rel"] = "stylesheet";
            cssLink.Attributes["type"] = "text/css";
            head.Controls.Add(cssLink);

            // Debug output
            System.Diagnostics.Debug.WriteLine($"CSS Added: {cssLink.Href}");
        }
    }
}
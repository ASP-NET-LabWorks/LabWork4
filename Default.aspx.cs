using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabWork4
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidatorPrime_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                var n = int.Parse(args.Value);
                var boundary = (int)Math.Floor(Math.Sqrt(n));
                for (var i = 2; i <= boundary; i++)
                {
                    if (n % i == 0)
                    {
                        args.IsValid = false;
                        return;
                    }
                }
                args.IsValid = n > 1;
            }
            catch
            {
                args.IsValid = false;
            }
        }
    }
}
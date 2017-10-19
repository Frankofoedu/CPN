<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Feed Back.aspx.cs" Inherits="Feed_Back" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
	<script type="text/javascript" src="~/Scripts/jquery-1.10.2.min.js"></script>
	<script type="text/javascript">
		//$(function () {
		//    $("#chkPassport").click(function () {
		//        if ($(this).is(":checked")) {
		//            $("#dvPassport").show();
		//        } else {
		//            $("#dvPassport").hide();
		//        }
		//    });
		//});

		$(function () {
			$('input[name="rad"]').on('click', function () {
				if ($(this).val() == 'rdbIndividual') {
					$('#Individual').show();
					$('#company').hide();
					var div = WebForm_GetElementById('divIndividualbtn');
					div.style.backgroundColor = '#89C14B';
					var div = WebForm_GetElementById('divCompanybtn');
					div.style.backgroundColor = 'white';

				}
				else {
					$('#company').show();
					$('#Individual').hide();
					var div = WebForm_GetElementById('divIndividualbtn');
					div.style.backgroundColor = 'white';
					var div = WebForm_GetElementById('divCompanybtn');
					div.style.backgroundColor = '#89C14B';
				}
			});
		});
	</script>
	<div class="col-sm-6 col-sm-offset-3 bg-success feedbackdiv">
		<div style="margin:0 auto; width:60%">
			<div class="btn" id="divIndividualbtn" style="background-color: #89C14B; width:49%" >
				<input id="rdbIndividual" type="radio" name="rad" value="rdbIndividual" checked="checked" />
				Individual
			</div>
			<div class="btn" id="divCompanybtn" style="background-color: white; width:49%">
				<input id="rdbCompany" type="radio" name="rad" value="rdbCompany" />
				Company
			</div>
			<div id="company" style="display: none">
				<fieldset class="form-group">
					<label class="col-5">Company name :</label>
					<asp:TextBox ID="TxtCompanyName" runat="server" placeholder="Company" CssClass="form-control"></asp:TextBox>
				</fieldset>
				<fieldset class="form-group">
					<label class="col-5">Business name :</label>
					<asp:TextBox ID="TxtBusinessName" runat="server" CssClass="form-control"></asp:TextBox>
				</fieldset>
			</div>
			<div id="Individual">
				<fieldset class="form-group">
					<label class="col-5">First name :</label>
					<asp:TextBox ID="TxtFirstName" runat="server" CssClass="form-control" placeholder="Individual"></asp:TextBox>
				</fieldset>
				<fieldset class="form-group">
					<label class="col-5">Last Name :</label>
					<asp:TextBox ID="TxtLastName" runat="server" CssClass="form-control"></asp:TextBox>
				</fieldset>
			</div>
			<fieldset class="form-group">
				<label class="col-5">Email :</label>
				<asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox>
			</fieldset>

			<fieldset class="form-group">
				<label class="col-5">Message :</label>
				<asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
			</fieldset>
			<asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" CssClass="btn btn-success" />

			<asp:Label ID="LblStatus" runat="server" Text=""></asp:Label>

		</div>
	</div>
</asp:Content>


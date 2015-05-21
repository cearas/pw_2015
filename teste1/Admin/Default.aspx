<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-blue panel-widget ">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<asp:Image ID="Image2" ImageUrl="~/images/vet.gif" runat="server" />
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="text-muted">Insert Vets</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-orange panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
                            <asp:Image ID="Image1" ImageUrl="~/images/user.gif" runat="server" />
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="text-muted">Insert Users</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-teal panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<asp:Image ID="Image3" ImageUrl="~/images/app.gif" runat="server" />
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="text-muted">View Appointments</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-red panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<asp:Image ID="Image4" ImageUrl="~/images/pet.gif" runat="server" />
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="text-muted">Insert Pet</div>
						</div>
					</div>
				</div>
			</div>

</asp:Content>


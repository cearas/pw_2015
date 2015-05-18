<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="#  ">MOBILVET</a>

			</div>
        </div>
    </nav>
        <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
            <ul class="nav menu">
			    <li class="active"><a href="index.html"><span class="glyphicon glyphicon-dashboard"></span> Manage Clients</a></li>
                <li class="active"><a href="index.html"><span class="glyphicon glyphicon-info-sign"></span> Manage Vets</a></li>
			    <li><a href="charts.html"><span class="glyphicon glyphicon-stats"></span> Manage Medication</a></li>
			    <li><a href="tables.html"><span class="glyphicon glyphicon-list-alt"></span> Manage Pets</a></li>
			    <li><a href="forms.html"><span class="glyphicon glyphicon-pencil"></span> Manage Appointments</a></li>
		    </ul>
        </div>
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Dashboard</li>
			</ol>
		</div><!--/.row-->
	
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Dashboard</h1>
			</div>
		</div><!--/.row-->
	
		<div class="row">
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-blue panel-widget ">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="glyphicon glyphicon-shopping-cart glyphicon-l"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">120</div>
							<div class="text-muted">Insert Vets</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-orange panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="glyphicon glyphicon-comment glyphicon-l"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">52</div>
							<div class="text-muted">Insert Users</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-teal panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="glyphicon glyphicon-user glyphicon-l"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">24</div>
							<div class="text-muted">View Appointments</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-3 col-md-6 col-lg-3">
				<div class="panel panel-red panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="glyphicon glyphicon-stats glyphicon-l"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">25.2k</div>
							<div class="text-muted">Insert Pet</div>
						</div>
					</div>
				</div>
			</div>
            <div class="row">
			    <div class="col-md-8">
				    <div class="panel panel-default chat">
					    <div class="panel-heading" id="accordion"><span class="glyphicon glyphicon-comment"></span> Chat</div>
					    <div class="panel-body">
						    <ul>
							    <li class="left clearfix">
								    <span class="chat-img pull-left">
									    <img src="http://placehold.it/80/30a5ff/fff" alt="User Avatar" class="img-circle" />
								    </span>
								    <div class="chat-body clearfix">
									    <div class="header">
										    <strong class="primary-font">John Doe</strong> <small class="text-muted">32 mins ago</small>
									    </div>
									    <p>
										    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ante turpis, rutrum ut ullamcorper sed, dapibus ac nunc. Vivamus luctus convallis mauris, eu gravida tortor aliquam ultricies. 
									    </p>
								    </div>
							    </li>
							    <li class="right clearfix">
								    <span class="chat-img pull-right">
									    <img src="http://placehold.it/80/dde0e6/5f6468" alt="User Avatar" class="img-circle" />
								    </span>
								    <div class="chat-body clearfix">
									    <div class="header">
										    <strong class="pull-left primary-font">Jane Doe</strong> <small class="text-muted">6 mins ago</small>
									    </div>
									    <p>
										    Mauris dignissim porta enim, sed commodo sem blandit non. Ut scelerisque sapien eu mauris faucibus ultrices. Nulla ac odio nisl. Proin est metus, interdum scelerisque quam eu, eleifend pretium nunc. Suspendisse finibus auctor lectus, eu interdum sapien.
									    </p>
								    </div>
							    </li>
							    <li class="left clearfix">
								    <span class="chat-img pull-left">
									    <img src="http://placehold.it/80/30a5ff/fff" alt="User Avatar" class="img-circle" />
								    </span>
								    <div class="chat-body clearfix">
									    <div class="header">
										    <strong class="primary-font">John Doe</strong> <small class="text-muted">32 mins ago</small>
									    </div>
									    <p>
										    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ante turpis, rutrum ut ullamcorper sed, dapibus ac nunc. Vivamus luctus convallis mauris, eu gravida tortor aliquam ultricies. 
									    </p>
								    </div>
							    </li>
						    </ul>
					    </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
	
	<script src="../js/jquery-1.11.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
</asp:Content>


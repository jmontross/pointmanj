require 'sinatra'
require 'yaml'

get '/' do
  @awesome_instance_variables = {
  	:name => nil,
    :twitter => nil,
    :linkedin => nil,
    :github => nil,
    :email => nil,
    :working_with_rails => nil,
    :personal_image => nil,
    :personal_site => nil
  }	
  YAML.load_file('config/personal_settings.yml').each do |key,value|
    @awesome_instance_variables[key.to_sym] = value
  end

  erb :resume
end

__END__

@@ resume
  <html>
   <head>
  	
      <script src='/javascripts/bootstrap.js'></script>
      <link href='/stylesheets/bootstrap.min.css' rel='stylesheet'/>
      <link href='/stylesheets/style.css' rel='stylesheet' />
      <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
      <link href='http://fonts.googleapis.com/css?family=Ledger' rel='stylesheet' type='text/css' />
      <link href='http://fonts.googleapis.com/css?family=Asap:400,700' rel='stylesheet' type='text/css' />
      <script src='//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js' type='text/javascript'></script>
    </head>
     <body style='padding-top: 200px'>
      <div class='navbar navbar-fixed-top'>
        <div class='navbar-inner'>
          <div class='container'>
            <div class='row'>
              <div class='span12'>
                <header class='jumbotron subhead' id='overview' style='margin-left:-20px; margin-right:-20px; margin-bottom:0px; padding: 20px; padding-bottom:30px; border-radius: 0px 0px 15px 15px;'>
                  <div style='float:right'>
                    <p>
                      <a class='twitter' href='http://twitter.com/#!/<%= @awesome_instance_variables[:twitter] %>'></a>
                      <a class='linkedin' href='http://www.linkedin.com/in/<%= @awesome_instance_variables[:linkedin] %>'></a>
                      <a class='github' href='https://github.com/<%= @awesome_instance_variables[:linkedin] %>'></a>
                      <br style='clear:both' />
                      <br style='clear:both' />
                      <a href='http://workingwithrails.com/person/<%= @awesome_instance_variables[:working_with_rails] %>'>
                        <img alt='Recommend Me' src='http://workingwithrails.com/images/tools/compact-small.jpg' />
                      </a>
                    </p>
                  </div>
                  <% if @awesome_instance_variables[:personal_site] %>
                  	<a href="<%= @awesome_instance_variables[:personal_site]%>"> 
                  <% end %>
                  <img src='<%= @awesome_instance_variables[:personal_image] %>' style='float:left; padding: 10px; width: 190px; clear:bottom; margin:0px 20px 20px 0px; padding:4px; background-color: rgb(255,255,255)' />
                  <% if @awesome_instance_variables[:personal_site] %>
                  	</a>
                  <% end %>
                  <h1 style='color: rgb(255,255,255)'><%= @awesome_instance_variables[:name] %></h1>
                  <h2 style='color: rgb(220,220,220)'><%= @awesome_instance_variables[:job_title] %></h2>
                  <h3 style='color: rgb(240,240,240)'>Currently <%= @awesome_instance_variables[:hire_availability] %> for hire</h3>
                  <h4>
                    <a href='mailto:<%= @awesome_instance_variables[:email] %>'><%= @awesome_instance_variables[:email] %></a>
                  </h4>
                </header>
                <div class='clear' style='clear:both'></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class='container'>
        <section id='projects'>
          <div class='row'>
            <div class='span7'>
              <div class='page-header'>
                <h1>
                  Project
                  <small>I have worked with Ruby on Rails and related technologies since 2008. Below are some of the projects I'm proud of having been involved in during this time.</small>
                </h1>
              </div>
              <div class='project'>
                <h2>Empowered.com</h2>
                <h3>Software Engineer</h3>
                <h4>October, 2012 - Current</h4>
                <p>Empowering students to learn useful skills from a university using great technology.  I am the lead developer on our fork of the open source application <a href='http://www.github.com/empowered/canvas-lms'> canvas-lms </a> .</p>
                <ul>
                <li>
                  Utilized rails 2.3 plugin background_job to create a video transcoding solution for web recording and ipad display
                </li>
                <li>
                  Configuration management using chef and amazon web services to scale with grace.  
                </li>
                <li>
                  Realized need for better local set up process; developed vagrant and chef-solo strategy for minimizing setup time across multiple services.
                </li>
                <li>
                  Mentored multiple fellow employees in engineering and business intelligence on using ruby for scripts to work more effectively with web services.  
                </li>
                </ul>
              </div>
              <div class='project'>
              <h2>Devbootcamp.com</h2>
                <h3>Mentor</h3>
                <h4>June, 2012 - Current</h4>
                <p>Dev boot camp is an intensive 10 week course meant to take someone from very little programming skill to world class beginner.  
                The course is renowned for good content and providing students with the necessary skills to land their first engineering job. </p>
                <ul>
                <li>
                  Mentoring two proteges learning to become ruby on rails developers.
                </li>
                <li>
                  Provided assistance in understanding datatypes, duck-typing, and other core features of Ruby.
                </li>
                <li>
   				  Pair programmed, showed how to write unit tests, and taught basic unix 101 with apache and sys5init.  
                </li>
                </ul>
              </div>
              <div class='project'>
                <h2>Demosphere.com</h2>
                <h3>Web developer providing premium sports league and organization software as a service.</h3>
                <h4>July 2009 - September 2011</h4>
                <p>
               	Made awesome applications empowering coaches, players, and parents to easily manage the soccer and sports lifestyle.
                </p>
                <ul>
                  <li>Developed multiple sinatra applicatons.</li>                
                  <li>Standalone CLI ruby applications for running our unique infrastructure</li>             
                  <li>Employed a variety of very helpful Ruby Gems as well as wrote own when there were none to fit the need</li>
                  <li>Learned legacy templating language and used along with firebird for supporting the past</li>
                </ul>
                <p>
                  <span class='label'>#rubyonrails</span>
                  <span class='label'>#javascript</span>
                  <span class='label'>#jquery</span>
                  <span class='label'>#coffeescript</span>
                  <span class='label'>#datatables</span>
                  <span class='label'>#sqlserver</span>
                  <span class='label'>#extjs</span>
                  <span class='label'>#agile</span>
                </p>
              </div>
              <div class='project'>
                <h2>Financial Literacy Foundation</h2>
                <h3>Teaching financial literacy courses in Washington, DC and developing the web site.</h3>
                <h4> 2007 -  2009</h4>
                <p> Rails 1.2 app supporting student logins and assessments.  </p>
                 <ul>
                   <li> Taught at SEED School DC for one year.
                 </ul>
                <p>
                  <span class='label'>#rubyonrails</span>
                  <span class='label'>#javascript</span>
                  <span class='label'>#prototype</span>        
                  <span class='label'>#agile</span>
                </p>
              </div>                     
            </div>
            <div class='span5'>
            <div class='page-header'>
                <h1>
                  Conferences
                  <small>One reason I love working with Ruby/Rails is the diverse and helpful developer community</small>
                </h1>
              </div>
              <p>I've attended the following conferences:</p>
              <ul>
                <li>RubyConf 2009</li>
                <li>RubyConf 2010</li>
                <li>Dreamforce 2010</li>
                <li>JSConf 2009</li>
                <li>JSConf 2010</li>
                <li>CanvasCon 2011</li>
                <li>
                  RailsConf 2008 (presented lightening talk on restful_workflow)
                </li>
                <li>RailsConf 2007</li>
              </ul>
              <div class='page-header'>
                <h1>
                  Education
                  <small>The most useful thing I learned in school was SQL and business process engineering... the coding came after  </small>
                </h1>
              </div>
              <div class='project'>
                <h3>BBA, Finance and Information Systems Concentrations</h3>
                <h4>2004-2008 George Washington University</h4>              
              </div>
              <div class='project'>
                <h3>MS, Information Systems Design</h3>
                <h4>2008-2009 George Washington University</h4>              
              </div>  
              <div class='page-header'>
                <h1>
                  Side projects
                  <small>Keep learning on the side</small>
                </h1>
              </div>
              <div class='project'>
                <h3><a href= "http://wwww.crossvet.org"> Crossvet.org </a> - veteran designed traning</h3>
                <h4>Wordpress site for friend's fundraising not for profit.  Built in one day on August 4th, 2012. </h4>              
	          </div>    
	          <div class='project'>
                <h3>iOS app - ACIM 365. </h3>
                <h4>Daily lessons from A Course in Miracles</h4>              
                <p> 
                  Yes, I'm attempting to profiteer from the spiritual self help business.  It's a good opportunity for my fist app and it's a work in progress. 
                </p>                 
	          </div>                        
              <div class='project'>
                <h3>Sintatra and mongo app for mapping social servicess </h3>
                <p>
                Worked with friend Colin Van Dyke to build <a href="thebridgeprojectdc.org"> The Bridge Project</a> in late 2010.  
                </p>                     				                         
	          </div>              
          </div>
        </section>
      </div>
    </body>
    </html>


<% ui.decorateWith("appui", "standardEmrPage") %>

Basic example module for OpenMRS!

<% if (context.authenticated) { %>
    And a special hello to you, $context.authenticatedUser.personName.fullName.
    Your roles are:
    <% context.authenticatedUser.roles.findAll { !it.retired }.each { %>
        $it.role ($it.description)
    <% } %>
<% } else { %>
    You are not logged in.
<% } %>

${ ui.includeFragment("example1", "users") }

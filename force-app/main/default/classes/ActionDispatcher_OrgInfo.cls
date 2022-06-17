public class ActionDispatcher_OrgInfo extends Slack.ActionDispatcher {
  public override Slack.ActionHandler invoke(Map<String, Object> parameters, Slack.RequestContext context) {
    // The Slack action handler is instantiated and returned
    return Slack.ActionHandler.pushModal(new Handler(parameters, context));
  }

  public class Handler implements Slack.ModalHandler {
    Map<String, Object> parameters;
    Slack.RequestContext context;

    public Handler(Map<String, Object> parameters, Slack.RequestContext context) {
      this.parameters = parameters;
      this.context = context;
    }

    // The class creates a modal view that is returned to the user
    public Slack.ModalView call() {
      
    }
  }
}

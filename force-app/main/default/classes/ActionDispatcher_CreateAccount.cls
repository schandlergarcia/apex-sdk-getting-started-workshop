public class ActionDispatcher_CreateAccount extends Slack.ActionDispatcher {
  public override Slack.ActionHandler invoke(Map<String, Object> parameters, Slack.RequestContext context) {
    // The slack action handler should immediately be returned.
    return Slack.ActionHandler.updateModal(new Handler(parameters, context));
  }

  public class Handler implements Slack.ModalHandler {
    Map<String, Object> parameters;
    Slack.RequestContext context;

    public Handler(Map<String, Object> parameters, Slack.RequestContext context) {
      this.parameters = parameters;
      this.context = context;
    }

    public Slack.ModalView call() {
      return createNewAccount();
    }

    private Slack.ModalView createNewAccount() {
      try {

        

        // Define the response parameters
        String title = 'Account Created';
        String body = 'An account for '+'Account Name Placeholder'+' has been created! :white_check_mark:';
        return MessageModalHelper.getMessageModalView(title, new List<String>{ body });
      } catch (Exception e) {
        return getMessageModal(e.getMessage());
      }
    }

    private Slack.ModalView getMessageModal(String errorMessage) {
      String title = 'Error Record Creation';
      String body = 'There was a problem creating your record.' + '\n' + errorMessage;
      return MessageModalHelper.getMessageModalView(title, new List<String>{ body });
    }
  }
}

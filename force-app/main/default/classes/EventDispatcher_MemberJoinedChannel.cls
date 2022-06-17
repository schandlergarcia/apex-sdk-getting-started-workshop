public without sharing class EventDispatcher_MemberJoinedChannel extends Slack.EventDispatcher {
  public override Slack.ActionHandler invoke(Slack.EventParameters parameters, Slack.RequestContext context) {
    return Slack.ActionHandler.ack(new Handler(parameters, context));
  }

  public class Handler implements Slack.RunnableHandler {
    Slack.EventParameters parameters;
    Slack.RequestContext context;

    public Handler(Slack.EventParameters parameters, Slack.RequestContext context) {
      this.parameters = parameters;
      this.context = context;
    }

    public void run() {
    }
  }
}

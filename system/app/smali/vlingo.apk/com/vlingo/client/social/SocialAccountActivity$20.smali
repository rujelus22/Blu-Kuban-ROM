.class Lcom/vlingo/client/social/SocialAccountActivity$20;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onVerifyComplete(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iput p2, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0xce

    .line 489
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 490
    invoke-static {}, Lcom/vlingo/client/social/api/TwitterAPI;->resetSettings()V

    .line 511
    :goto_d
    return-void

    .line 493
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 495
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->val$result:I

    if-nez v0, :cond_48

    .line 496
    const-string v0, "twitter_prompted_follow_vlingo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 497
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 498
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    new-instance v1, Lcom/vlingo/client/social/api/TwitterAPI;

    iget-object v2, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {v1, v2}, Lcom/vlingo/client/social/api/TwitterAPI;-><init>(Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;)V

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;
    invoke-static {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->access$202(Lcom/vlingo/client/social/SocialAccountActivity;Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI;

    .line 499
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #getter for: Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$200(Lcom/vlingo/client/social/SocialAccountActivity;)Lcom/vlingo/client/social/api/TwitterAPI;

    move-result-object v0

    const-string v1, "vlingo"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/api/TwitterAPI;->checkFriendshipWithUser(Ljava/lang/String;)V

    goto :goto_d

    .line 502
    :cond_3d
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 503
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->fetchThumbnail()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$300(Lcom/vlingo/client/social/SocialAccountActivity;)V

    goto :goto_d

    .line 507
    :cond_48
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iget-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const v2, 0x7f090405

    invoke-virtual {v1, v2}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->access$102(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$20;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_d
.end method

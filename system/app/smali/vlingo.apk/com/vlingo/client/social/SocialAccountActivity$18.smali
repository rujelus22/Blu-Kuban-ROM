.class Lcom/vlingo/client/social/SocialAccountActivity$18;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onLoginResult(ZLjava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$18;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iput-boolean p2, p0, Lcom/vlingo/client/social/SocialAccountActivity$18;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$18;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 431
    invoke-static {}, Lcom/vlingo/client/social/api/FoursquareAPI;->resetSettings()V

    .line 444
    :goto_b
    return-void

    .line 434
    :cond_c
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$18;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 436
    iget-boolean v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$18;->val$success:Z

    if-eqz v0, :cond_1b

    .line 437
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$18;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->fetchThumbnail()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$300(Lcom/vlingo/client/social/SocialAccountActivity;)V

    goto :goto_b

    .line 440
    :cond_1b
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$18;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iget-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity$18;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const v2, 0x7f0903e9

    invoke-virtual {v1, v2}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->access$102(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$18;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_b
.end method

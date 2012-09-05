.class Lcom/vlingo/client/social/SocialAccountActivity$24;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onFacebookAPILogin(Lcom/vlingo/client/social/api/FacebookAPI;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;

.field final synthetic val$api:Lcom/vlingo/client/social/api/FacebookAPI;

.field final synthetic val$responseType:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;ILcom/vlingo/client/social/api/FacebookAPI;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iput p2, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->val$responseType:I

    iput-object p3, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->val$api:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 641
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 642
    invoke-static {}, Lcom/vlingo/client/social/api/FacebookAPI;->resetSettings()V

    .line 660
    :cond_b
    :goto_b
    return-void

    .line 645
    :cond_c
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->val$responseType:I

    const/16 v1, 0x385

    if-ne v0, v1, :cond_24

    .line 646
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 647
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 648
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->val$api:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/FacebookAPI;->fetchUserData()V

    goto :goto_b

    .line 650
    :cond_24
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->val$responseType:I

    const/16 v1, 0x386

    if-ne v0, v1, :cond_48

    .line 651
    invoke-static {}, Lcom/vlingo/client/social/api/FacebookAPI;->resetSettings()V

    .line 652
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 653
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iget-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const v2, 0x7f0903e4

    invoke-virtual {v1, v2}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->access$102(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_b

    .line 657
    :cond_48
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->val$responseType:I

    const/16 v1, 0x387

    if-ne v0, v1, :cond_b

    .line 658
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$24;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->finish()V

    goto :goto_b
.end method

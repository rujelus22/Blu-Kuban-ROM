.class Lcom/vlingo/client/social/SocialAccountActivity$25;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onFacebookAPIMethod(Lcom/vlingo/client/social/api/FacebookAPI;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$responseType:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iput-object p2, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->val$method:Ljava/lang/String;

    iput p3, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->val$responseType:I

    iput-object p4, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 667
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 668
    invoke-static {}, Lcom/vlingo/client/social/api/FacebookAPI;->resetSettings()V

    .line 688
    :cond_b
    :goto_b
    return-void

    .line 671
    :cond_c
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->val$method:Ljava/lang/String;

    const-string v1, "me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 672
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->val$responseType:I

    const/16 v1, 0x385

    if-ne v0, v1, :cond_48

    .line 673
    const-string v0, "facebook_account_name"

    iget-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->val$params:Landroid/os/Bundle;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v0, "facebook_picture_url"

    iget-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->val$params:Landroid/os/Bundle;

    const-string v2, "picture"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 676
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 678
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->fetchThumbnail()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$300(Lcom/vlingo/client/social/SocialAccountActivity;)V

    goto :goto_b

    .line 680
    :cond_48
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->val$responseType:I

    const/16 v1, 0x386

    if-ne v0, v1, :cond_b

    .line 681
    invoke-static {}, Lcom/vlingo/client/social/api/FacebookAPI;->resetSettings()V

    .line 682
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 683
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iget-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const v2, 0x7f0903e3

    invoke-virtual {v1, v2}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->access$102(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$25;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_b
.end method

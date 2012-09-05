.class Lcom/vlingo/client/social/SocialAccountActivity$21;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onLoginComplete(IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;

.field final synthetic val$errMessage:Ljava/lang/String;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iput p2, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->val$result:I

    iput-object p3, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->val$errMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 519
    invoke-static {}, Lcom/vlingo/client/social/api/TwitterAPI;->resetSettings()V

    .line 537
    :goto_b
    return-void

    .line 522
    :cond_c
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->val$result:I

    if-nez v0, :cond_21

    .line 523
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 524
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #getter for: Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$200(Lcom/vlingo/client/social/SocialAccountActivity;)Lcom/vlingo/client/social/api/TwitterAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->verifyCredentials()V

    goto :goto_b

    .line 526
    :cond_21
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->val$result:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2c

    .line 527
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->finish()V

    goto :goto_b

    .line 530
    :cond_2c
    invoke-static {}, Lcom/vlingo/client/social/api/TwitterAPI;->resetSettings()V

    .line 531
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #getter for: Lcom/vlingo/client/social/SocialAccountActivity;->twitterAPI:Lcom/vlingo/client/social/api/TwitterAPI;
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$200(Lcom/vlingo/client/social/SocialAccountActivity;)Lcom/vlingo/client/social/api/TwitterAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->dismissDialogs()V

    .line 532
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iget-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const v2, 0x7f0903eb

    invoke-virtual {v1, v2}, Lcom/vlingo/client/social/SocialAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->access$102(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->val$errMessage:Ljava/lang/String;

    if-eqz v0, :cond_51

    .line 534
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iget-object v1, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->val$errMessage:Ljava/lang/String;

    #setter for: Lcom/vlingo/client/social/SocialAccountActivity;->errorMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->access$102(Lcom/vlingo/client/social/SocialAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    :cond_51
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$21;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    goto :goto_b
.end method

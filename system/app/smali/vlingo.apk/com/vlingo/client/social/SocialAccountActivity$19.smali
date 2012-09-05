.class Lcom/vlingo/client/social/SocialAccountActivity$19;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onFollowVlingoComplete(ILjava/lang/String;)V
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
    .line 460
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$19;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    iput p2, p0, Lcom/vlingo/client/social/SocialAccountActivity$19;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/16 v1, 0xce

    .line 462
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$19;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 463
    invoke-static {}, Lcom/vlingo/client/social/api/TwitterAPI;->resetSettings()V

    .line 479
    :goto_d
    return-void

    .line 466
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$19;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 468
    iget v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$19;->val$result:I

    if-nez v0, :cond_22

    .line 469
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$19;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 470
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$19;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->fetchThumbnail()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$300(Lcom/vlingo/client/social/SocialAccountActivity;)V

    goto :goto_d

    .line 473
    :cond_22
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$19;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/SocialAccountActivity;->showDialog(I)V

    .line 474
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$19;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->fetchThumbnail()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$300(Lcom/vlingo/client/social/SocialAccountActivity;)V

    goto :goto_d
.end method

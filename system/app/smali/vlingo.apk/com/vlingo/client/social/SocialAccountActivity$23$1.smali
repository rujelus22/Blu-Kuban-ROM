.class Lcom/vlingo/client/social/SocialAccountActivity$23$1;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/social/SocialAccountActivity$23;


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity$23;)V
    .registers 2
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$23$1;->this$1:Lcom/vlingo/client/social/SocialAccountActivity$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$23$1;->this$1:Lcom/vlingo/client/social/SocialAccountActivity$23;

    iget-object v0, v0, Lcom/vlingo/client/social/SocialAccountActivity$23;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 627
    invoke-static {}, Lcom/vlingo/client/social/api/FacebookAPI;->resetSettings()V

    .line 632
    :goto_d
    return-void

    .line 630
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$23$1;->this$1:Lcom/vlingo/client/social/SocialAccountActivity$23;

    iget-object v0, v0, Lcom/vlingo/client/social/SocialAccountActivity$23;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    #calls: Lcom/vlingo/client/social/SocialAccountActivity;->removeCurrentDialog()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->access$000(Lcom/vlingo/client/social/SocialAccountActivity;)V

    .line 631
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$23$1;->this$1:Lcom/vlingo/client/social/SocialAccountActivity$23;

    iget-object v0, v0, Lcom/vlingo/client/social/SocialAccountActivity$23;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->finish()V

    goto :goto_d
.end method

.class Lcom/vlingo/client/social/SocialAccountActivity$5;
.super Ljava/lang/Object;
.source "SocialAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialAccountActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialAccountActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialAccountActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/vlingo/client/social/SocialAccountActivity$5;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$5;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFoursquare()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 293
    invoke-static {}, Lcom/vlingo/client/social/api/FoursquareAPI;->resetSettings()V

    .line 299
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$5;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->finish()V

    .line 300
    return-void

    .line 294
    :cond_11
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$5;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isTwitter()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 295
    invoke-static {}, Lcom/vlingo/client/social/api/TwitterAPI;->resetSettings()V

    goto :goto_b

    .line 296
    :cond_1d
    iget-object v0, p0, Lcom/vlingo/client/social/SocialAccountActivity$5;->this$0:Lcom/vlingo/client/social/SocialAccountActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/social/SocialAccountActivity;->isFacebook()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 297
    invoke-static {}, Lcom/vlingo/client/social/api/FacebookAPI;->resetSettings()V

    goto :goto_b
.end method

.class public Lcom/sec/android/socialhub/messagelist/MessageNoAccountView;
.super Lcom/sec/android/socialhub/view/NoAccountView;
.source "MessageNoAccountView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 13
    invoke-static {p1}, Lcom/sec/android/socialhub/SocialHubSettings;->get(Landroid/content/Context;)Lcom/sec/android/socialhub/SocialHubSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/SocialHubSettings;->getSetting(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const v0, 0x7f08006f

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/sec/android/socialhub/view/NoAccountView;-><init>(Landroid/content/Context;I)V

    .line 15
    return-void

    .line 13
    :cond_13
    const v0, 0x7f080070

    goto :goto_f
.end method

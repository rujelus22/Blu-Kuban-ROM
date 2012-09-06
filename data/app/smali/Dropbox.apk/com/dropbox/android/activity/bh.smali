.class final Lcom/dropbox/android/activity/bh;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/bg;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/bg;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/dropbox/android/activity/bh;->a:Lcom/dropbox/android/activity/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 209
    if-nez p2, :cond_25

    sget-object v0, Lcom/dropbox/android/util/ao;->a:Lcom/dropbox/android/util/ao;

    .line 210
    :goto_4
    iget-object v1, p0, Lcom/dropbox/android/activity/bh;->a:Lcom/dropbox/android/activity/bg;

    iget-object v1, v1, Lcom/dropbox/android/activity/bg;->a:Lcom/dropbox/android/activity/PrefsActivity;

    iget-object v2, p0, Lcom/dropbox/android/activity/bh;->a:Lcom/dropbox/android/activity/bg;

    iget-object v2, v2, Lcom/dropbox/android/activity/bg;->a:Lcom/dropbox/android/activity/PrefsActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/dropbox/android/util/ao;->a(Landroid/app/Activity;ZZ)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dropbox/android/activity/PrefsActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    sget-object v1, Lcom/dropbox/android/util/ao;->a:Lcom/dropbox/android/util/ao;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/ao;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 214
    invoke-static {}, Lcom/dropbox/android/util/h;->V()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 218
    :goto_24
    return-void

    .line 209
    :cond_25
    sget-object v0, Lcom/dropbox/android/util/ao;->b:Lcom/dropbox/android/util/ao;

    goto :goto_4

    .line 216
    :cond_28
    invoke-static {}, Lcom/dropbox/android/util/h;->W()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    goto :goto_24
.end method

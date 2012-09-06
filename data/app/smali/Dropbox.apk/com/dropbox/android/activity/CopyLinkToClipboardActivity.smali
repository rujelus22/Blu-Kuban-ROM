.class public Lcom/dropbox/android/activity/CopyLinkToClipboardActivity;
.super Lcom/dropbox/android/activity/base/BaseMinActivity;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseMinActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseMinActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CopyLinkToClipboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 21
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/CopyLinkToClipboardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 24
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 26
    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/CopyLinkToClipboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 29
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CopyLinkToClipboardActivity;->finish()V

    .line 30
    return-void
.end method

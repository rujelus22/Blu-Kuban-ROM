.class final Lcom/dropbox/android/widget/quickactions/f;
.super Ldbxyzptlk/e/r;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/quickactions/e;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/quickactions/e;Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/f;->a:Lcom/dropbox/android/widget/quickactions/e;

    invoke-direct {p0, p2, p3, p4}, Ldbxyzptlk/e/r;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v1, p2, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v1

    .line 55
    invoke-static {p1, v1}, Lcom/dropbox/android/provider/t;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 58
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2d

    .line 59
    check-cast p1, Landroid/app/Activity;

    move-object v0, p1

    .line 60
    :goto_15
    instance-of v2, v0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;

    if-nez v2, :cond_24

    invoke-virtual {v0}, Landroid/app/Activity;->isChild()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_15

    .line 63
    :cond_24
    instance-of v2, v0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;

    if-eqz v2, :cond_2d

    .line 64
    check-cast v0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->b(Landroid/net/Uri;)V

    .line 67
    :cond_2d
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/f;->a:Lcom/dropbox/android/widget/quickactions/e;

    iget-object v0, v0, Lcom/dropbox/android/widget/quickactions/e;->c:Lcom/dropbox/android/widget/quickactions/ButtonRename;

    invoke-static {v0}, Lcom/dropbox/android/widget/quickactions/ButtonRename;->a(Lcom/dropbox/android/widget/quickactions/ButtonRename;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    iget-boolean v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_1c

    const v0, 0x7f09009c

    .line 48
    :goto_f
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    return-void

    .line 47
    :cond_1c
    const v0, 0x7f090099

    goto :goto_f
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p2, Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/widget/quickactions/f;->a(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    return-void
.end method

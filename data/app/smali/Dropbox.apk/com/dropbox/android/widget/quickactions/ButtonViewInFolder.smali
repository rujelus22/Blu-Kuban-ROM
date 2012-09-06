.class public Lcom/dropbox/android/widget/quickactions/ButtonViewInFolder;
.super Lcom/dropbox/android/widget/quickactions/a;
.source "panda.py"


# instance fields
.field private f:Lcom/dropbox/android/filemanager/LocalEntry;

.field private g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dropbox/android/widget/quickactions/a;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/ButtonViewInFolder;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 18
    iput-object p2, p0, Lcom/dropbox/android/widget/quickactions/ButtonViewInFolder;->g:Landroid/app/Activity;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 23
    const v0, 0x7f030030

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dropbox.BROWSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    new-instance v1, Lcom/dropbox/android/util/Z;

    iget-object v2, p0, Lcom/dropbox/android/widget/quickactions/ButtonViewInFolder;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/LocalEntry;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    const-string v1, "EXTRA_FILE_SCROLL_TO"

    new-instance v2, Lcom/dropbox/android/util/Z;

    iget-object v3, p0, Lcom/dropbox/android/widget/quickactions/ButtonViewInFolder;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    const-string v1, "EXTRA_DONT_CLEAR_FLAGS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/ButtonViewInFolder;->g:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 29
    const v0, 0x7f090160

    return v0
.end method

.class final Lcom/dropbox/android/widget/quickactions/d;
.super Ldbxyzptlk/e/b;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/quickactions/c;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/quickactions/c;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/d;->a:Lcom/dropbox/android/widget/quickactions/c;

    invoke-direct {p0, p2}, Ldbxyzptlk/e/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 48
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/d;->a:Lcom/dropbox/android/widget/quickactions/c;

    iget-object v0, v0, Lcom/dropbox/android/widget/quickactions/c;->b:Lcom/dropbox/android/widget/quickactions/ButtonDelete;

    invoke-static {v0}, Lcom/dropbox/android/widget/quickactions/ButtonDelete;->a(Lcom/dropbox/android/widget/quickactions/ButtonDelete;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    iget-boolean v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_2f

    const v0, 0x7f09008f

    .line 49
    :goto_10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/android/widget/quickactions/d;->a:Lcom/dropbox/android/widget/quickactions/c;

    iget-object v3, v3, Lcom/dropbox/android/widget/quickactions/c;->b:Lcom/dropbox/android/widget/quickactions/ButtonDelete;

    invoke-static {v3}, Lcom/dropbox/android/widget/quickactions/ButtonDelete;->a(Lcom/dropbox/android/widget/quickactions/ButtonDelete;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {p1, v0, v4}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    return-void

    .line 48
    :cond_2f
    const v0, 0x7f09008b

    goto :goto_10
.end method

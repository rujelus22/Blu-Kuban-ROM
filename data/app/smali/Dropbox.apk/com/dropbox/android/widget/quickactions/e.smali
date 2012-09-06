.class final Lcom/dropbox/android/widget/quickactions/e;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/dropbox/android/widget/quickactions/ButtonRename;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/quickactions/ButtonRename;Landroid/widget/EditText;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/e;->c:Lcom/dropbox/android/widget/quickactions/ButtonRename;

    iput-object p2, p0, Lcom/dropbox/android/widget/quickactions/e;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/dropbox/android/widget/quickactions/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/e;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_20

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The dialog should not allow empty names."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_20
    new-instance v1, Lcom/dropbox/android/widget/quickactions/f;

    iget-object v2, p0, Lcom/dropbox/android/widget/quickactions/e;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/dropbox/android/widget/quickactions/e;->c:Lcom/dropbox/android/widget/quickactions/ButtonRename;

    invoke-static {v3}, Lcom/dropbox/android/widget/quickactions/ButtonRename;->a(Lcom/dropbox/android/widget/quickactions/ButtonRename;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/dropbox/android/widget/quickactions/f;-><init>(Lcom/dropbox/android/widget/quickactions/e;Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ldbxyzptlk/e/r;->e()V

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Ldbxyzptlk/e/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/e;->c:Lcom/dropbox/android/widget/quickactions/ButtonRename;

    invoke-static {v0}, Lcom/dropbox/android/widget/quickactions/ButtonRename;->b(Lcom/dropbox/android/widget/quickactions/ButtonRename;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 73
    return-void
.end method

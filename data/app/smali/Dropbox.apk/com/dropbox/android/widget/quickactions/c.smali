.class final Lcom/dropbox/android/widget/quickactions/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dropbox/android/widget/quickactions/ButtonDelete;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/quickactions/ButtonDelete;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/c;->b:Lcom/dropbox/android/widget/quickactions/ButtonDelete;

    iput-object p2, p0, Lcom/dropbox/android/widget/quickactions/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/dropbox/android/widget/quickactions/d;

    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/c;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/widget/quickactions/d;-><init>(Lcom/dropbox/android/widget/quickactions/c;Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0}, Ldbxyzptlk/e/b;->e()V

    .line 54
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dropbox/android/filemanager/LocalEntry;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/android/widget/quickactions/c;->b:Lcom/dropbox/android/widget/quickactions/ButtonDelete;

    invoke-static {v3}, Lcom/dropbox/android/widget/quickactions/ButtonDelete;->a(Lcom/dropbox/android/widget/quickactions/ButtonDelete;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method

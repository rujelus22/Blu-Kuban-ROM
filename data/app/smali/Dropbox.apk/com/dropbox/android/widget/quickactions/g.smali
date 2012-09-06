.class final Lcom/dropbox/android/widget/quickactions/g;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/quickactions/ButtonRename;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/quickactions/ButtonRename;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/g;->a:Lcom/dropbox/android/widget/quickactions/ButtonRename;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/g;->a:Lcom/dropbox/android/widget/quickactions/ButtonRename;

    invoke-static {v0}, Lcom/dropbox/android/widget/quickactions/ButtonRename;->b(Lcom/dropbox/android/widget/quickactions/ButtonRename;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 82
    return-void
.end method

.class final Lcom/dropbox/android/widget/quickactions/i;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/quickactions/ButtonRename;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/quickactions/ButtonRename;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/i;->a:Lcom/dropbox/android/widget/quickactions/ButtonRename;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 160
    if-eqz p2, :cond_10

    .line 161
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/i;->a:Lcom/dropbox/android/widget/quickactions/ButtonRename;

    invoke-static {v0}, Lcom/dropbox/android/widget/quickactions/ButtonRename;->b(Lcom/dropbox/android/widget/quickactions/ButtonRename;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 163
    :cond_10
    return-void
.end method

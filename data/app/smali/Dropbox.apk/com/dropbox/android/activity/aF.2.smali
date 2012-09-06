.class final Lcom/dropbox/android/activity/aF;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/LoginFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LoginFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dropbox/android/activity/aF;->a:Lcom/dropbox/android/activity/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dropbox/android/activity/aF;->a:Lcom/dropbox/android/activity/LoginFragment;

    iget-object v0, v0, Lcom/dropbox/android/activity/LoginFragment;->b:Lcom/dropbox/android/activity/aG;

    iget-object v1, p0, Lcom/dropbox/android/activity/aF;->a:Lcom/dropbox/android/activity/LoginFragment;

    invoke-static {v1}, Lcom/dropbox/android/activity/LoginFragment;->b(Lcom/dropbox/android/activity/LoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/aG;->b(Ljava/lang/String;)V

    .line 150
    return-void
.end method

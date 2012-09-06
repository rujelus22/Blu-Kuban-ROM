.class final Lcom/dropbox/android/activity/R;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/ForgotPasswordFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/ForgotPasswordFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/dropbox/android/activity/R;->a:Lcom/dropbox/android/activity/ForgotPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/android/activity/R;->a:Lcom/dropbox/android/activity/ForgotPasswordFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/ForgotPasswordFragment;->a(Lcom/dropbox/android/activity/ForgotPasswordFragment;)Lcom/dropbox/android/activity/S;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 71
    iget-object v0, p0, Lcom/dropbox/android/activity/R;->a:Lcom/dropbox/android/activity/ForgotPasswordFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/ForgotPasswordFragment;->a(Lcom/dropbox/android/activity/ForgotPasswordFragment;)Lcom/dropbox/android/activity/S;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/R;->a:Lcom/dropbox/android/activity/ForgotPasswordFragment;

    invoke-static {v1}, Lcom/dropbox/android/activity/ForgotPasswordFragment;->b(Lcom/dropbox/android/activity/ForgotPasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/S;->a(Ljava/lang/String;)V

    .line 73
    :cond_23
    return-void
.end method

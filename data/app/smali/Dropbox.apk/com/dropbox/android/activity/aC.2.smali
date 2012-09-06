.class final Lcom/dropbox/android/activity/aC;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/LoginFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LoginFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dropbox/android/activity/aC;->a:Lcom/dropbox/android/activity/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/android/activity/aC;->a:Lcom/dropbox/android/activity/LoginFragment;

    iget-object v0, v0, Lcom/dropbox/android/activity/LoginFragment;->b:Lcom/dropbox/android/activity/aG;

    if-eqz v0, :cond_e

    .line 114
    const/4 v0, 0x6

    if-ne p2, v0, :cond_e

    .line 115
    iget-object v0, p0, Lcom/dropbox/android/activity/aC;->a:Lcom/dropbox/android/activity/LoginFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/LoginFragment;->a(Lcom/dropbox/android/activity/LoginFragment;)V

    .line 118
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

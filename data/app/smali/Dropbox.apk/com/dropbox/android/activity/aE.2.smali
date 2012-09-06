.class final Lcom/dropbox/android/activity/aE;
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
    .line 134
    iput-object p1, p0, Lcom/dropbox/android/activity/aE;->a:Lcom/dropbox/android/activity/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 137
    invoke-static {}, Lcom/dropbox/android/util/W;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    :goto_6
    return-void

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/dropbox/android/activity/aE;->a:Lcom/dropbox/android/activity/LoginFragment;

    iget-object v0, v0, Lcom/dropbox/android/activity/LoginFragment;->b:Lcom/dropbox/android/activity/aG;

    invoke-interface {v0}, Lcom/dropbox/android/activity/aG;->b()V

    goto :goto_6
.end method

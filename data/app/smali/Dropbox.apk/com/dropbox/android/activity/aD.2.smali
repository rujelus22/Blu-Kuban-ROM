.class final Lcom/dropbox/android/activity/aD;
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
    .line 123
    iput-object p1, p0, Lcom/dropbox/android/activity/aD;->a:Lcom/dropbox/android/activity/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/android/activity/aD;->a:Lcom/dropbox/android/activity/LoginFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/LoginFragment;->a(Lcom/dropbox/android/activity/LoginFragment;)V

    .line 127
    return-void
.end method

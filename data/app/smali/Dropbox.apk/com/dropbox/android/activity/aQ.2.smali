.class final Lcom/dropbox/android/activity/aQ;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/NewAccountFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/NewAccountFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/dropbox/android/activity/aQ;->a:Lcom/dropbox/android/activity/NewAccountFragment;

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
    .line 71
    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    .line 72
    iget-object v0, p0, Lcom/dropbox/android/activity/aQ;->a:Lcom/dropbox/android/activity/NewAccountFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/NewAccountFragment;->a()V

    .line 74
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

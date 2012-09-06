.class final Lcom/dropbox/android/util/ah;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/util/FragmentListActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/util/FragmentListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/dropbox/android/util/ah;->a:Lcom/dropbox/android/util/FragmentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/android/util/ah;->a:Lcom/dropbox/android/util/FragmentListActivity;

    invoke-static {v0}, Lcom/dropbox/android/util/FragmentListActivity;->a(Lcom/dropbox/android/util/FragmentListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/util/ah;->a:Lcom/dropbox/android/util/FragmentListActivity;

    invoke-static {v1}, Lcom/dropbox/android/util/FragmentListActivity;->a(Lcom/dropbox/android/util/FragmentListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 25
    return-void
.end method

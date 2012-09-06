.class final Lcom/dropbox/android/activity/lock/s;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/lock/SweetListFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/lock/SweetListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dropbox/android/activity/lock/s;->a:Lcom/dropbox/android/activity/lock/SweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/s;->a:Lcom/dropbox/android/activity/lock/SweetListFragment;

    move-object v1, p1

    check-cast v1, Lcom/dropbox/android/widget/SweetListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/activity/lock/SweetListFragment;->a(Lcom/dropbox/android/widget/SweetListView;Landroid/view/View;IJ)Z

    move-result v0

    .line 62
    if-nez v0, :cond_30

    .line 63
    iget-object v1, p0, Lcom/dropbox/android/activity/lock/s;->a:Lcom/dropbox/android/activity/lock/SweetListFragment;

    iget-object v1, v1, Lcom/dropbox/android/activity/lock/SweetListFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/SweetListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 64
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 65
    iget-object v1, p0, Lcom/dropbox/android/activity/lock/s;->a:Lcom/dropbox/android/activity/lock/SweetListFragment;

    iget-object v1, v1, Lcom/dropbox/android/activity/lock/SweetListFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/widget/SweetListView;->setContextMenuInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    .line 66
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/s;->a:Lcom/dropbox/android/activity/lock/SweetListFragment;

    iget-object v0, v0, Lcom/dropbox/android/activity/lock/SweetListFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/SweetListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 69
    :cond_30
    return v0
.end method

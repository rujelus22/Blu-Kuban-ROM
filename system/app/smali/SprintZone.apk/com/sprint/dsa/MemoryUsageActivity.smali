.class public Lcom/sprint/dsa/MemoryUsageActivity;
.super Landroid/app/ListActivity;
.source "MemoryUsageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

.field private mSortBySize:Z

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mSortBySize:Z

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/MemoryUsageActivity;)Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;
    .registers 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/MemoryUsageActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/MemoryUsageActivity;->requestWindowFeature(I)Z

    .line 26
    new-instance v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    .line 27
    iget-object v0, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/MemoryUsageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    const v0, 0x7f020014

    invoke-virtual {p0, v1, v0}, Lcom/sprint/dsa/MemoryUsageActivity;->setFeatureDrawableResource(II)V

    .line 31
    invoke-virtual {p0}, Lcom/sprint/dsa/MemoryUsageActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 32
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/MemoryUsageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mToast:Landroid/widget/Toast;

    .line 33
    iget-object v0, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 34
    new-instance v0, Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;-><init>(Lcom/sprint/dsa/MemoryUsageActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/MemoryUsageActivity$MemoryAppTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sprint/dsa/MemoryUsageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 47
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 48
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 80
    :goto_9
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 82
    :goto_d
    return v0

    .line 72
    :pswitch_e
    iget-object v1, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->sortItems(Z)V

    .line 73
    iget-object v1, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    invoke-virtual {v1}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->notifyDataSetInvalidated()V

    .line 74
    iput-boolean v2, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mSortBySize:Z

    goto :goto_d

    .line 77
    :pswitch_1b
    iget-object v1, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mAdapter:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    invoke-virtual {v1, v0}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->sortItems(Z)V

    .line 78
    iput-boolean v0, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mSortBySize:Z

    goto :goto_9

    .line 70
    nop

    :pswitch_data_24
    .packed-switch 0x7f0b0059
        :pswitch_e
        :pswitch_1b
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 40
    iget-object v0, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 41
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const v2, 0x7f0b0059

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 55
    .local v0, miName:Landroid/view/MenuItem;
    const v2, 0x7f0b005a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 57
    .local v1, miSize:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/sprint/dsa/MemoryUsageActivity;->mSortBySize:Z

    if-eqz v2, :cond_1f

    .line 58
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 59
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 64
    :goto_1a
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 61
    :cond_1f
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 62
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1a
.end method

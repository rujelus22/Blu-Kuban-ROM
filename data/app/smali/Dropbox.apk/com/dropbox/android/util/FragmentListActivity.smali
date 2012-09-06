.class public Lcom/dropbox/android/util/FragmentListActivity;
.super Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;
.source "panda.py"


# instance fields
.field private m:Landroid/widget/ListView;

.field private n:Landroid/widget/ListAdapter;

.field private final o:Landroid/os/Handler;

.field private p:Z

.field private final q:Ljava/lang/Runnable;

.field private final r:Landroid/widget/AdapterView$OnItemClickListener;

.field private final s:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->o:Landroid/os/Handler;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->p:Z

    .line 21
    new-instance v0, Lcom/dropbox/android/util/ah;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/ah;-><init>(Lcom/dropbox/android/util/FragmentListActivity;)V

    iput-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->q:Ljava/lang/Runnable;

    .line 153
    new-instance v0, Lcom/dropbox/android/util/ai;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/ai;-><init>(Lcom/dropbox/android/util/FragmentListActivity;)V

    iput-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;

    .line 161
    new-instance v0, Lcom/dropbox/android/util/aj;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/aj;-><init>(Lcom/dropbox/android/util/FragmentListActivity;)V

    iput-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->s:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/util/FragmentListActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->m:Landroid/widget/ListView;

    return-object v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->m:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    .line 151
    :goto_4
    return-void

    .line 149
    :cond_5
    const v0, 0x1090014

    invoke-virtual {p0, v0}, Lcom/dropbox/android/util/FragmentListActivity;->setContentView(I)V

    goto :goto_4
.end method


# virtual methods
.method public final C()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/dropbox/android/util/FragmentListActivity;->f()V

    .line 135
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->m:Landroid/widget/ListView;

    return-object v0
.end method

.method public final D()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->n:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_1
    invoke-direct {p0}, Lcom/dropbox/android/util/FragmentListActivity;->f()V

    .line 101
    iput-object p1, p0, Lcom/dropbox/android/util/FragmentListActivity;->n:Landroid/widget/ListAdapter;

    .line 102
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    return-void
.end method

.method public onContentChanged()V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->onContentChanged()V

    .line 76
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/dropbox/android/util/FragmentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/dropbox/android/util/FragmentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->m:Landroid/widget/ListView;

    .line 78
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->m:Landroid/widget/ListView;

    if-nez v0, :cond_21

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_21
    if-eqz v1, :cond_28

    .line 84
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 86
    :cond_28
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dropbox/android/util/FragmentListActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dropbox/android/util/FragmentListActivity;->s:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 88
    iget-boolean v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->p:Z

    if-eqz v0, :cond_3f

    .line 89
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->n:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/util/FragmentListActivity;->a(Landroid/widget/ListAdapter;)V

    .line 91
    :cond_3f
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dropbox/android/util/FragmentListActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->p:Z

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/android/util/FragmentListActivity;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dropbox/android/util/FragmentListActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    invoke-super {p0}, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->onDestroy()V

    .line 65
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dropbox/android/util/FragmentListActivity;->f()V

    .line 55
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/droidfu/BetterFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

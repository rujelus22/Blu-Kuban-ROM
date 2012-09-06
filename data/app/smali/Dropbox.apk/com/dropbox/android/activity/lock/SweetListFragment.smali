.class public abstract Lcom/dropbox/android/activity/lock/SweetListFragment;
.super Lcom/dropbox/android/activity/base/BaseListFragment;
.source "panda.py"


# instance fields
.field protected aa:Lcom/dropbox/android/widget/SweetListView;

.field protected ab:Lcom/dropbox/android/widget/aq;

.field protected ac:Lcom/dropbox/android/util/aG;

.field protected final ad:Landroid/widget/AdapterView$OnItemClickListener;

.field protected final ae:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseListFragment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->ac:Lcom/dropbox/android/util/aG;

    .line 50
    new-instance v0, Lcom/dropbox/android/activity/lock/r;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/lock/r;-><init>(Lcom/dropbox/android/activity/lock/SweetListFragment;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->ad:Landroid/widget/AdapterView$OnItemClickListener;

    .line 57
    new-instance v0, Lcom/dropbox/android/activity/lock/s;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/lock/s;-><init>(Lcom/dropbox/android/activity/lock/SweetListFragment;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->ae:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 14
    return-void
.end method

.method private g(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/SweetListFragment;->b()Lcom/dropbox/android/util/aG;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->ac:Lcom/dropbox/android/util/aG;

    .line 103
    const-string v0, "key_ScrollState"

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->ac:Lcom/dropbox/android/util/aG;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 104
    return-void
.end method

.method private h(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    if-eqz p1, :cond_14

    .line 109
    const-string v0, "key_ScrollState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 110
    const-string v0, "key_ScrollState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/aG;

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->ac:Lcom/dropbox/android/util/aG;

    .line 113
    :cond_14
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseListFragment;->a(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/lock/SweetListFragment;->c(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method protected final a(Lcom/dropbox/android/widget/SweetListView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()Lcom/dropbox/android/util/aG;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->ab:Lcom/dropbox/android/widget/aq;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->ab:Lcom/dropbox/android/widget/aq;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/aq;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    .line 39
    iget-object v1, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/widget/SweetListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 40
    iget-object v1, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/SweetListView;->getFirstVisiblePosition()I

    move-result v3

    .line 41
    new-instance v1, Lcom/dropbox/android/util/aG;

    iget-object v4, p0, Lcom/dropbox/android/activity/lock/SweetListFragment;->ab:Lcom/dropbox/android/widget/aq;

    invoke-virtual {v4, v3}, Lcom/dropbox/android/widget/aq;->c(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v2, :cond_34

    :goto_2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/dropbox/android/util/aG;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    move-object v0, v1

    .line 45
    :goto_33
    return-object v0

    .line 41
    :cond_34
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_2b

    .line 45
    :cond_39
    new-instance v1, Lcom/dropbox/android/util/aG;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/dropbox/android/util/aG;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    move-object v0, v1

    goto :goto_33
.end method

.method protected c(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    if-eqz p1, :cond_5

    .line 117
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/lock/SweetListFragment;->h(Landroid/os/Bundle;)V

    .line 119
    :cond_5
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseListFragment;->d(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/lock/SweetListFragment;->c(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseListFragment;->e()V

    .line 92
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseListFragment;->e(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/SweetListFragment;->n()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 85
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/lock/SweetListFragment;->g(Landroid/os/Bundle;)V

    .line 87
    :cond_c
    return-void
.end method

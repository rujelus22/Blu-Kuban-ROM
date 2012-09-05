.class public Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
.super Landroid/app/Fragment;
.source "GroupDeleteListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;,
        Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
    }
.end annotation


# static fields
.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

.field private final mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mGroupsToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderView:Landroid/view/View;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->configureEmptyView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->updateHeaderViewAndDoneButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private addAllGroup()V
    .registers 4

    .prologue
    .line 164
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 165
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_9

    .line 176
    :cond_8
    return-void

    .line 169
    :cond_9
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 170
    :cond_d
    :goto_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 171
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method private addGroup(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method private configureEmptyView(Z)V
    .registers 7
    .parameter "isEmpty"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_10

    .line 190
    :cond_f
    :goto_f
    return-void

    .line 184
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f0d0231

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f0a0054

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_39

    move v1, v2

    :goto_26
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    if-eqz p1, :cond_3b

    move v1, v2

    :goto_2e
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3d

    :goto_35
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_39
    move v1, v3

    .line 186
    goto :goto_26

    :cond_3b
    move v1, v3

    .line 188
    goto :goto_2e

    :cond_3d
    move v3, v2

    .line 189
    goto :goto_35
.end method

.method private dismissProgress()V
    .registers 4

    .prologue
    .line 341
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_c

    .line 342
    const-string v1, "GroupDeleteListFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_b
    return-void

    .line 344
    :cond_c
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 345
    const-string v1, "GroupDeleteListFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 348
    :cond_1c
    :try_start_1c
    sget-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 349
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mProgress:Ljava/lang/ref/WeakReference;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_2b

    goto :goto_b

    .line 350
    :catch_2b
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GroupDeleteListFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method private removeAllGroup()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    return-void
.end method

.method private removeGroup(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method private updateHeaderViewAndDoneButton()V
    .registers 6

    .prologue
    const v4, 0x7f0d008f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, total:I
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3f

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    :cond_2f
    :goto_2f
    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4b

    .line 207
    :cond_39
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    .line 211
    :goto_3e
    return-void

    .line 202
    :cond_3f
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2f

    .line 209
    :cond_4b
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    invoke-interface {v1, v3}, Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_3e
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 106
    const v0, 0x7f040081

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    .line 108
    const v0, 0x7f0400b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mEmptyView:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCompleted()V
    .registers 1

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->dismissProgress()V

    .line 338
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method public onDoneClicked()V
    .registers 1

    .prologue
    .line 359
    invoke-static {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->show(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    .line 360
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_23

    .line 128
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0d008f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 129
    .local v1, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->removeAllGroup()V

    .line 145
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    :goto_16
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->notifyDataSetChanged()V

    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->updateHeaderViewAndDoneButton()V

    .line 147
    return-void

    .line 132
    .restart local v1       #checkbox:Landroid/widget/CheckBox;
    :cond_1f
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->addAllGroup()V

    goto :goto_16

    .line 136
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    :cond_23
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v0, p3, v3

    .line 137
    .local v0, adjPosition:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mGroupsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 140
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->removeGroup(Ljava/lang/String;)V

    goto :goto_16

    .line 142
    :cond_44
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->addGroup(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public onRevertAction()V
    .registers 1

    .prologue
    .line 366
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 122
    return-void
.end method

.method public setActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    .line 89
    return-void
.end method

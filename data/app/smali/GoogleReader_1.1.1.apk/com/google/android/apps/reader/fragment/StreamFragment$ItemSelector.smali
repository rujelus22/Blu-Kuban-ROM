.class Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;
.super Landroid/database/DataSetObserver;
.source "StreamFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/fragment/StreamFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemSelector"
.end annotation


# instance fields
.field private final mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

.field private mDataValid:Z

.field private final mListView:Landroid/widget/ListView;

.field private mSyncItemId:Ljava/lang/Long;

.field private mSyncPosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/google/android/apps/reader/widget/StreamAdapter;)V
    .registers 5
    .parameter "listView"
    .parameter "adapter"

    .prologue
    .line 897
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 898
    if-nez p1, :cond_d

    .line 899
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ListView is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mListView:Landroid/widget/ListView;

    .line 902
    iput-object p2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    .line 903
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/reader/widget/StreamAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 904
    return-void
.end method

.method private findItem(J)I
    .registers 9
    .parameter "itemId"

    .prologue
    .line 939
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/reader/widget/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 943
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/reader/widget/StreamAdapter;->getCount()I

    move-result v0

    .line 944
    .local v0, count:I
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    if-lez v4, :cond_1c

    .line 945
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Header views are not supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 948
    :cond_1c
    const/4 v3, 0x0

    .local v3, position:I
    :goto_1d
    if-ge v3, v0, :cond_38

    .line 949
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/reader/widget/StreamAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 950
    .local v2, item:Ljava/lang/Object;
    if-eqz v2, :cond_35

    if-ne v2, v1, :cond_35

    .line 951
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mAdapter:Lcom/google/android/apps/reader/widget/StreamAdapter;

    invoke-virtual {v4, v1}, Lcom/google/android/apps/reader/widget/StreamAdapter;->getItemId(Landroid/database/Cursor;)J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_35

    move v4, v3

    .line 958
    .end local v2           #item:Ljava/lang/Object;
    :goto_34
    return v4

    .line 948
    .restart local v2       #item:Ljava/lang/Object;
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 958
    .end local v2           #item:Ljava/lang/Object;
    :cond_38
    const/4 v4, -0x1

    goto :goto_34
.end method

.method private selectItem(J)V
    .registers 5
    .parameter

    .prologue
    .line 962
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->findItem(J)I

    move-result v0

    .line 963
    if-gez v0, :cond_19

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 968
    :goto_18
    return-void

    .line 967
    :cond_19
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->showPositionAfterLayout(I)V

    goto :goto_18
.end method

.method private showPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 992
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 997
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-le p1, v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_1b

    .line 999
    :cond_18
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->smoothScrollToPosition(I)V

    .line 1008
    :cond_1b
    :goto_1b
    return-void

    .line 1006
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1b
.end method

.method private showPositionAfterLayout(I)V
    .registers 3
    .parameter

    .prologue
    .line 976
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mSyncPosition:Ljava/lang/Integer;

    .line 977
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method

.method private smoothScrollToPosition(I)V
    .registers 7
    .parameter

    .prologue
    .line 1011
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2f

    .line 1013
    :try_start_6
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "smoothScrollToPosition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1014
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_25} :catch_26

    .line 1021
    :goto_25
    return-void

    .line 1015
    :catch_26
    move-exception v0

    .line 1016
    const-string v1, "StreamFragment"

    const-string v2, "Call to smoothScrollToPosition(int) failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1019
    :cond_2f
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_25
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    .prologue
    .line 917
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mDataValid:Z

    .line 918
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mSyncItemId:Ljava/lang/Long;

    if-eqz v2, :cond_13

    .line 919
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mSyncItemId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 920
    .local v0, itemId:J
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->selectItem(J)V

    .line 921
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mSyncItemId:Ljava/lang/Long;

    .line 923
    .end local v0           #itemId:J
    :cond_13
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mDataValid:Z

    .line 928
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 984
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mSyncPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 985
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mSyncPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 986
    .local v0, position:I
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->showPosition(I)V

    .line 987
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mSyncPosition:Ljava/lang/Integer;

    .line 989
    .end local v0           #position:I
    :cond_10
    return-void
.end method

.method public setSelectedItemId(J)V
    .registers 4
    .parameter "itemId"

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mDataValid:Z

    if-eqz v0, :cond_8

    .line 908
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->selectItem(J)V

    .line 913
    :goto_7
    return-void

    .line 911
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamFragment$ItemSelector;->mSyncItemId:Ljava/lang/Long;

    goto :goto_7
.end method

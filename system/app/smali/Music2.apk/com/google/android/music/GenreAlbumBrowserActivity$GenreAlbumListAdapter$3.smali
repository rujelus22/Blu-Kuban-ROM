.class Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/MusicUtils$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

.field final synthetic val$genreId:J

.field final synthetic val$genreName:J

.field final synthetic val$groupHasLocal:J

.field final synthetic val$groupHasRemote:J

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;IJJJJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 947
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    iput p2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupPosition:I

    iput-wide p3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$genreName:J

    iput-wide p5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupHasLocal:J

    iput-wide p7, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupHasRemote:J

    iput-wide p9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$genreId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 15
    .parameter "c"

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 950
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    iget-object v9, v9, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v9}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v5

    .line 952
    .local v5, lv:Landroid/widget/ExpandableListView;
    if-eqz p1, :cond_1c

    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v9}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1c

    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    if-nez v9, :cond_1d

    .line 1009
    :cond_1c
    :goto_1c
    return-void

    .line 963
    :cond_1d
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    iget v10, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupPosition:I

    invoke-virtual {v9, v10}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_42

    .line 964
    const-string v9, "GenreAlbumBrowser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Group was invalid on callback:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 969
    :cond_42
    invoke-static {}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$800()Z

    move-result v9

    if-eqz v9, :cond_56

    .line 970
    sget-object v9, Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    array-length v9, v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_56

    .line 974
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Need to update the All Songs item in GenreAlbumBrowserActivity"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 978
    :cond_56
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-le v9, v12, :cond_b9

    .line 980
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 981
    .local v1, allSongsCursor:Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/ArrayList;

    sget-object v9, Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    array-length v9, v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 984
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;
    invoke-static {v9}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->access$600(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-result-object v9

    const v10, 0x7f0d000d

    invoke-virtual {v9, v10}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-wide v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$genreName:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    iget-wide v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupHasLocal:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    iget-wide v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupHasRemote:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 992
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/database/Cursor;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    aput-object p1, v9, v12

    invoke-direct {v2, v9}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p1
    .local v2, c:Landroid/database/Cursor;
    move-object p1, v2

    .line 995
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1           #allSongsCursor:Landroid/database/MatrixCursor;
    .end local v2           #c:Landroid/database/Cursor;
    .restart local p1
    :cond_b9
    new-instance v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    iget-wide v10, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$genreId:J

    invoke-direct {v3, v9, p1, v10, v11}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;Landroid/database/Cursor;J)V

    .line 996
    .local v3, child:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->access$900(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Ljava/util/HashMap;

    move-result-object v9

    iget-wide v10, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$genreId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    .line 997
    .local v6, old:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->access$900(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Ljava/util/HashMap;

    move-result-object v9

    iget-wide v10, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$genreId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    iget v10, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupPosition:I

    invoke-virtual {v9, v10, v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 999
    if-eqz v6, :cond_ef

    .line 1000
    invoke-virtual {v6}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->dispose()V

    .line 1003
    :cond_ef
    iget v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupPosition:I

    invoke-static {v9}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    .line 1004
    .local v7, pgp:J
    invoke-virtual {v5, v7, v8}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v4

    .line 1005
    .local v4, fgp:I
    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    if-lt v4, v9, :cond_1c

    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v9

    if-gt v4, v9, :cond_1c

    .line 1007
    invoke-virtual {v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->getCount()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v5, v9, v4}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto/16 :goto_1c
.end method

.class public Lcom/google/android/music/AddToPlaylistDialog;
.super Landroid/app/AlertDialog;
.source "AddToPlaylistDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final mAddToPlaylist:Lcom/google/android/music/medialist/SongList;

.field private final mExcludedPlaylist:J

.field private final mPlaylistCursor:Landroid/database/MatrixCursor;

.field private final mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;J)V
    .registers 20
    .parameter "context"
    .parameter "stateController"
    .parameter "addToPlaylist"
    .parameter "exludePlaylistId"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 34
    if-nez p3, :cond_d

    .line 35
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Given SongList was null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_d
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/music/AddToPlaylistDialog;->mAddToPlaylist:Lcom/google/android/music/medialist/SongList;

    .line 38
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/android/music/AddToPlaylistDialog;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 39
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/google/android/music/AddToPlaylistDialog;->mExcludedPlaylist:J

    .line 41
    const v2, 0x7f0d0071

    invoke-virtual {p0, v2}, Lcom/google/android/music/AddToPlaylistDialog;->setTitle(I)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 44
    .local v12, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/google/android/music/AddToPlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 45
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 47
    .local v8, childView:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 48
    .local v11, listView:Landroid/widget/ListView;
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v9, v2

    .line 50
    .local v9, cols:[Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    invoke-direct {v2, v9, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/google/android/music/AddToPlaylistDialog;->mPlaylistCursor:Landroid/database/MatrixCursor;

    .line 52
    iget-object v2, p0, Lcom/google/android/music/AddToPlaylistDialog;->mPlaylistCursor:Landroid/database/MatrixCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f0d0075

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 55
    iget-object v2, p0, Lcom/google/android/music/AddToPlaylistDialog;->mPlaylistCursor:Landroid/database/MatrixCursor;

    iget-wide v3, p0, Lcom/google/android/music/AddToPlaylistDialog;->mExcludedPlaylist:J

    invoke-static {v2, v3, v4}, Lcom/google/android/music/MusicUtils;->copyPlaylistCursor(Landroid/database/MatrixCursor;J)V

    .line 57
    new-instance v2, Landroid/widget/SimpleCursorAdapter;

    const v4, 0x7f040003

    iget-object v5, p0, Lcom/google/android/music/AddToPlaylistDialog;->mPlaylistCursor:Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "name"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    new-array v7, v3, [I

    const/4 v3, 0x0

    const v13, 0x7f100003

    aput v13, v7, v3

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {v11, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-virtual {v11, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    invoke-virtual {p0, v8}, Lcom/google/android/music/AddToPlaylistDialog;->setView(Landroid/view/View;)V

    .line 64
    const/4 v3, -0x2

    const v2, 0x7f0d0088

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/android/music/AddToPlaylistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 69
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v1, -0x1

    cmp-long v1, p4, v1

    if-nez v1, :cond_11

    .line 70
    iget-object v1, p0, Lcom/google/android/music/AddToPlaylistDialog;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v2, p0, Lcom/google/android/music/AddToPlaylistDialog;->mAddToPlaylist:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V

    .line 79
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/music/AddToPlaylistDialog;->dismiss()V

    .line 80
    return-void

    .line 72
    :cond_11
    iget-object v1, p0, Lcom/google/android/music/AddToPlaylistDialog;->mAddToPlaylist:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {p0}, Lcom/google/android/music/AddToPlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2, p4, p5}, Lcom/google/android/music/medialist/SongList;->appendToPlaylist(Landroid/content/ContentResolver;J)I

    move-result v0

    .line 74
    .local v0, songsAddedCount:I
    iget-object v1, p0, Lcom/google/android/music/AddToPlaylistDialog;->mPlaylistCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 76
    invoke-virtual {p0}, Lcom/google/android/music/AddToPlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/AddToPlaylistDialog;->mPlaylistCursor:Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_d
.end method

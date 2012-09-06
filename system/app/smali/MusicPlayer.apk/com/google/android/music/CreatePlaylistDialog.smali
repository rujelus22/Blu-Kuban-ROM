.class public Lcom/google/android/music/CreatePlaylistDialog;
.super Landroid/app/AlertDialog;
.source "CreatePlaylistDialog.java"


# instance fields
.field private mAddToPlaylist:Lcom/google/android/music/medialist/SongList;

.field private mPlaylistName:Landroid/widget/EditText;

.field mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSaveButton:Landroid/widget/Button;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/medialist/SongList;)V
    .registers 10
    .parameter "context"
    .parameter "addToPlaylist"

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v4, Lcom/google/android/music/CreatePlaylistDialog$2;

    invoke-direct {v4, p0}, Lcom/google/android/music/CreatePlaylistDialog$2;-><init>(Lcom/google/android/music/CreatePlaylistDialog;)V

    iput-object v4, p0, Lcom/google/android/music/CreatePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 189
    new-instance v4, Lcom/google/android/music/CreatePlaylistDialog$3;

    invoke-direct {v4, p0}, Lcom/google/android/music/CreatePlaylistDialog$3;-><init>(Lcom/google/android/music/CreatePlaylistDialog;)V

    iput-object v4, p0, Lcom/google/android/music/CreatePlaylistDialog;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    const-string v4, "CreatePlaylist"

    const-string v5, "CreatePlaylist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p2, p0, Lcom/google/android/music/CreatePlaylistDialog;->mAddToPlaylist:Lcom/google/android/music/medialist/SongList;

    .line 51
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 52
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040010

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, childView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/google/android/music/CreatePlaylistDialog;->setView(Landroid/view/View;)V

    .line 55
    iget-object v4, p0, Lcom/google/android/music/CreatePlaylistDialog;->mAddToPlaylist:Lcom/google/android/music/medialist/SongList;

    if-eqz v4, :cond_5a

    .line 56
    const v4, 0x7f0d001f

    invoke-virtual {p0, v4}, Lcom/google/android/music/CreatePlaylistDialog;->setTitle(I)V

    .line 61
    :goto_37
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 62
    .local v2, r:Landroid/content/res/Resources;
    const/4 v4, -0x1

    const v5, 0x7f0d008d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/CreatePlaylistDialog;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/android/music/CreatePlaylistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    const/4 v4, -0x2

    const v5, 0x7f0d009a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v3}, Lcom/google/android/music/CreatePlaylistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    return-void

    .line 58
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_5a
    const v4, 0x7f0d001e

    invoke-virtual {p0, v4}, Lcom/google/android/music/CreatePlaylistDialog;->setTitle(I)V

    goto :goto_37
.end method

.method static synthetic access$000(Lcom/google/android/music/CreatePlaylistDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/music/CreatePlaylistDialog;->makePlaylistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/CreatePlaylistDialog;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/music/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/CreatePlaylistDialog;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/music/CreatePlaylistDialog;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/CreatePlaylistDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/music/CreatePlaylistDialog;->mSaveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/CreatePlaylistDialog;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/music/CreatePlaylistDialog;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/CreatePlaylistDialog;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/music/CreatePlaylistDialog;->mAddToPlaylist:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .registers 10
    .parameter "name"

    .prologue
    .line 127
    const/4 v7, -0x1

    .line 128
    .local v7, id:I
    const/4 v6, 0x0

    .line 130
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    if-eqz v6, :cond_29

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_29

    .line 136
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_2f

    move-result v7

    .line 140
    :cond_29
    if-eqz v6, :cond_2e

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_2e
    return v7

    .line 140
    :catchall_2f
    move-exception v0

    if-eqz v6, :cond_35

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0
.end method

.method private makePlaylistName()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 148
    const/4 v8, 0x1

    .line 150
    .local v8, num:I
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v4

    .line 154
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 155
    .local v1, playlistUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_19

    .line 185
    :goto_18
    return-object v3

    .line 161
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 162
    .local v11, r:Landroid/content/res/Resources;
    const v0, 0x7f0d0084

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 163
    .local v13, template:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_6d

    const/4 v3, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .local v9, num:I
    :try_start_2e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_72

    move-result-object v12

    .line 170
    .local v12, suggestedname:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, done:Z
    move v8, v9

    .line 171
    .end local v9           #num:I
    .restart local v8       #num:I
    :goto_3a
    if-nez v7, :cond_68

    .line 172
    const/4 v7, 0x1

    .line 173
    :try_start_3d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_6d

    move v9, v8

    .line 174
    .end local v8           #num:I
    .restart local v9       #num:I
    :goto_41
    :try_start_41
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_77

    .line 175
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 176
    .local v10, playlistname:Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_75

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_41 .. :try_end_55} :catchall_72

    const/4 v3, 0x0

    add-int/lit8 v8, v9, 0x1

    .end local v9           #num:I
    .restart local v8       #num:I
    :try_start_58
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 178
    const/4 v7, 0x0

    .line 180
    :goto_63
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_6d

    move v9, v8

    .line 181
    .end local v8           #num:I
    .restart local v9       #num:I
    goto :goto_41

    .line 185
    .end local v9           #num:I
    .end local v10           #playlistname:Ljava/lang/String;
    .restart local v8       #num:I
    :cond_68
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v12

    goto :goto_18

    .end local v7           #done:Z
    .end local v11           #r:Landroid/content/res/Resources;
    .end local v12           #suggestedname:Ljava/lang/String;
    .end local v13           #template:Ljava/lang/String;
    :catchall_6d
    move-exception v0

    :goto_6e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v8           #num:I
    .restart local v9       #num:I
    .restart local v11       #r:Landroid/content/res/Resources;
    .restart local v13       #template:Ljava/lang/String;
    :catchall_72
    move-exception v0

    move v8, v9

    .end local v9           #num:I
    .restart local v8       #num:I
    goto :goto_6e

    .end local v8           #num:I
    .restart local v7       #done:Z
    .restart local v9       #num:I
    .restart local v10       #playlistname:Ljava/lang/String;
    .restart local v12       #suggestedname:Ljava/lang/String;
    :cond_75
    move v8, v9

    .end local v9           #num:I
    .restart local v8       #num:I
    goto :goto_63

    .end local v8           #num:I
    .end local v10           #playlistname:Ljava/lang/String;
    .restart local v9       #num:I
    :cond_77
    move v8, v9

    .end local v9           #num:I
    .restart local v8       #num:I
    goto :goto_3a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f100043

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreatePlaylistDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/music/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    .line 73
    iget-object v0, p0, Lcom/google/android/music/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    if-nez p1, :cond_1f

    .line 78
    new-instance v0, Lcom/google/android/music/CreatePlaylistDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/CreatePlaylistDialog$1;-><init>(Lcom/google/android/music/CreatePlaylistDialog;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 99
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylistDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 100
    return-void
.end method

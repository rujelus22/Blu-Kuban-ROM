.class public Lcom/google/android/music/RenamePlaylist;
.super Landroid/app/AlertDialog;
.source "RenamePlaylist.java"


# instance fields
.field private mOriginalName:Ljava/lang/String;

.field private mPlaylistId:J

.field private mPlaylistName:Landroid/widget/EditText;

.field mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSaveButton:Landroid/widget/Button;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 14
    .parameter "context"
    .parameter "originalName"
    .parameter "playlistId"

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v5, Lcom/google/android/music/RenamePlaylist$2;

    invoke-direct {v5, p0}, Lcom/google/android/music/RenamePlaylist$2;-><init>(Lcom/google/android/music/RenamePlaylist;)V

    iput-object v5, p0, Lcom/google/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 180
    new-instance v5, Lcom/google/android/music/RenamePlaylist$3;

    invoke-direct {v5, p0}, Lcom/google/android/music/RenamePlaylist$3;-><init>(Lcom/google/android/music/RenamePlaylist;)V

    iput-object v5, p0, Lcom/google/android/music/RenamePlaylist;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 43
    iput-object p2, p0, Lcom/google/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    .line 44
    iput-wide p3, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistId:J

    .line 46
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 47
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040010

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, childView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/google/android/music/RenamePlaylist;->setView(Landroid/view/View;)V

    .line 50
    const v5, 0x7f100043

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    .line 51
    iget-object v5, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/google/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0d0020

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, titleformat:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/music/RenamePlaylist;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 62
    .local v2, r:Landroid/content/res/Resources;
    const/4 v5, -0x1

    const v7, 0x7f0d008e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/RenamePlaylist;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v7, v8}, Lcom/google/android/music/RenamePlaylist;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    const/4 v7, -0x2

    const v5, 0x7f0d009a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v6

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v8, v5}, Lcom/google/android/music/RenamePlaylist;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/RenamePlaylist;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/music/RenamePlaylist;J)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/RenamePlaylist;->nameForId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/RenamePlaylist;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/RenamePlaylist;->initName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/RenamePlaylist;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/RenamePlaylist;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/music/RenamePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .registers 10
    .parameter "name"

    .prologue
    .line 139
    const/4 v7, -0x1

    .line 140
    .local v7, id:I
    const/4 v6, 0x0

    .line 142
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

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

    .line 145
    if-eqz v6, :cond_29

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_29

    .line 148
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_2f

    move-result v7

    .line 152
    :cond_29
    if-eqz v6, :cond_2e

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_2e
    return v7

    .line 152
    :catchall_2f
    move-exception v0

    if-eqz v6, :cond_35

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0
.end method

.method private initName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "originalname"
    .parameter "currentname"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, titleformat:Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/music/RenamePlaylist;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-eqz v4, :cond_37

    .line 108
    .local v2, userTypedSomethingIn:Z
    :goto_26
    if-nez v2, :cond_36

    .line 109
    iget-object v3, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v3, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 112
    :cond_36
    return-void

    .end local v2           #userTypedSomethingIn:Z
    :cond_37
    move v2, v3

    .line 106
    goto :goto_26
.end method

.method private nameForId(J)Ljava/lang/String;
    .registers 11
    .parameter "id"

    .prologue
    .line 160
    const/4 v7, 0x0

    .line 161
    .local v7, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 163
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    if-eqz v6, :cond_29

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_29

    .line 169
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_2f

    move-result-object v7

    .line 173
    :cond_29
    if-eqz v6, :cond_2e

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_2e
    return-object v7

    .line 173
    :catchall_2f
    move-exception v0

    if-eqz v6, :cond_35

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 70
    if-eqz p1, :cond_16

    .line 71
    const-string v0, "renameid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistId:J

    .line 89
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 90
    return-void

    .line 73
    :cond_16
    new-instance v0, Lcom/google/android/music/RenamePlaylist$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/RenamePlaylist$1;-><init>(Lcom/google/android/music/RenamePlaylist;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_d
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, outcicle:Landroid/os/Bundle;
    const-string v1, "renameid"

    iget-wide v2, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 96
    return-object v0
.end method

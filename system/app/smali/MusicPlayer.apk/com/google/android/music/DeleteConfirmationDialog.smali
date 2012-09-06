.class public Lcom/google/android/music/DeleteConfirmationDialog;
.super Landroid/app/AlertDialog;
.source "DeleteConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/DeleteConfirmationDialog$2;,
        Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasRemote:Z

.field private mItemTitle:Ljava/lang/String;

.field private mPrimaryId:J

.field private mSecondaryId:J

.field private mType:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/CharSequence;)V
    .registers 13
    .parameter "context"
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v1, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->PLAYLIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/DeleteConfirmationDialog;->init(Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;JJLjava/lang/CharSequence;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;JLjava/lang/CharSequence;Z)V
    .registers 15
    .parameter "context"
    .parameter "type"
    .parameter "id"
    .parameter "itemTitle"
    .parameter "hasRemote"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/DeleteConfirmationDialog;->init(Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;JJLjava/lang/CharSequence;Z)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/DeleteConfirmationDialog;)Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mType:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/DeleteConfirmationDialog;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mPrimaryId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/music/DeleteConfirmationDialog;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init(Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;JJLjava/lang/CharSequence;Z)V
    .registers 15
    .parameter "type"
    .parameter "primaryId"
    .parameter "secondaryId"
    .parameter "itemTitle"
    .parameter "hasRemote"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/google/android/music/DeleteConfirmationDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mContext:Landroid/content/Context;

    .line 65
    iput-wide p2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mPrimaryId:J

    .line 66
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_62

    .line 67
    iput-wide p4, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mSecondaryId:J

    .line 71
    :cond_12
    iput-object p1, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mType:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    .line 72
    iput-boolean p7, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mHasRemote:Z

    .line 73
    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mItemTitle:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "music_enable_tracks_upsync_deletion"

    invoke-static {v2, v3, v6}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    .local v0, enableRemoteTrackDeletes:Z
    iget-boolean v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mHasRemote:Z

    if-eqz v2, :cond_7f

    if-nez v0, :cond_7f

    .line 83
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0d014b

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mItemTitle:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/music/DeleteConfirmationDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    :goto_40
    invoke-virtual {p0}, Lcom/google/android/music/DeleteConfirmationDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 89
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, -0x1

    const v3, 0x7f0d0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/google/android/music/DeleteConfirmationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    const/4 v3, -0x2

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/android/music/DeleteConfirmationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 93
    return-void

    .line 68
    .end local v0           #enableRemoteTrackDeletes:Z
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_62
    sget-object v2, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ALBUM_BY_ARTIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    if-ne p1, v2, :cond_12

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secondary Id required for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    .restart local v0       #enableRemoteTrackDeletes:Z
    :cond_7f
    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0d014a

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mItemTitle:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/music/DeleteConfirmationDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_40
.end method

.method private performDelete()V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mType:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    sget-object v1, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->SONG:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mType:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    sget-object v1, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->PLAYLIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    if-eq v0, v1, :cond_18

    .line 129
    iget-object v0, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mContext:Landroid/content/Context;

    const-string v1, "TODO: Peform Delete"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    :cond_18
    new-instance v0, Lcom/google/android/music/DeleteConfirmationDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/DeleteConfirmationDialog$1;-><init>(Lcom/google/android/music/DeleteConfirmationDialog;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/google/android/music/DeleteConfirmationDialog;->performDelete()V

    .line 121
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_2d

    .line 99
    const-string v0, "primaryId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 100
    .local v2, primaryId:J
    const-string v0, "secondartId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 101
    .local v4, secondaryId:J
    invoke-static {}, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->values()[Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    move-result-object v0

    const-string v8, "type"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aget-object v1, v0, v8

    .line 102
    .local v1, type:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;
    const-string v0, "hasRemote"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 103
    .local v7, hasRemote:Z
    const-string v0, "itemTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, itemTitle:Ljava/lang/String;
    move-object v0, p0

    .line 104
    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/DeleteConfirmationDialog;->init(Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;JJLjava/lang/CharSequence;Z)V

    .line 106
    .end local v1           #type:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;
    .end local v2           #primaryId:J
    .end local v4           #secondaryId:J
    .end local v6           #itemTitle:Ljava/lang/String;
    .end local v7           #hasRemote:Z
    :cond_2d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, outcicle:Landroid/os/Bundle;
    const-string v1, "primaryId"

    iget-wide v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mPrimaryId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 112
    const-string v1, "secondartId"

    iget-wide v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mSecondaryId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 113
    const-string v1, "type"

    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mType:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    invoke-virtual {v2}, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v1, "hasRemote"

    iget-boolean v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mHasRemote:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    const-string v1, "itemTitle"

    iget-object v2, p0, Lcom/google/android/music/DeleteConfirmationDialog;->mItemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-object v0
.end method

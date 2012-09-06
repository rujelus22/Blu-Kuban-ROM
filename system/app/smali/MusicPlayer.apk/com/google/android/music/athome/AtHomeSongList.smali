.class public Lcom/google/android/music/athome/AtHomeSongList;
.super Lcom/google/android/music/medialist/ExternalDomainSongList;
.source "AtHomeSongList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mMaxSize:I

.field private final mVersion:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeUtils;->LOGV:Z

    sput-boolean v0, Lcom/google/android/music/athome/AtHomeSongList;->LOGV:Z

    return-void
.end method

.method public constructor <init>(JZI)V
    .registers 6
    .parameter "version"
    .parameter "partyMode"
    .parameter "maxSize"

    .prologue
    .line 27
    if-eqz p3, :cond_1a

    sget-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_PARTY:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    :goto_4
    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;-><init>(Lcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 29
    iput-wide p1, p0, Lcom/google/android/music/athome/AtHomeSongList;->mVersion:J

    .line 30
    iput p4, p0, Lcom/google/android/music/athome/AtHomeSongList;->mMaxSize:I

    .line 31
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeSongList;->setFlag(I)V

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeSongList;->setFlag(I)V

    .line 33
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeSongList;->setFlag(I)V

    .line 34
    return-void

    .line 27
    :cond_1a
    sget-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_SINGLE:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    goto :goto_4
.end method


# virtual methods
.method public createAsyncCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/music/AsyncCursor;
    .registers 6
    .parameter "context"
    .parameter "proj"
    .parameter "filter"
    .parameter "isHighPriority"

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;

    invoke-direct {v0, p1, p2}, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/music/athome/AtHomeSongList;->mVersion:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeSongList;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_PARTY:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne v3, v4, :cond_16

    move v0, v1

    :cond_16
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/music/athome/AtHomeSongList;->mMaxSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3
    .parameter "context"

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->PLAY_QUEUE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getItemLayout()I
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeSongList;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f040016

    :goto_9
    return v0

    :cond_a
    const v0, 0x7f040062

    goto :goto_9
.end method

.method public getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 81
    const-string v0, "At-Home Queue"

    return-object v0
.end method

.method public getSongCursor(Landroid/content/Context;Lcom/google/android/music/dl/ContentIdentifier;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "context"
    .parameter "songId"
    .parameter "cols"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p2}, Lcom/google/android/music/dl/ContentIdentifier;->isAtHomeDomain()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 65
    invoke-virtual {p2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/music/athome/AtHomeContentProvider;->getSongUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 66
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 69
    .end local v1           #uri:Landroid/net/Uri;
    :goto_1a
    return-object v3

    .line 68
    :cond_1b
    const-string v0, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected content domain:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/music/dl/ContentIdentifier;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public getSubmitterStatsCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "context"
    .parameter "cols"

    .prologue
    const/4 v3, 0x0

    .line 74
    sget-object v1, Lcom/google/android/music/athome/AtHomeContentProvider;->SUBMITTER_STATS_URI:Landroid/net/Uri;

    .line 75
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedPositionSearchRadius()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/music/athome/AtHomeSongList;->mMaxSize:I

    return v0
.end method

.method public isEditable()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

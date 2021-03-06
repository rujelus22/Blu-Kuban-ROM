.class public Lcom/google/android/music/medialist/MediaList$MediaCursor;
.super Landroid/database/CursorWrapper;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaCursor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 548
    if-nez p1, :cond_d

    .line 549
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrapped cursor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_d
    iput-object p1, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;->mCursor:Landroid/database/Cursor;

    .line 552
    return-void
.end method


# virtual methods
.method public getCountSync()I
    .registers 3

    .prologue
    .line 576
    iget-object v1, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Lcom/google/android/music/AsyncCursor;

    if-eqz v1, :cond_f

    .line 577
    iget-object v0, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/google/android/music/AsyncCursor;

    .line 578
    .local v0, ac:Lcom/google/android/music/AsyncCursor;
    invoke-virtual {v0}, Lcom/google/android/music/AsyncCursor;->getCountSync()I

    move-result v1

    .line 580
    .end local v0           #ac:Lcom/google/android/music/AsyncCursor;
    :goto_e
    return v1

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v1

    goto :goto_e
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Lcom/google/android/music/AsyncCursor;

    if-eqz v1, :cond_f

    .line 585
    iget-object v0, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/google/android/music/AsyncCursor;

    .line 586
    .local v0, ac:Lcom/google/android/music/AsyncCursor;
    invoke-virtual {v0}, Lcom/google/android/music/AsyncCursor;->hasCount()Z

    move-result v1

    .line 588
    .end local v0           #ac:Lcom/google/android/music/AsyncCursor;
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public moveItem(II)V
    .registers 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 558
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeItem(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 565
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

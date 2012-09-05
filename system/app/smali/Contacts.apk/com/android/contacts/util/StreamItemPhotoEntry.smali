.class public Lcom/android/contacts/util/StreamItemPhotoEntry;
.super Ljava/lang/Object;
.source "StreamItemPhotoEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/util/StreamItemPhotoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFileSize:I

.field private final mHeight:I

.field private final mId:J

.field private final mPhotoFileId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mSortIndex:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    const/4 v2, -0x1

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "_id"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    .line 52
    const-string v0, "sort_index"

    invoke-static {p1, v0, v2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    .line 53
    const-string v0, "photo_file_id"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mPhotoFileId:J

    .line 54
    const-string v0, "photo_uri"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mPhotoUri:Ljava/lang/String;

    .line 55
    const-string v0, "height"

    invoke-static {p1, v0, v2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mHeight:I

    .line 56
    const-string v0, "width"

    invoke-static {p1, v0, v2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mWidth:I

    .line 57
    const-string v0, "filesize"

    invoke-static {p1, v0, v2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mFileSize:I

    .line 58
    return-void
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .registers 5
    .parameter "cursor"
    .parameter "columnName"
    .parameter "missingValue"

    .prologue
    .line 117
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, columnIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .end local p2
    :goto_a
    return p2

    .restart local p2
    :cond_b
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_a
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 5
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 122
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, columnIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 113
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/contacts/util/StreamItemPhotoEntry;)I
    .registers 9
    .parameter "streamItemPhotoEntry"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 93
    iget v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    iget v4, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-ne v3, v4, :cond_22

    .line 94
    iget v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-ne v3, v1, :cond_15

    .line 95
    iget-wide v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    iget-wide v5, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 107
    :cond_15
    :goto_15
    return v0

    .line 95
    :cond_16
    iget-wide v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    iget-wide v5, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_20

    move v0, v1

    goto :goto_15

    :cond_20
    move v0, v2

    goto :goto_15

    .line 101
    :cond_22
    iget v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-ne v3, v1, :cond_28

    move v0, v2

    .line 102
    goto :goto_15

    .line 104
    :cond_28
    iget v3, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-ne v3, v1, :cond_2e

    move v0, v1

    .line 105
    goto :goto_15

    .line 107
    :cond_2e
    iget v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    iget v4, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-eq v3, v4, :cond_15

    iget v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    iget v3, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-ge v0, v3, :cond_3c

    move v0, v1

    goto :goto_15

    :cond_3c
    move v0, v2

    goto :goto_15
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/android/contacts/util/StreamItemPhotoEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/StreamItemPhotoEntry;->compareTo(Lcom/android/contacts/util/StreamItemPhotoEntry;)I

    move-result v0

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

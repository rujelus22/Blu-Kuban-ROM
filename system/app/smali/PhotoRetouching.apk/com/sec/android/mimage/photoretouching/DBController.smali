.class public Lcom/sec/android/mimage/photoretouching/DBController;
.super Ljava/lang/Object;
.source "DBController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAndsaveToDB(Lcom/sec/android/mimage/photoretouching/DBAdapter;Ljava/lang/String;)[I
    .registers 6
    .parameter "database"
    .parameter "filepath"

    .prologue
    .line 74
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 76
    .local v1, pos:[I
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->open()Lcom/sec/android/mimage/photoretouching/DBAdapter;

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->fetchAllBooks()Landroid/database/Cursor;

    move-result-object v0

    .line 78
    .local v0, c:Landroid/database/Cursor;
    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/DBController;->clearDB(Lcom/sec/android/mimage/photoretouching/DBAdapter;Landroid/database/Cursor;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->createBook(Ljava/lang/String;)J

    .line 81
    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    aput v3, v1, v2

    .line 82
    const/4 v2, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    aput v3, v1, v2

    .line 84
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->close()V

    .line 87
    return-object v1
.end method

.method public static clearDB(Lcom/sec/android/mimage/photoretouching/DBAdapter;)V
    .registers 2
    .parameter "database"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->open()Lcom/sec/android/mimage/photoretouching/DBAdapter;

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->fetchAllBooks()Landroid/database/Cursor;

    move-result-object v0

    .line 127
    .local v0, c:Landroid/database/Cursor;
    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/DBController;->clearDB(Lcom/sec/android/mimage/photoretouching/DBAdapter;Landroid/database/Cursor;)V

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->close()V

    .line 131
    return-void
.end method

.method public static clearDB(Lcom/sec/android/mimage/photoretouching/DBAdapter;Landroid/database/Cursor;)V
    .registers 5
    .parameter "database"
    .parameter "c"

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 117
    .local v0, isNext:Z
    :goto_4
    if-nez v0, :cond_7

    .line 121
    return-void

    .line 118
    :cond_7
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->deleteBook(J)Z

    .line 119
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_4
.end method

.method public static deleteNextAll(Lcom/sec/android/mimage/photoretouching/DBAdapter;I)V
    .registers 5
    .parameter "database"
    .parameter "pos"

    .prologue
    .line 37
    if-eqz p0, :cond_5

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    .line 49
    :cond_5
    :goto_5
    return-void

    .line 40
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->open()Lcom/sec/android/mimage/photoretouching/DBAdapter;

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->fetchAllBooks()Landroid/database/Cursor;

    move-result-object v0

    .line 42
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 43
    :goto_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 47
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->close()V

    goto :goto_5

    .line 45
    :cond_1d
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->deleteBook(J)Z

    goto :goto_10
.end method

.method public static deleteOldestOne(Landroid/database/Cursor;Lcom/sec/android/mimage/photoretouching/DBAdapter;)I
    .registers 6
    .parameter "c"
    .parameter "database"

    .prologue
    .line 10
    const/4 v0, -0x1

    .line 11
    .local v0, pos:I
    if-nez p1, :cond_5

    move v1, v0

    .line 22
    .end local v0           #pos:I
    .local v1, pos:I
    :goto_4
    return v1

    .line 14
    .end local v1           #pos:I
    .restart local v0       #pos:I
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_19

    .line 16
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 17
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->deleteBook(J)Z

    .line 19
    :cond_19
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 20
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    move v1, v0

    .line 22
    .end local v0           #pos:I
    .restart local v1       #pos:I
    goto :goto_4
.end method

.method public static deleteOldestOne(Lcom/sec/android/mimage/photoretouching/DBAdapter;)I
    .registers 3
    .parameter "database"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, -0x1

    .line 33
    :goto_3
    return v1

    .line 29
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->fetchAllBooks()Landroid/database/Cursor;

    move-result-object v0

    .line 30
    .local v0, c:Landroid/database/Cursor;
    invoke-static {v0, p0}, Lcom/sec/android/mimage/photoretouching/DBController;->deleteOldestOne(Landroid/database/Cursor;Lcom/sec/android/mimage/photoretouching/DBAdapter;)I

    move-result v1

    .line 31
    .local v1, pos:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public static load_db(Lcom/sec/android/mimage/photoretouching/DBAdapter;I[Ljava/lang/Object;)Z
    .registers 7
    .parameter "database"
    .parameter "pos"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->open()Lcom/sec/android/mimage/photoretouching/DBAdapter;

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->fetchAllBooks()Landroid/database/Cursor;

    move-result-object v0

    .line 94
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 96
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 100
    :cond_1d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->close()V

    .line 110
    :goto_23
    return v2

    .line 104
    :cond_24
    const-string v3, "filepath"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, path:Ljava/lang/String;
    aput-object v1, p2, v2

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->close()V

    .line 110
    const/4 v2, 0x1

    goto :goto_23
.end method

.method public static saveToDB(Lcom/sec/android/mimage/photoretouching/DBAdapter;Ljava/lang/String;)[I
    .registers 6
    .parameter "database"
    .parameter "filepath"

    .prologue
    .line 54
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 56
    .local v1, pos:[I
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->open()Lcom/sec/android/mimage/photoretouching/DBAdapter;

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->fetchAllBooks()Landroid/database/Cursor;

    move-result-object v0

    .line 59
    .local v0, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    invoke-static {v0, p0}, Lcom/sec/android/mimage/photoretouching/DBController;->deleteOldestOne(Landroid/database/Cursor;Lcom/sec/android/mimage/photoretouching/DBAdapter;)I

    move-result v3

    aput v3, v1, v2

    .line 61
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->createBook(Ljava/lang/String;)J

    .line 64
    const/4 v2, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    aput v3, v1, v2

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->close()V

    .line 69
    return-object v1
.end method

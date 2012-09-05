.class public Lcom/sec/android/mimage/photoretouching/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table data (_id integer primary key autoincrement,filepath string not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "datum.db"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "data"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS DATA"

.field public static final FIND_BY_NAME:I = 0x0

.field public static final FIND_BY_PHONE:I = 0x1

.field public static final KEY_FILEPATH:Ljava/lang/String; = "filepath"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field private static final TAG:Ljava/lang/String; = "DbAdapter"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mCtx:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDbHelper:Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;->close()V

    .line 67
    return-void
.end method

.method public createBook(Ljava/lang/String;)J
    .registers 6
    .parameter "filepath"

    .prologue
    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public deleteBook(J)Z
    .registers 7
    .parameter "rowID"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "data"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public fetchAllBooks()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "data"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "filepath"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchBook(J)Landroid/database/Cursor;
    .registers 13
    .parameter "rowID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 89
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "data"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "filepath"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 91
    .local v9, mCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2e

    .line 92
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    :cond_2e
    return-object v9
.end method

.method public open()Lcom/sec/android/mimage/photoretouching/DBAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mCtx:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;-><init>(Lcom/sec/android/mimage/photoretouching/DBAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDbHelper:Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;

    .line 60
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDbHelper:Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    return-object p0
.end method

.method public updateBook(JLjava/lang/String;)Z
    .registers 9
    .parameter "rowID"
    .parameter "filepath"

    .prologue
    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_26

    const/4 v1, 0x1

    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public upgrade(II)V
    .registers 6
    .parameter "oldv"
    .parameter "newv"

    .prologue
    const/4 v2, 0x1

    .line 69
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDbHelper:Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/DBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/mimage/photoretouching/DBAdapter$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 71
    return-void
.end method

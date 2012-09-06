.class public LLY;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# instance fields
.field private final a:I

.field private final a:Landroid/content/Context;

.field private final a:Ljava/lang/String;

.field private final a:[Laga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laga",
            "<",
            "LMa;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Laga;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Laga",
            "<",
            "LMa;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    iput-object p1, p0, LLY;->a:Landroid/content/Context;

    .line 43
    iput-object p3, p0, LLY;->a:[Laga;

    .line 44
    iput p4, p0, LLY;->a:I

    .line 45
    iput p5, p0, LLY;->b:I

    .line 46
    iput-object p2, p0, LLY;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v2, p0, LLY;->a:[Laga;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    .line 137
    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMa;

    .line 138
    invoke-virtual {v0, p2}, LMa;->a(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 139
    invoke-virtual {v0, p1, p2}, LMa;->c(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 136
    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 142
    :cond_1c
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v2, p0, LLY;->a:[Laga;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    .line 184
    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMa;

    .line 185
    invoke-virtual {v0, p2}, LMa;->a(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 186
    invoke-virtual {v0, p1, p2}, LMa;->b(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 183
    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 189
    :cond_1c
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    return-void
.end method

.method a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 67
    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a new database at version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, LLY;->a:[Laga;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2b
    if-ge v1, v3, :cond_42

    aget-object v0, v2, v1

    .line 69
    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMa;

    .line 70
    invoke-virtual {v0, p2}, LMa;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 71
    invoke-virtual {v0, p1, p2}, LMa;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 68
    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    .line 74
    :cond_42
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, LLY;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 207
    return-void
.end method

.method b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 165
    const-string v1, "SQLITE_MASTER"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v3

    const-string v3, "type == \'view\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    :goto_18
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_46

    .line 170
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP VIEW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_40
    .catchall {:try_start_18 .. :try_end_40} :catchall_41

    goto :goto_18

    .line 175
    :catchall_41
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 177
    return-void
.end method

.method b(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v2, p0, LLY;->a:[Laga;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    .line 151
    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMa;

    .line 152
    invoke-virtual {v0, p2}, LMa;->a(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 155
    invoke-virtual {v0, p1, p2}, LMa;->d(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 150
    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 158
    :cond_1c
    return-void
.end method

.method c(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 197
    invoke-direct {p0, p1, v0}, LLY;->e(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 198
    invoke-virtual {p0, p1}, LLY;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 199
    invoke-virtual {p0, p1, p2}, LLY;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 200
    iget v0, p0, LLY;->a:I

    if-ne p2, v0, :cond_14

    .line 201
    invoke-virtual {p0, p1}, LLY;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 203
    :cond_14
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, LLY;->a:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 57
    :try_start_3
    iget v0, p0, LLY;->a:I

    invoke-virtual {p0, p1, v0}, LLY;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 58
    invoke-virtual {p0, p1}, LLY;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    .line 61
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 63
    return-void

    .line 61
    :catchall_12
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " databaseName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LLY;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v0, p0, LLY;->a:I

    if-ne p3, v0, :cond_78

    const/4 v0, 0x1

    :goto_41
    const-string v1, "Cannot upgrade database to version other than latest."

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 90
    iget v0, p0, LLY;->b:I

    if-ge p2, v0, :cond_7a

    .line 91
    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current database is too old to upgrade ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LLY;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Wiping all existing data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0, p1, p3}, LLY;->c(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 129
    :goto_77
    return-void

    .line 87
    :cond_78
    const/4 v0, 0x0

    goto :goto_41

    .line 97
    :cond_7a
    const-string v0, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 100
    :try_start_82
    invoke-virtual {p0, p1}, LLY;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    invoke-virtual {p0, p1, p3}, LLY;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 104
    add-int/lit8 v0, p2, 0x1

    :goto_8a
    if-ge v0, p3, :cond_92

    .line 105
    invoke-virtual {p0, p1, v0}, LLY;->b(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 108
    :cond_92
    invoke-direct {p0, p1, p3}, LLY;->d(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 110
    invoke-virtual {p0, p1}, LLY;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    invoke-direct {p0, p1, p2}, LLY;->e(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 113
    invoke-virtual {p0, p1}, LLY;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_9e
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_9e} :catch_aa

    .line 126
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 127
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 128
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_77

    .line 120
    :catch_aa
    move-exception v0

    .line 121
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 122
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 123
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 124
    throw v0
.end method

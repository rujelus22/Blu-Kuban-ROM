.class public Lcom/samsung/avrcp/AudioProvider;
.super Landroid/content/ContentProvider;
.source "AudioProvider.java"


# static fields
.field public static final MYDB_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "content://com.samsung.avrcp/Audio"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/avrcp/AudioProvider;->MYDB_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, i:I
    const/4 v1, 0x0

    .line 51
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 53
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_3
    new-instance v2, Lcom/samsung/avrcp/AudioDBHelper;

    invoke-virtual {p0}, Lcom/samsung/avrcp/AudioProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/avrcp/AudioDBHelper;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, dbHelper:Lcom/samsung/avrcp/AudioDBHelper;
    invoke-virtual {v2}, Lcom/samsung/avrcp/AudioDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 55
    const-string v5, "AUDIO"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 56
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 57
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of row deleted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_32} :catch_33

    .line 61
    .end local v2           #dbHelper:Lcom/samsung/avrcp/AudioDBHelper;
    :goto_32
    return v3

    .line 58
    :catch_33
    move-exception v4

    .line 59
    .local v4, sqle:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_32
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 78
    const/4 v8, 0x0

    .line 79
    .local v8, cur:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 80
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 82
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_3
    new-instance v10, Lcom/samsung/avrcp/AudioDBHelper;

    invoke-virtual {p0}, Lcom/samsung/avrcp/AudioProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/samsung/avrcp/AudioDBHelper;-><init>(Landroid/content/Context;)V

    .line 83
    .local v10, dbHelper:Lcom/samsung/avrcp/AudioDBHelper;
    invoke-virtual {v10}, Lcom/samsung/avrcp/AudioDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 84
    const-string v1, "AUDIO"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 85
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_1f} :catch_20

    .line 89
    .end local v10           #dbHelper:Lcom/samsung/avrcp/AudioDBHelper;
    :goto_1f
    return-object v9

    .line 86
    :catch_20
    move-exception v11

    .line 87
    .local v11, sqle:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1f
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

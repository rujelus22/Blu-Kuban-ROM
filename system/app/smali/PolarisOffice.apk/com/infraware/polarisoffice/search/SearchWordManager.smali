.class public Lcom/infraware/polarisoffice/search/SearchWordManager;
.super Ljava/lang/Object;
.source "SearchWordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;
    }
.end annotation


# static fields
.field private static final DUPLICATE_CHECK_DUP:I = -0x2

.field private static final DUPLICATE_CHECK_ERROR:I = -0x3

.field private static final DUPLICATE_CHECK_NOTDUP:I = -0x1

.field private static final EXPIRED_DATE_DEF:J = 0x278d00L

.field private static mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

.field private static volatile mSearchWordManager:Lcom/infraware/polarisoffice/search/SearchWordManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordManager:Lcom/infraware/polarisoffice/search/SearchWordManager;

    .line 45
    sput-object v0, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    .line 9
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-direct {v0, p0, p1}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;-><init>(Lcom/infraware/polarisoffice/search/SearchWordManager;Landroid/content/Context;)V

    sput-object v0, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    .line 58
    return-void
.end method

.method private checkDuplication(Ljava/lang/String;)I
    .registers 7
    .parameter "searchWord"

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, searchDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 92
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v3, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT * FROM SearchWord WHERE word=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    const/4 v4, 0x0

    .line 93
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_54

    move-result v3

    if-lez v3, :cond_3e

    .line 108
    if-eqz v0, :cond_33

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_33

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_33
    sget-object v3, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v3, :cond_3c

    .line 114
    sget-object v3, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 98
    :cond_3c
    const/4 v3, -0x2

    .line 117
    :goto_3d
    return v3

    .line 108
    :cond_3e
    if-eqz v0, :cond_49

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_49

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_49
    sget-object v3, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v3, :cond_52

    .line 114
    sget-object v3, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 101
    :cond_52
    const/4 v3, -0x1

    goto :goto_3d

    .line 104
    :catch_54
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Exception;
    :try_start_55
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_6e

    .line 108
    if-eqz v0, :cond_63

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_63

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_63
    sget-object v3, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v3, :cond_6c

    .line 114
    sget-object v3, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 117
    :cond_6c
    const/4 v3, -0x3

    goto :goto_3d

    .line 107
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_6e
    move-exception v3

    .line 108
    if-eqz v0, :cond_7a

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_7a
    sget-object v4, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v4, :cond_83

    .line 114
    sget-object v4, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 115
    :cond_83
    throw v3
.end method

.method private deleteWordInDB(Ljava/util/ArrayList;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/search/SearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, sList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/polarisoffice/search/SearchItem;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    .local v0, curMillis:J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_c

    .line 211
    return-void

    .line 190
    :cond_c
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/polarisoffice/search/SearchItem;

    .line 191
    .local v4, sItem:Lcom/infraware/polarisoffice/search/SearchItem;
    iget-wide v6, v4, Lcom/infraware/polarisoffice/search/SearchItem;->m_nInsertDate:J

    sub-long v6, v0, v6

    const-wide v8, 0x9a7ec800L

    cmp-long v6, v6, v8

    if-lez v6, :cond_43

    .line 193
    const/4 v5, 0x0

    .line 196
    .local v5, searchDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_20
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DELETE FROM SearchWord WHERE _id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    iget v7, v4, Lcom/infraware/polarisoffice/search/SearchItem;->m_nSearchId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 198
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_54
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3a} :catch_46

    .line 205
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v6, :cond_43

    .line 206
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 188
    .end local v5           #searchDB:Landroid/database/sqlite/SQLiteDatabase;
    :cond_43
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 201
    .restart local v5       #searchDB:Landroid/database/sqlite/SQLiteDatabase;
    :catch_46
    move-exception v2

    .line 202
    .local v2, e:Ljava/lang/Exception;
    :try_start_47
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_54

    .line 205
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v6, :cond_43

    .line 206
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    goto :goto_43

    .line 204
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_54
    move-exception v6

    .line 205
    sget-object v7, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v7, :cond_5e

    .line 206
    sget-object v7, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 208
    :cond_5e
    throw v6
.end method

.method private getAllData()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v3, sList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/polarisoffice/search/SearchItem;>;"
    const/4 v4, 0x0

    .line 150
    .local v4, searchWordDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 153
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_7
    sget-object v5, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 156
    const-string v5, "SELECT * FROM SearchWord"

    const/4 v6, 0x0

    .line 155
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 158
    :goto_14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_54

    move-result v5

    if-nez v5, :cond_2f

    .line 172
    if-eqz v0, :cond_25

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_25

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_25
    sget-object v5, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v5, :cond_2e

    .line 178
    sget-object v5, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 181
    :cond_2e
    :goto_2e
    return-object v3

    .line 160
    :cond_2f
    :try_start_2f
    new-instance v2, Lcom/infraware/polarisoffice/search/SearchItem;

    invoke-direct {v2}, Lcom/infraware/polarisoffice/search/SearchItem;-><init>()V

    .line 161
    .local v2, sItem:Lcom/infraware/polarisoffice/search/SearchItem;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/infraware/polarisoffice/search/SearchItem;->m_nSearchId:I

    .line 162
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/infraware/polarisoffice/search/SearchItem;->m_strWord:Ljava/lang/String;

    .line 163
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/infraware/polarisoffice/search/SearchItem;->m_nInsertDate:J

    .line 164
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/infraware/polarisoffice/search/SearchItem;->m_nAccessDate:J

    .line 165
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_53} :catch_54

    goto :goto_14

    .line 168
    .end local v2           #sItem:Lcom/infraware/polarisoffice/search/SearchItem;
    :catch_54
    move-exception v1

    .line 169
    .local v1, e:Ljava/lang/Exception;
    :try_start_55
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_6d

    .line 172
    if-eqz v0, :cond_63

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_63

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_63
    sget-object v5, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v5, :cond_2e

    .line 178
    sget-object v5, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    goto :goto_2e

    .line 171
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_6d
    move-exception v5

    .line 172
    if-eqz v0, :cond_79

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_79

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_79
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v6, :cond_82

    .line 178
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 179
    :cond_82
    throw v5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/infraware/polarisoffice/search/SearchWordManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 61
    sget-object v0, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordManager:Lcom/infraware/polarisoffice/search/SearchWordManager;

    if-nez v0, :cond_13

    .line 62
    const-class v1, Lcom/infraware/polarisoffice/search/SearchWordManager;

    monitor-enter v1

    .line 63
    :try_start_7
    sget-object v0, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordManager:Lcom/infraware/polarisoffice/search/SearchWordManager;

    if-nez v0, :cond_12

    .line 64
    new-instance v0, Lcom/infraware/polarisoffice/search/SearchWordManager;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/search/SearchWordManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordManager:Lcom/infraware/polarisoffice/search/SearchWordManager;

    .line 62
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 68
    :cond_13
    sget-object v0, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordManager:Lcom/infraware/polarisoffice/search/SearchWordManager;

    return-object v0

    .line 62
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private insertWord(Ljava/lang/String;)V
    .registers 10
    .parameter "searchWord"

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 124
    .local v3, searchDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 127
    .local v1, insertDate:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 130
    .local v4, updateDate:J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "INSERT INTO SearchWord VALUES ( null, \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 133
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 134
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ");"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_45

    .line 140
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v6, :cond_44

    .line 141
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 143
    .end local v1           #insertDate:J
    .end local v4           #updateDate:J
    :cond_44
    :goto_44
    return-void

    .line 136
    :catch_45
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    :try_start_46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    .line 140
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v6, :cond_44

    .line 141
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    goto :goto_44

    .line 139
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_53
    move-exception v6

    .line 140
    sget-object v7, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v7, :cond_5d

    .line 141
    sget-object v7, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v7}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 142
    :cond_5d
    throw v6
.end method


# virtual methods
.method public deleteExpiredWord()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/infraware/polarisoffice/search/SearchWordManager;->getAllData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/search/SearchWordManager;->deleteWordInDB(Ljava/util/ArrayList;)V

    .line 85
    return-void
.end method

.method public getSearchWord(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .parameter "searchKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v4, searchWordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/polarisoffice/search/SearchItem;>;"
    const/4 v3, 0x0

    .line 218
    .local v3, searchWordDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 221
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_7
    sget-object v5, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT * FROM SearchWord Where word like \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 227
    const-string v6, " ORDER BY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "word"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ASC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 227
    const/4 v6, 0x0

    .line 223
    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 229
    :goto_39
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3c} :catch_79

    move-result v5

    if-nez v5, :cond_54

    .line 243
    if-eqz v0, :cond_4a

    .line 244
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 245
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_4a
    sget-object v5, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v5, :cond_53

    .line 249
    sget-object v5, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 252
    :cond_53
    :goto_53
    return-object v4

    .line 231
    :cond_54
    :try_start_54
    new-instance v2, Lcom/infraware/polarisoffice/search/SearchItem;

    invoke-direct {v2}, Lcom/infraware/polarisoffice/search/SearchItem;-><init>()V

    .line 232
    .local v2, sItem:Lcom/infraware/polarisoffice/search/SearchItem;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/infraware/polarisoffice/search/SearchItem;->m_nSearchId:I

    .line 233
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/infraware/polarisoffice/search/SearchItem;->m_strWord:Ljava/lang/String;

    .line 234
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/infraware/polarisoffice/search/SearchItem;->m_nInsertDate:J

    .line 235
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/infraware/polarisoffice/search/SearchItem;->m_nAccessDate:J

    .line 236
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catchall {:try_start_54 .. :try_end_78} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_78} :catch_79

    goto :goto_39

    .line 239
    .end local v2           #sItem:Lcom/infraware/polarisoffice/search/SearchItem;
    :catch_79
    move-exception v1

    .line 240
    .local v1, e:Ljava/lang/Exception;
    :try_start_7a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_92

    .line 243
    if-eqz v0, :cond_88

    .line 244
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_88

    .line 245
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_88
    sget-object v5, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v5, :cond_53

    .line 249
    sget-object v5, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    goto :goto_53

    .line 242
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_92
    move-exception v5

    .line 243
    if-eqz v0, :cond_9e

    .line 244
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_9e

    .line 245
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_9e
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    if-eqz v6, :cond_a7

    .line 249
    sget-object v6, Lcom/infraware/polarisoffice/search/SearchWordManager;->mSearchWordDBHelper:Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->close()V

    .line 250
    :cond_a7
    throw v5
.end method

.method public insertWordToDB(Ljava/lang/String;)V
    .registers 4
    .parameter "searchWord"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/search/SearchWordManager;->checkDuplication(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, err_code:I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_d

    .line 77
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 78
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/search/SearchWordManager;->insertWord(Ljava/lang/String;)V

    .line 80
    :cond_d
    return-void
.end method

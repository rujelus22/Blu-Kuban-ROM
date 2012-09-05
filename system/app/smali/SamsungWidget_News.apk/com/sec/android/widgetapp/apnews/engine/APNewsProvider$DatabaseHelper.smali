.class Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "APNewsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final mInternal:Z

.field private myDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .parameter "context"
    .parameter "name"
    .parameter "internal"

    .prologue
    .line 112
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 113
    iput-boolean p3, p0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;->mInternal:Z

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "News.updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, newsIntent:Landroid/content/Intent;
    const-string v1, "DB_START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    :cond_9
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 109
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 121
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/engine/APNewsProvider$DatabaseHelper;->mInternal:Z

    if-eqz v1, :cond_69

    .line 122
    const-string v1, "CREATE TABLE APNEWS_TABLE_AP_NEWS ( NEWS_INDEX TEXT , NEWS_TITLE TEXT , NEWS_LINK TEXT , NEWS_PUBDATE INTEGER , NEWS_TIME INTEGER , NEWS_IMAGEURL TEXT , NEWS_IMAGEDATA BINARY , NEWS_CONTENTTEXT TEXT , NEWS_XMLURL TEXT , UPDATE_STATE INTEGER , NEWS_ETAG TEXT , NEWS_IMAGE_ETAG TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v1, "CREATE TABLE APNEWS_TABLE_AP_NEWS_HEAD ( NAME TEXT , ID INTEGER , ACID INTEGER , XMLURL TEXT , PMI INTEGER , ETAG TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v1, "CREATE TABLE APNEWS_PREFERENCE ( PREF_KEY TEXT NOT NULL, PREF_VALUE TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    sget-boolean v1, Lcom/sec/android/widgetapp/apnews/engine/Util;->PREF_DEF_VALUE_FOR_USCC:Z

    if-eqz v1, :cond_6a

    .line 129
    const-string v1, " INSERT INTO APNEWS_PREFERENCE VALUES( \'AP_NEWS_AUTO_REFRESH\',\'6\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    :goto_1c
    const-string v1, " INSERT INTO APNEWS_PREFERENCE VALUES( \'AP_NEWS_AUTO_SCROLL\',\'2\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    sget-boolean v1, Lcom/sec/android/widgetapp/apnews/engine/Util;->PREF_DEF_VALUE_FOR_USCC:Z

    if-eqz v1, :cond_70

    .line 141
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 142
    .local v0, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 143
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " INSERT INTO APNEWS_PREFERENCE VALUES( \'AUTO_REFRESH_TIME\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    .end local v0           #time:Landroid/text/format/Time;
    :goto_55
    const-string v1, " INSERT INTO APNEWS_PREFERENCE VALUES( \'AUTO_REFRESH_TIME\',\'0\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string v1, " INSERT INTO APNEWS_PREFERENCE VALUES( \'SET_DEFAULT_NEWS\',\'None\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string v1, "CREATE TABLE APNEWS_CPORDER ( CPORDER_NAME TEXT PRIMARY KEY, CPORDER_INDEX INTEGER NOT NULL, CPORDER_CHECK INTEGER NOT NULL );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string v1, " INSERT INTO APNEWS_CPORDER VALUES( \'AP Mobile news\',\'1\',\'1\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    :cond_69
    return-void

    .line 133
    :cond_6a
    const-string v1, " INSERT INTO APNEWS_PREFERENCE VALUES( \'AP_NEWS_AUTO_REFRESH\',\'0\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1c

    .line 148
    :cond_70
    const-string v1, " INSERT INTO APNEWS_PREFERENCE VALUES( \'AUTO_REFRESH_TIME\',\'0\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_55
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 171
    const-string v0, "ApNewsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x1

    if-ne p2, v0, :cond_46

    const/4 v0, 0x2

    if-ne p3, v0, :cond_46

    .line 182
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 184
    :try_start_31
    const-string v0, "alter table APNEWS_TABLE_AP_NEWS add NEWS_ETAG TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    const-string v0, "alter table APNEWS_TABLE_AP_NEWS add NEWS_IMAGE_ETAG TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    const-string v0, "alter table APNEWS_TABLE_AP_NEWS_HEAD add ETAG TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_47

    .line 191
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 195
    :cond_46
    return-void

    .line 191
    :catchall_47
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

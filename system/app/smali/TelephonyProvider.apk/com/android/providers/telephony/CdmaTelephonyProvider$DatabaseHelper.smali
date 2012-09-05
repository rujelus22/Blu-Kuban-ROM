.class Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CdmaTelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/CdmaTelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 94
    const-string v0, "cdmatelephony.db"

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 95
    iput-object p1, p0, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 182
    if-nez p1, :cond_4

    .line 183
    const-string p1, ""

    .line 185
    .end local p1
    :cond_4
    return-object p1
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .registers 6
    .parameter "parser"

    .prologue
    const/4 v1, 0x0

    .line 196
    const-string v2, "connection"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object v0, v1

    .line 208
    :goto_e
    return-object v0

    .line 200
    :cond_f
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "user"

    const-string v3, "user"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "password"

    const-string v3, "password"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v2, "auth"

    const-string v3, "auth"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "proxy"

    const-string v3, "proxy"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "port"

    const-string v3, "port"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method private static getVersion(Landroid/content/Context;)I
    .registers 8
    .parameter "context"

    .prologue
    const/high16 v4, 0x4

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 101
    .local v3, r:Landroid/content/res/Resources;
    const v5, 0x10f0002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 103
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_d
    const-string v5, "cdma_carriers"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 104
    const/4 v5, 0x0

    const-string v6, "version"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_22

    move-result v2

    .line 105
    .local v2, publicversion:I
    or-int/2addr v4, v2

    .line 110
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v2           #publicversion:I
    :goto_21
    return v4

    .line 106
    :catch_22
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    :try_start_23
    const-string v5, "CdmaTelephonyProvider"

    const-string v6, "Can\'t get version of CDMA Carrier database"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    .line 110
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_21

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2e
    move-exception v4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 14
    .parameter "db"

    .prologue
    .line 133
    iget-object v9, p0, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 134
    .local v8, r:Landroid/content/res/Resources;
    const v9, 0x10f0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 135
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    const/4 v7, -0x1

    .line 137
    .local v7, publicversion:I
    :try_start_e
    const-string v9, "cdma_carriers"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 138
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v6, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 139
    invoke-direct {p0, p1, v6}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->loadCdmaCarriers(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_74

    .line 143
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 147
    :goto_24
    const/4 v1, 0x0

    .line 149
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/cdma-carriers-conf.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v0, confFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 152
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_31
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_bd
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_36} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_92

    .line 153
    .end local v2           #confreader:Ljava/io/FileReader;
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_36
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 154
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 155
    const-string v9, "cdma_carriers"

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 158
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 159
    .local v4, confversion:I
    if-eq v7, v4, :cond_85

    .line 160
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Internal CDMA Carrier file version doesn\'t match "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_6c
    .catchall {:try_start_36 .. :try_end_6c} :catchall_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_6c} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6c} :catch_cb

    .line 165
    .end local v4           #confversion:I
    :catch_6c
    move-exception v9

    move-object v2, v3

    .line 171
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :goto_6e
    if-eqz v2, :cond_73

    :try_start_70
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_c4

    .line 173
    :cond_73
    :goto_73
    return-void

    .line 140
    .end local v0           #confFile:Ljava/io/File;
    .end local v1           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #confreader:Ljava/io/FileReader;
    :catch_74
    move-exception v5

    .line 141
    .local v5, e:Ljava/lang/Exception;
    :try_start_75
    const-string v9, "CdmaTelephonyProvider"

    const-string v10, "Got execption while loading CDMA Carrier database."

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_80

    .line 143
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_24

    .end local v5           #e:Ljava/lang/Exception;
    :catchall_80
    move-exception v9

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v9

    .line 164
    .restart local v0       #confFile:Ljava/io/File;
    .restart local v1       #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #confreader:Ljava/io/FileReader;
    .restart local v4       #confversion:I
    :cond_85
    :try_start_85
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->loadCdmaCarriers(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_88} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_cb

    .line 171
    if-eqz v3, :cond_8d

    :try_start_8a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8f

    :cond_8d
    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_73

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_8f
    move-exception v9

    move-object v2, v3

    .line 172
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_73

    .line 168
    .end local v4           #confversion:I
    :catch_92
    move-exception v5

    .line 169
    .restart local v5       #e:Ljava/lang/Exception;
    :goto_93
    :try_start_93
    const-string v9, "CdmaTelephonyProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b5
    .catchall {:try_start_93 .. :try_end_b5} :catchall_bd

    .line 171
    if-eqz v2, :cond_73

    :try_start_b7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_73

    :catch_bb
    move-exception v9

    goto :goto_73

    .end local v5           #e:Ljava/lang/Exception;
    :catchall_bd
    move-exception v9

    :goto_be
    if-eqz v2, :cond_c3

    :try_start_c0
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c6

    :cond_c3
    :goto_c3
    throw v9

    :catch_c4
    move-exception v9

    goto :goto_73

    :catch_c6
    move-exception v10

    goto :goto_c3

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catchall_c8
    move-exception v9

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_be

    .line 168
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_cb
    move-exception v5

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_93

    .line 165
    :catch_ce
    move-exception v9

    goto :goto_6e
.end method

.method private loadCdmaCarriers(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .parameter "db"
    .parameter "parser"

    .prologue
    .line 219
    if-eqz p2, :cond_1a

    .line 222
    :goto_2
    :try_start_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 223
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 224
    .local v1, row:Landroid/content/ContentValues;
    if-eqz v1, :cond_1a

    .line 225
    const-string v2, "cdmacarriers"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_11} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_1b

    goto :goto_2

    .line 230
    .end local v1           #row:Landroid/content/ContentValues;
    :catch_12
    move-exception v0

    .line 231
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "CdmaTelephonyProvider"

    const-string v3, "Got XmlPullParserException."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1a
    :goto_1a
    return-void

    .line 232
    :catch_1b
    move-exception v0

    .line 233
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CdmaTelephonyProvider"

    const-string v3, "Got IOException."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 117
    const-string v0, "CREATE TABLE cdmacarriers(_id INTEGER PRIMARY KEY,name TEXT,user TEXT,password TEXT,auth TEXT,proxy TEXT,port TEXT,current INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 177
    const-string v0, "DROP TABLE IF EXISTS cdmacarriers;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 179
    return-void
.end method

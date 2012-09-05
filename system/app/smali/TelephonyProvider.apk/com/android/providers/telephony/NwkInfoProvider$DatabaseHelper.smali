.class Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NwkInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/NwkInfoProvider;
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
    .line 125
    const-string v0, "nwk_info.db"

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 126
    const-string v0, "NwkInfoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DB Version] getVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - DatabaseHelper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-object p1, p0, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->updateTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 283
    const-string v0, "NwkInfoProvider"

    const-string v1, "createCarriersTable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v0, "DROP TABLE IF EXISTS carriers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    const-string v0, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY, name TEXT, numeric TEXT, mcc TEXT, mnc TEXT, apn TEXT, user TEXT, server TEXT, password TEXT, proxy TEXT, port TEXT, mmsproxy TEXT, mmsport TEXT, mmsc TEXT, authtype INTEGER, type TEXT, protocol TEXT, roaming_protocol TEXT, carrier_enabled BOOLEAN, bearer INTEGER, homeurl TEXT, nwkname TEXT, preferred BOOLEAN, editable BOOLEAN);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private createDormPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 300
    const-string v0, "NwkInfoProvider"

    const-string v1, "createDormPolicyTable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v0, "DROP TABLE IF EXISTS dormpolicy"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    const-string v0, "CREATE TABLE dormpolicy(plmn TEXT, nwkname TEXT, lcdonfdtime TEXT, lcdofffdtime TEXT, CONSTRAINT PKcompKey PRIMARY KEY (plmn, nwkname))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private createNetworkInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 292
    const-string v0, "NwkInfoProvider"

    const-string v1, "createNetworkInfoTable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v0, "DROP TABLE IF EXISTS nwkinfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    const-string v0, "CREATE TABLE nwkinfo(plmn TEXT, nwkname TEXT, dormancy TEXT, mtu INTEGER, subsetcode TEXT, spcode TEXT, CONSTRAINT PKcompKey PRIMARY KEY (plmn, nwkname))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private getDormPolicyRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .registers 6
    .parameter "parser"

    .prologue
    .line 258
    const-string v1, "NwkInfoProvider"

    const-string v2, "getDormPolicyRow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v1, "DormPolicy"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 261
    const-string v1, "NwkInfoProvider"

    const-string v2, "dormpolicy != parser.getName()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x0

    .line 271
    :goto_1b
    return-object v0

    .line 265
    :cond_1c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v0, map:Landroid/content/ContentValues;
    const-string v1, "plmn"

    const-string v2, ""

    const-string v3, "plmn"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "nwkname"

    const-string v2, ""

    const-string v3, "nwkname"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "lcdonfdtime"

    const-string v2, ""

    const-string v3, "lcdonfdtime"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "lcdofffdtime"

    const-string v2, ""

    const-string v3, "lcdofffdtime"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private getNetworkInfoRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .registers 6
    .parameter "parser"

    .prologue
    .line 238
    const-string v1, "NwkInfoProvider"

    const-string v2, "getNetowkrInfoRow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v1, "NetworkInfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 241
    const-string v1, "NwkInfoProvider"

    const-string v2, "NetworkInfo != parser.getName()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    .line 254
    :goto_1b
    return-object v0

    .line 245
    :cond_1c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v0, map:Landroid/content/ContentValues;
    const-string v1, "plmn"

    const-string v2, ""

    const-string v3, "plmn"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "nwkname"

    const-string v2, ""

    const-string v3, "nwkname"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "dormancy"

    const-string v2, ""

    const-string v3, "dormancy"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "mtu"

    const-string v2, ""

    const-string v3, "mtu"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "subsetcode"

    const-string v2, ""

    const-string v3, "subsetcode"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "spcode"

    const-string v2, ""

    const-string v3, "spcode"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private static getVersion(Landroid/content/Context;)I
    .registers 8
    .parameter "context"

    .prologue
    const/high16 v4, 0x29

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 134
    .local v3, r:Landroid/content/res/Resources;
    const/high16 v5, 0x10f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 136
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_c
    const-string v5, "apns"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 137
    const/4 v5, 0x0

    const-string v6, "version"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_21

    move-result v2

    .line 138
    .local v2, publicversion:I
    or-int/2addr v4, v2

    .line 143
    .end local v2           #publicversion:I
    :goto_1d
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 141
    return v4

    .line 139
    :catch_21
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    :try_start_22
    const-string v5, "NwkInfoProvider"

    const-string v6, "Can\'t get version of APN database"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_1d

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2a
    move-exception v4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 14
    .parameter "db"

    .prologue
    .line 165
    const-string v9, "NwkInfoProvider"

    const-string v10, "initDatabase"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v9, p0, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 168
    .local v8, r:Landroid/content/res/Resources;
    const/high16 v9, 0x10f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 169
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    const/4 v7, -0x1

    .line 171
    .local v7, publicversion:I
    :try_start_14
    const-string v9, "apns"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 172
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v6, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 173
    invoke-direct {p0, p1, v6}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->loadNetworkInfos(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_a5
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_9c

    .line 177
    :goto_27
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 181
    const/4 v1, 0x0

    .line 184
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/nwk_info.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v0, confFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 187
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_37
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_e7
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3c} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_bc

    .line 188
    .end local v2           #confreader:Ljava/io/FileReader;
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_3c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 189
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 190
    const-string v9, "NetworkInfos"

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 193
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 194
    .local v4, confversion:I
    if-eq v7, v4, :cond_aa

    .line 195
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Internal APNS file version doesn\'t match "

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
    :try_end_72
    .catchall {:try_start_3c .. :try_end_72} :catchall_f2
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_72} :catch_72
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_72} :catch_f5

    .line 204
    .end local v4           #confversion:I
    :catch_72
    move-exception v5

    move-object v2, v3

    .line 206
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_74
    :try_start_74
    const-string v9, "NwkInfoProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File not found: \'"

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

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_74 .. :try_end_96} :catchall_e7

    .line 210
    if-eqz v2, :cond_9b

    :try_start_98
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_e5

    .line 212
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :cond_9b
    :goto_9b
    return-void

    .line 174
    .end local v0           #confFile:Ljava/io/File;
    .end local v1           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #confreader:Ljava/io/FileReader;
    :catch_9c
    move-exception v5

    .line 175
    .local v5, e:Ljava/lang/Exception;
    :try_start_9d
    const-string v9, "NwkInfoProvider"

    const-string v10, "Got exception while loading APN database."

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_a5

    goto :goto_27

    .line 177
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_a5
    move-exception v9

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v9

    .line 199
    .restart local v0       #confFile:Ljava/io/File;
    .restart local v1       #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #confreader:Ljava/io/FileReader;
    .restart local v4       #confversion:I
    :cond_aa
    :try_start_aa
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->loadNetworkInfos(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 201
    const-string v9, "DormPolicy"

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->loadDormPolicys(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b5
    .catchall {:try_start_aa .. :try_end_b5} :catchall_f2
    .catch Ljava/io/FileNotFoundException; {:try_start_aa .. :try_end_b5} :catch_72
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b5} :catch_f5

    .line 210
    if-eqz v3, :cond_ba

    :try_start_b7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_f0

    :cond_ba
    :goto_ba
    move-object v2, v3

    .line 211
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_9b

    .line 207
    .end local v4           #confversion:I
    :catch_bc
    move-exception v5

    .line 208
    .restart local v5       #e:Ljava/lang/Exception;
    :goto_bd
    :try_start_bd
    const-string v9, "NwkInfoProvider"

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
    :try_end_df
    .catchall {:try_start_bd .. :try_end_df} :catchall_e7

    .line 210
    if-eqz v2, :cond_9b

    :try_start_e1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5

    goto :goto_9b

    .end local v5           #e:Ljava/lang/Exception;
    :catch_e5
    move-exception v9

    goto :goto_9b

    :catchall_e7
    move-exception v9

    :goto_e8
    if-eqz v2, :cond_ed

    :try_start_ea
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ee

    :cond_ed
    :goto_ed
    throw v9

    :catch_ee
    move-exception v10

    goto :goto_ed

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    .restart local v4       #confversion:I
    :catch_f0
    move-exception v9

    goto :goto_ba

    .end local v4           #confversion:I
    :catchall_f2
    move-exception v9

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_e8

    .line 207
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_f5
    move-exception v5

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_bd

    .line 204
    :catch_f8
    move-exception v5

    goto/16 :goto_74
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 5
    .parameter "db"
    .parameter "table"
    .parameter "row"

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 379
    return-void
.end method

.method private loadDormPolicys(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .parameter "db"
    .parameter "parser"

    .prologue
    .line 350
    const-string v2, "NwkInfoProvider"

    const-string v3, "loadDormPolicys"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz p2, :cond_29

    .line 353
    :try_start_9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 355
    :goto_c
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 356
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->getDormPolicyRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 358
    .local v1, row:Landroid/content/ContentValues;
    if-eqz v1, :cond_4a

    .line 359
    const-string v2, "dormpolicy"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_2a
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_1a} :catch_36

    goto :goto_c

    .line 364
    .end local v1           #row:Landroid/content/ContentValues;
    :catch_1b
    move-exception v0

    .line 365
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1c
    const-string v2, "NwkInfoProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_42

    .line 371
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 372
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_26
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 375
    :cond_29
    return-void

    .line 366
    :catch_2a
    move-exception v0

    .line 367
    .local v0, e:Ljava/io/IOException;
    :try_start_2b
    const-string v2, "NwkInfoProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_42

    .line 371
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_26

    .line 368
    .end local v0           #e:Ljava/io/IOException;
    :catch_36
    move-exception v0

    .line 369
    .local v0, e:Landroid/database/SQLException;
    :try_start_37
    const-string v2, "NwkInfoProvider"

    const-string v3, "dormpolicy sql exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_42

    .line 371
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_26

    .end local v0           #e:Landroid/database/SQLException;
    :catchall_42
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 372
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 371
    throw v2

    .restart local v1       #row:Landroid/content/ContentValues;
    :cond_4a
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_26
.end method

.method private loadNetworkInfos(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .parameter "db"
    .parameter "parser"

    .prologue
    .line 323
    const-string v2, "NwkInfoProvider"

    const-string v3, "loadNetworkInfos"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-eqz p2, :cond_29

    .line 326
    :try_start_9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 328
    :goto_c
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 329
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->getNetworkInfoRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 330
    .local v1, row:Landroid/content/ContentValues;
    if-eqz v1, :cond_4a

    .line 331
    const-string v2, "nwkinfo"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_2a
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_1a} :catch_36

    goto :goto_c

    .line 336
    .end local v1           #row:Landroid/content/ContentValues;
    :catch_1b
    move-exception v0

    .line 337
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1c
    const-string v2, "NwkInfoProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_42

    .line 343
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 344
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_26
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 347
    :cond_29
    return-void

    .line 338
    :catch_2a
    move-exception v0

    .line 339
    .local v0, e:Ljava/io/IOException;
    :try_start_2b
    const-string v2, "NwkInfoProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_42

    .line 343
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_26

    .line 340
    .end local v0           #e:Ljava/io/IOException;
    :catch_36
    move-exception v0

    .line 341
    .local v0, e:Landroid/database/SQLException;
    :try_start_37
    const-string v2, "NwkInfoProvider"

    const-string v3, "networkinfos sql exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_42

    .line 343
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_26

    .end local v0           #e:Landroid/database/SQLException;
    :catchall_42
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 344
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 343
    throw v2

    .restart local v1       #row:Landroid/content/ContentValues;
    :cond_4a
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_26
.end method

.method private updateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 307
    const-string v0, "NwkInfoProvider"

    const-string v1, "updateTables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createNetworkInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 316
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createDormPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 320
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 149
    const-string v1, "NwkInfoProvider"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createNetworkInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createDormPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_10} :catch_14

    .line 161
    :goto_10
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 162
    return-void

    .line 157
    :catch_14
    move-exception v0

    .line 158
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "NwkInfoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught during creating nwkinfo table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 216
    const-string v2, "NwkInfoProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DB Version] oldVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->updateTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CSC_CLEAR_SIM_PROFILE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, clearintent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CSC_UPDATE_CONNECTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 228
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 229
    return-void
.end method

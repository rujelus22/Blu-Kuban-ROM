.class public Lcom/sprint/dsa/http/MyHttpClient;
.super Ljava/lang/Object;
.source "MyHttpClient.java"


# static fields
.field private static final HTTP_TIMEOUT:I = 0x1770

.field private static final IO_BUFFER_SIZE:I = 0x1000

.field private static final PLATFORM_NAME:Ljava/lang/String; = "android"

.field public static final TAG:Ljava/lang/String; = "SprintZone_HTTP"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 96
    .local v0, b:[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, read:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 99
    return-void

    .line 97
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4
.end method

.method public static createPostMsg(Landroid/content/Context;Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/ContentVersion;)Ljava/lang/String;
    .registers 27
    .parameter "context"
    .parameter "db"
    .parameter "version"

    .prologue
    .line 181
    const/4 v3, 0x0

    .line 183
    .local v3, appVer:I
    new-instance v17, Lcom/sprint/dsa/Prefs;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    .line 184
    .local v17, prefs:Lcom/sprint/dsa/Prefs;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/Prefs;->getNai(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 185
    .local v13, nai:Ljava/lang/String;
    invoke-static {v13}, Lcom/sprint/dsa/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 187
    .local v11, md5Nai:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 189
    .local v16, pm:Landroid/content/pm/PackageManager;
    :try_start_1a
    const-string v21, "com.sprint.dsa"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 190
    .local v9, info:Landroid/content/pm/PackageInfo;
    iget v3, v9, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_2a} :catch_128

    .line 195
    .end local v9           #info:Landroid/content/pm/PackageInfo;
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Lcom/sprint/dsa/data/DbAdapter;->getReports()Ljava/lang/String;

    move-result-object v18

    .line 200
    .local v18, reportXml:Ljava/lang/String;
    sget-boolean v21, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v21, :cond_136

    .line 201
    sget-object v12, Lcom/sprint/dsa/Util;->MODEL:Ljava/lang/String;

    .line 202
    .local v12, model:Ljava/lang/String;
    sget-object v10, Lcom/sprint/dsa/Util;->MAKE:Ljava/lang/String;

    .line 218
    .local v10, make:Ljava/lang/String;
    :goto_36
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v20, spaAttrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "make"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v21, "model"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v21, "platform"

    const-string v22, "android"

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v21, "osver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v21, "user"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v21, "ver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const/4 v4, 0x0

    .line 232
    .local v4, cPacks:Landroid/database/Cursor;
    :try_start_86
    invoke-virtual/range {p1 .. p1}, Lcom/sprint/dsa/data/DbAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sprint/dsa/pack/DbPacks;->getPackCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v4

    .line 233
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 234
    .local v6, count:I
    new-array v14, v6, [Ljava/lang/String;

    .line 235
    .local v14, packIds:[Ljava/lang/String;
    new-array v15, v6, [Ljava/lang/String;

    .line 236
    .local v15, packVersions:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_97
    if-lt v8, v6, :cond_13c

    .line 243
    const-string v21, "packIds"

    const-string v22, ","

    move-object/from16 v0, v22

    invoke-static {v0, v14}, Lcom/sprint/dsa/Util;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v21, "packVersions"

    const-string v22, ","

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/sprint/dsa/Util;->join(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catchall {:try_start_86 .. :try_end_b7} :catchall_169
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b7} :catch_163

    .line 250
    invoke-static {v4}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 253
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v14           #packIds:[Ljava/lang/String;
    .end local v15           #packVersions:[Ljava/lang/String;
    :goto_ba
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v5, conAttrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "promo"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sprint/dsa/data/ContentVersion;->mPromosVer:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v21, "alert"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sprint/dsa/data/ContentVersion;->mAlertsVer:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v21, "setting"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sprint/dsa/data/ContentVersion;->mSettingsVer:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v22, "spa"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/http/MyHttpClient;->makeXmlText(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 260
    const-string v22, "content"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/sprint/dsa/http/MyHttpClient;->makeXmlText(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 261
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 262
    const-string v22, "</spa>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 258
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 266
    .local v19, result:Ljava/lang/String;
    return-object v19

    .line 191
    .end local v4           #cPacks:Landroid/database/Cursor;
    .end local v5           #conAttrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #make:Ljava/lang/String;
    .end local v12           #model:Ljava/lang/String;
    .end local v18           #reportXml:Ljava/lang/String;
    .end local v19           #result:Ljava/lang/String;
    .end local v20           #spaAttrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_128
    move-exception v7

    .line 192
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "SprintZone_HTTP"

    const-string v22, "Exception - Failed to find my own package"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 205
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v18       #reportXml:Ljava/lang/String;
    :cond_136
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 206
    .restart local v12       #model:Ljava/lang/String;
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .restart local v10       #make:Ljava/lang/String;
    goto/16 :goto_36

    .line 237
    .restart local v4       #cPacks:Landroid/database/Cursor;
    .restart local v6       #count:I
    .restart local v8       #i:I
    .restart local v14       #packIds:[Ljava/lang/String;
    .restart local v15       #packVersions:[Ljava/lang/String;
    .restart local v20       #spaAttrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_13c
    :try_start_13c
    invoke-interface {v4, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 238
    const-string v21, "pack_id"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v8

    .line 239
    const-string v21, "version"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v15, v8
    :try_end_15f
    .catchall {:try_start_13c .. :try_end_15f} :catchall_169
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_15f} :catch_163

    .line 236
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_97

    .line 246
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v14           #packIds:[Ljava/lang/String;
    .end local v15           #packVersions:[Ljava/lang/String;
    :catch_163
    move-exception v21

    .line 250
    invoke-static {v4}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_ba

    .line 249
    :catchall_169
    move-exception v21

    .line 250
    invoke-static {v4}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 251
    throw v21
.end method

.method public static getPhotoBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "baseUrl"
    .parameter "iconUrl"
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 106
    .local v7, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 110
    .local v5, fullUrl:Ljava/lang/String;
    const-string v10, "sprint.png"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string v10, "alert_icon.png"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_14
    move-object v2, v1

    .line 177
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_15
    return-object v2

    .line 118
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_16
    const-string v10, "http"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_26

    const-string v10, "file:"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_66

    .line 119
    :cond_26
    move-object v5, p1

    .line 133
    :goto_27
    :try_start_27
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    .local v9, url:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 136
    .local v3, connection:Ljava/net/URLConnection;
    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 137
    .local v6, httpConnection:Ljava/net/HttpURLConnection;
    const/16 v10, 0x1770

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 138
    const/16 v10, 0x1770

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 139
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 140
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 141
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 143
    const-string v10, "GET"

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 146
    .local v8, response:I
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_5f

    .line 147
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 150
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_5e
    .catchall {:try_start_27 .. :try_end_5e} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_5e} :catch_8c

    move-result-object v1

    .line 167
    :cond_5f
    if-eqz v7, :cond_64

    .line 169
    :try_start_61
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_ac

    .end local v3           #connection:Ljava/net/URLConnection;
    .end local v6           #httpConnection:Ljava/net/HttpURLConnection;
    .end local v8           #response:I
    .end local v9           #url:Ljava/net/URL;
    :cond_64
    :goto_64
    move-object v2, v1

    .line 177
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_15

    .line 124
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_66
    const-string v10, "/"

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7a

    .line 125
    const-string v10, "/"

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 127
    :cond_7a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_27

    .line 164
    :catch_8c
    move-exception v10

    .line 167
    if-eqz v7, :cond_64

    .line 169
    :try_start_8f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_64

    .line 170
    :catch_93
    move-exception v4

    .line 171
    .local v4, e:Ljava/io/IOException;
    const-string v10, "SprintZone_HTTP"

    const-string v11, "IO Exception "

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 166
    .end local v4           #e:Ljava/io/IOException;
    :catchall_9c
    move-exception v10

    .line 167
    if-eqz v7, :cond_a2

    .line 169
    :try_start_9f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    .line 176
    :cond_a2
    :goto_a2
    throw v10

    .line 170
    :catch_a3
    move-exception v4

    .line 171
    .restart local v4       #e:Ljava/io/IOException;
    const-string v11, "SprintZone_HTTP"

    const-string v12, "IO Exception "

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a2

    .line 170
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #connection:Ljava/net/URLConnection;
    .restart local v6       #httpConnection:Ljava/net/HttpURLConnection;
    .restart local v8       #response:I
    .restart local v9       #url:Ljava/net/URL;
    :catch_ac
    move-exception v4

    .line 171
    .restart local v4       #e:Ljava/io/IOException;
    const-string v10, "SprintZone_HTTP"

    const-string v11, "IO Exception "

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64
.end method

.method protected static makeXmlText(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 8
    .parameter "tag"
    .parameter
    .parameter "close"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, xml:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 274
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_39

    .line 279
    :cond_23
    if-eqz p2, :cond_6d

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    :goto_38
    return-object v1

    .line 274
    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    .local v0, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 282
    .end local v0           #name:Ljava/lang/String;
    :cond_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38
.end method


# virtual methods
.method public get(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 14
    .parameter "async"
    .parameter "url"
    .parameter "user"
    .parameter "pass"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 45
    .local p5, additionalHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sprint/dsa/http/HTTPRequestHelper;->getResponseHandlerInstance()Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    .line 47
    .local v2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    if-eqz p1, :cond_15

    .line 48
    new-instance v0, Lcom/sprint/dsa/http/MyHttpClient$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sprint/dsa/http/MyHttpClient$1;-><init>(Lcom/sprint/dsa/http/MyHttpClient;Lorg/apache/http/client/ResponseHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 53
    invoke-virtual {v0}, Lcom/sprint/dsa/http/MyHttpClient$1;->start()V

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_14
    return-object v0

    .line 56
    :cond_15
    new-instance v7, Lcom/sprint/dsa/http/HTTPRequestHelper;

    invoke-direct {v7, v2}, Lcom/sprint/dsa/http/HTTPRequestHelper;-><init>(Lorg/apache/http/client/ResponseHandler;)V

    .line 57
    .local v7, helper:Lcom/sprint/dsa/http/HTTPRequestHelper;
    invoke-virtual {v7, p2, p3, p4, p5}, Lcom/sprint/dsa/http/HTTPRequestHelper;->performGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public post(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .parameter "async"
    .parameter "contentType"
    .parameter "url"
    .parameter "user"
    .parameter "pass"
    .parameter
    .parameter
    .parameter "body"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    .local p6, additionalHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sprint/dsa/http/HTTPRequestHelper;->getResponseHandlerInstance()Lorg/apache/http/client/ResponseHandler;

    move-result-object v2

    .line 67
    .local v2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    if-eqz p1, :cond_1d

    .line 68
    new-instance v0, Lcom/sprint/dsa/http/MyHttpClient$2;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sprint/dsa/http/MyHttpClient$2;-><init>(Lcom/sprint/dsa/http/MyHttpClient;Lorg/apache/http/client/ResponseHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/sprint/dsa/http/MyHttpClient$2;->start()V

    .line 75
    const/4 v11, 0x0

    .line 89
    :cond_1c
    :goto_1c
    return-object v11

    .line 77
    :cond_1d
    new-instance v3, Lcom/sprint/dsa/http/HTTPRequestHelper;

    invoke-direct {v3, v2}, Lcom/sprint/dsa/http/HTTPRequestHelper;-><init>(Lorg/apache/http/client/ResponseHandler;)V

    .local v3, helper:Lcom/sprint/dsa/http/HTTPRequestHelper;
    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 78
    invoke-virtual/range {v3 .. v10}, Lcom/sprint/dsa/http/HTTPRequestHelper;->performPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, results:Ljava/lang/String;
    if-nez v11, :cond_36

    const/4 v11, 0x0

    goto :goto_1c

    .line 84
    :cond_36
    const-string v0, "302"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 85
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, redirectUrl:Ljava/lang/String;
    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 86
    invoke-virtual/range {v3 .. v10}, Lcom/sprint/dsa/http/HTTPRequestHelper;->performPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1c
.end method

.class final Lcom/sprint/w/installer/util/UrlImageViewHelper$1;
.super Landroid/os/AsyncTask;
.source "UrlImageViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cache:Lcom/sprint/w/installer/util/UrlImageCache;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaultDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$downloads:Ljava/util/ArrayList;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/sprint/w/installer/util/UrlImageCache;Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    iput-object p4, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$defaultDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p5, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$cache:Lcom/sprint/w/installer/util/UrlImageCache;

    iput-object p6, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$downloads:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 21
    .parameter "params"

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v8, 0x0

    .line 262
    .local v8, get:Lorg/apache/http/client/methods/HttpGet;
    const/4 v15, 0x1

    :try_start_3
    invoke-static {v15}, Lcom/sprint/w/installer/util/HttpUtil;->isAuthDownload(Z)Z

    move-result v15

    if-eqz v15, :cond_142

    .line 263
    sget-object v15, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    if-nez v15, :cond_19

    .line 264
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    const-string v16, "setUrlDrawable().downloaderTask REQUESTING AUTH TOKEN FOR THE IMAGE"

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->httpAuthRequest()Ljava/lang/String;

    .line 267
    :cond_19
    sget-object v15, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    if-eqz v15, :cond_137

    .line 268
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    const-string v16, "setUrlDrawable().downloaderTask GOT THE AUTH TOKEN FOR THE IMAGE"

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->getAuthHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 270
    new-instance v14, Ljava/net/URL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "https://63.168.226.150:4747/?uri="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "UTF-8"

    invoke-static/range {v16 .. v17}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 271
    .local v14, u:Ljava/net/URL;
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setUrlDrawable().downloaderTask URL:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 272
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v14}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_75} :catch_1cd

    .line 273
    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    .local v9, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_75
    const-string v15, "x-wap-profile"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getUaProfile()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getNai()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":pcs"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 275
    .local v11, naiString:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-static {v15}, Lcom/sprint/w/installer/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, encodedNai:Ljava/lang/String;
    const-string v15, "Proxy-Authorization"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Basic "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v15, "Accept"

    const-string v16, "*/*"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v15, "Cookie"

    sget-object v16, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v15, "AppAuth"

    const-string v16, "SprintID"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_d6} :catch_1fc

    move-object v8, v9

    .line 291
    .end local v3           #encodedNai:Ljava/lang/String;
    .end local v9           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #naiString:Ljava/lang/String;
    .end local v14           #u:Ljava/net/URL;
    .restart local v8       #get:Lorg/apache/http/client/methods/HttpGet;
    :goto_d7
    :try_start_d7
    invoke-virtual {v1, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 292
    .local v12, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 293
    .local v13, status:I
    const/16 v15, 0xc8

    if-eq v13, v15, :cond_15d

    .line 294
    const/16 v15, 0x193

    if-ne v13, v15, :cond_f7

    .line 296
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    const-string v16, "setUrlDrawable().downloaderTask AUTH TOKEN EXPIRED !"

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 297
    const/4 v15, 0x0

    sput-object v15, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    .line 300
    :cond_f7
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setUrlDrawable().downloaderTask Couldn\'t download image from Server: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Reason: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " / "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 301
    const/4 v15, 0x0

    .line 317
    .end local v12           #resp:Lorg/apache/http/HttpResponse;
    .end local v13           #status:I
    :goto_136
    return-object v15

    .line 282
    :cond_137
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    const-string v16, "setUrlDrawable().downloaderTask AUTH TOKEN WAS NULL, RETURNING NULL"

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 283
    const/4 v15, 0x0

    goto :goto_136

    .line 286
    :cond_142
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    const-string v16, "setUrlDrawable().downloaderTask Dont Need AUTH TOKEN"

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 287
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_150} :catch_1cd

    .line 288
    .end local v1           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v2, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_150
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    invoke-direct {v9, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_159} :catch_1ff

    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v9       #get:Lorg/apache/http/client/methods/HttpGet;
    move-object v8, v9

    .end local v9           #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #get:Lorg/apache/http/client/methods/HttpGet;
    move-object v1, v2

    .end local v2           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    goto/16 :goto_d7

    .line 303
    .restart local v12       #resp:Lorg/apache/http/HttpResponse;
    .restart local v13       #status:I
    :cond_15d
    :try_start_15d
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 304
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setUrlDrawable().downloaderTask "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Image Content Length: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 306
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 307
    .local v10, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 308
    .local v7, fos:Ljava/io/FileOutputStream;
    invoke-static {v10, v7}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 309
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 310
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 311
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    const-string v16, "setUrlDrawable().downloaderTask   Done caching image to disk"

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 313
    .local v6, fis:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$context:Landroid/content/Context;

    #calls: Lcom/sprint/w/installer/util/UrlImageViewHelper;->loadBitmapFromStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    invoke-static {v15, v6}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$100(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_1ca} :catch_1cd

    move-result-object v15

    goto/16 :goto_136

    .line 314
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v12           #resp:Lorg/apache/http/HttpResponse;
    .end local v13           #status:I
    :catch_1cd
    move-exception v5

    .line 315
    .local v5, ex:Ljava/lang/Exception;
    :goto_1ce
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setUrlDrawable().downloaderTask Exception during Image download of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v15

    const-string v16, "setUrlDrawable().downloaderTask Exception during Image download"

    invoke-virtual/range {v15 .. v16}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 317
    const/4 v15, 0x0

    goto/16 :goto_136

    .line 314
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v9       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #u:Ljava/net/URL;
    :catch_1fc
    move-exception v5

    move-object v8, v9

    .end local v9           #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #get:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1ce

    .end local v1           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v14           #u:Ljava/net/URL;
    .restart local v2       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_1ff
    move-exception v5

    move-object v1, v2

    .end local v2           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_1ce
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 256
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "result"

    .prologue
    .line 322
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$200()Ljava/util/Hashtable;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUrlDrawable().downloaderTask.onPostExecute   Removed URL from Pending Downloads: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 325
    if-nez p1, :cond_7d

    .line 326
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v3

    const-string v4, "setUrlDrawable().downloaderTask.onPostExecute   Using Default Drawable"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 327
    iget-object v3, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$defaultDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_76

    const/4 p1, 0x0

    .line 332
    :goto_35
    iget-object v3, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$downloads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 334
    .local v1, iv:Landroid/widget/ImageView;
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$300()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    .local v2, pendingUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e

    .line 336
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUrlDrawable().downloaderTask.onPostExecute   Ignoring out of date request to update view for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    goto :goto_3b

    .line 327
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #pendingUrl:Ljava/lang/String;
    :cond_76
    iget-object v3, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$defaultDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_35

    .line 329
    :cond_7d
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v3

    const-string v4, "setUrlDrawable().downloaderTask.onPostExecute   Adding Image to the Cache"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$cache:Lcom/sprint/w/installer/util/UrlImageCache;

    iget-object v4, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/sprint/w/installer/util/UrlImageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 339
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #iv:Landroid/widget/ImageView;
    .restart local v2       #pendingUrl:Ljava/lang/String;
    :cond_8e
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v3

    const-string v4, "setUrlDrawable().downloaderTask.onPostExecute   Adding Image to the Cache"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 342
    if-eqz p1, :cond_3b

    .line 343
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v3

    const-string v4, "setUrlDrawable().downloaderTask.onPostExecute   Setting ImageView Drawable"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 344
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    #calls: Lcom/sprint/w/installer/util/UrlImageViewHelper;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Z)V
    invoke-static {v1, v3, v4}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->access$400(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Z)V

    goto :goto_3b

    .line 347
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #pendingUrl:Ljava/lang/String;
    :cond_b2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 256
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

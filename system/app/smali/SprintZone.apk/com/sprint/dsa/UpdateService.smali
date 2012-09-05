.class public Lcom/sprint/dsa/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/UpdateService$LocalBinder;,
        Lcom/sprint/dsa/UpdateService$LocalServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintZone_UpdateService"


# instance fields
.field private isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInitDb:I

.field private updateAgain:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    iput v1, p0, Lcom/sprint/dsa/UpdateService;->mInitDb:I

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sprint/dsa/UpdateService;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sprint/dsa/UpdateService;->updateAgain:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    return-void
.end method


# virtual methods
.method protected addPackIdsToUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "url"

    .prologue
    .line 181
    new-instance v0, Lcom/sprint/dsa/pack/DbPacks;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/pack/DbPacks;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, dbPacks:Lcom/sprint/dsa/pack/DbPacks;
    invoke-virtual {v0}, Lcom/sprint/dsa/pack/DbPacks;->getPackIds()[Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, packIds:[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sprint/dsa/pack/DbPacks;->close()V

    .line 185
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    :goto_27
    const-string v3, ","

    invoke-static {v3, v1}, Lcom/sprint/dsa/Util;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, urlPackIds:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "packIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    return-object p1

    .line 188
    .end local v2           #urlPackIds:Ljava/lang/String;
    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_27
.end method

.method protected downloadContent(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;)Lcom/sprint/dsa/data/Content;
    .registers 15
    .parameter "dbAdapter"
    .parameter "url"
    .parameter "currentVersion"
    .parameter "appMode"

    .prologue
    const/4 v4, 0x0

    .line 345
    const/4 v9, 0x0

    .line 347
    .local v9, xmlResults:Ljava/lang/String;
    new-instance v0, Lcom/sprint/dsa/http/MyHttpClient;

    invoke-direct {v0}, Lcom/sprint/dsa/http/MyHttpClient;-><init>()V

    .line 348
    .local v0, http:Lcom/sprint/dsa/http/MyHttpClient;
    invoke-static {p0, p1, p3}, Lcom/sprint/dsa/http/MyHttpClient;->createPostMsg(Landroid/content/Context;Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/ContentVersion;)Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, postData:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "text/plain"

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/sprint/dsa/http/MyHttpClient;->post(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 356
    if-nez v9, :cond_19

    .line 365
    :goto_18
    return-object v4

    .line 359
    :cond_19
    invoke-virtual {p1}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableReports()V

    .line 361
    invoke-virtual {p0}, Lcom/sprint/dsa/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9, p4}, Lcom/sprint/dsa/data/Content;->saveLocalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {v9, p4}, Lcom/sprint/dsa/data/ContentParser;->parseContent(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/data/Content;

    move-result-object v4

    goto :goto_18
.end method

.method protected getImageBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "imgBaseUrl"
    .parameter "imgUrl"

    .prologue
    const/4 v3, 0x0

    .line 599
    const-string v4, "res:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 601
    const-string v4, "res"

    const-string v5, "com.sprint.dsa"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, resName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprint/dsa/UpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 603
    .local v1, resId:I
    if-lez v1, :cond_23

    .line 606
    :try_start_1b
    invoke-virtual {p0}, Lcom/sprint/dsa/UpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_22} :catch_24

    move-result-object v3

    .line 616
    .end local v1           #resId:I
    .end local v2           #resName:Ljava/lang/String;
    :cond_23
    :goto_23
    return-object v3

    .line 607
    .restart local v1       #resId:I
    .restart local v2       #resName:Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "SprintZone_UpdateService"

    const-string v5, "Exception decoding icon"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 616
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #resId:I
    .end local v2           #resName:Ljava/lang/String;
    :cond_2d
    invoke-static {p1, p2, p0}, Lcom/sprint/dsa/http/MyHttpClient;->getPhotoBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_23
.end method

.method public handleCommand(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sprint.dsa.ACTION_UPDATE_STARTED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, broadcast:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    if-eqz p1, :cond_24

    const-string v4, "com.sprint.extra.LOAD_LOCAL_SZA"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 127
    .local v1, loadLocalSza:Z
    :goto_14
    if-eqz v1, :cond_26

    .line 128
    new-instance v2, Lcom/sprint/dsa/UpdateService$1;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/UpdateService$1;-><init>(Lcom/sprint/dsa/UpdateService;)V

    .line 136
    .local v2, runner:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 152
    .end local v2           #runner:Ljava/lang/Runnable;
    :goto_23
    return-void

    .end local v1           #loadLocalSza:Z
    :cond_24
    move v1, v3

    .line 126
    goto :goto_14

    .line 140
    .restart local v1       #loadLocalSza:Z
    :cond_26
    iget-object v4, p0, Lcom/sprint/dsa/UpdateService;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 143
    iget-object v3, p0, Lcom/sprint/dsa/UpdateService;->updateAgain:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_23

    .line 147
    :cond_34
    iget-object v4, p0, Lcom/sprint/dsa/UpdateService;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    if-eqz p1, :cond_43

    const-string v4, "INIT_DB"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sprint/dsa/UpdateService;->mInitDb:I

    .line 149
    :cond_43
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_23
.end method

.method protected loadLocalContent(ILjava/lang/String;)Lcom/sprint/dsa/data/Content;
    .registers 5
    .parameter "fileResId"
    .parameter "appMode"

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/sprint/dsa/UpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 331
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0, p2}, Lcom/sprint/dsa/data/ContentParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/sprint/dsa/data/Content;

    move-result-object v1

    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 116
    new-instance v0, Lcom/sprint/dsa/UpdateService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/UpdateService$LocalBinder;-><init>(Lcom/sprint/dsa/UpdateService;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/UpdateService;->handleCommand(Landroid/content/Intent;)V

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected performUpdate(Z)Z
    .registers 21
    .parameter "overrideSza"

    .prologue
    .line 208
    const/16 v16, 0x0

    .line 220
    .local v16, dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    :try_start_2
    new-instance v18, Lcom/sprint/dsa/Prefs;

    invoke-direct/range {v18 .. v19}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    .line 221
    .local v18, prefs:Lcom/sprint/dsa/Prefs;
    invoke-virtual/range {v18 .. v18}, Lcom/sprint/dsa/Prefs;->isDbInitialized()Z

    move-result v1

    if-nez v1, :cond_12

    .line 222
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sprint/dsa/UpdateService;->mInitDb:I

    .line 224
    :cond_12
    const/4 v1, 0x1

    const-string v7, "custom"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v7}, Lcom/sprint/dsa/Prefs;->getBaseUrl(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, szaUrl:Ljava/lang/String;
    const/4 v1, 0x1

    const-string v7, "promo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v7}, Lcom/sprint/dsa/Prefs;->getBaseUrl(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, szaPromoUrl:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v7, "promo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v7}, Lcom/sprint/dsa/Prefs;->getBaseUrl(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, imageUrl:Ljava/lang/String;
    new-instance v2, Lcom/sprint/dsa/data/DbAdapter;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_15a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_146

    .line 233
    .end local v16           #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    .local v2, dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    :try_start_34
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 235
    :cond_3d
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->getVersions()Lcom/sprint/dsa/data/ContentVersion;

    move-result-object v4

    .line 237
    .local v4, currentVersion:Lcom/sprint/dsa/data/ContentVersion;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sprint/dsa/UpdateService;->mInitDb:I

    if-nez v1, :cond_60

    .line 240
    const-string v1, "promo"

    .line 239
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v4, v1}, Lcom/sprint/dsa/UpdateService;->downloadContent(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;)Lcom/sprint/dsa/data/Content;

    move-result-object v3

    .line 245
    .local v3, content:Lcom/sprint/dsa/data/Content;
    :goto_4f
    if-eqz v3, :cond_9e

    .line 247
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sprint/dsa/UpdateService;->updateSettings(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;)Z
    :try_end_56
    .catchall {:try_start_34 .. :try_end_56} :catchall_163
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_56} :catch_165

    move-result v1

    if-nez v1, :cond_6c

    .line 321
    :cond_59
    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 247
    :cond_5e
    const/4 v1, 0x0

    .line 318
    .end local v3           #content:Lcom/sprint/dsa/data/Content;
    .end local v4           #currentVersion:Lcom/sprint/dsa/data/ContentVersion;
    .end local v5           #szaPromoUrl:Ljava/lang/String;
    .end local v6           #imageUrl:Ljava/lang/String;
    .end local v11           #szaUrl:Ljava/lang/String;
    .end local v18           #prefs:Lcom/sprint/dsa/Prefs;
    :goto_5f
    return v1

    .line 242
    .restart local v4       #currentVersion:Lcom/sprint/dsa/data/ContentVersion;
    .restart local v5       #szaPromoUrl:Ljava/lang/String;
    .restart local v6       #imageUrl:Ljava/lang/String;
    .restart local v11       #szaUrl:Ljava/lang/String;
    .restart local v18       #prefs:Lcom/sprint/dsa/Prefs;
    :cond_60
    const v1, 0x7f040002

    :try_start_63
    const-string v7, "promo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Lcom/sprint/dsa/UpdateService;->loadLocalContent(ILjava/lang/String;)Lcom/sprint/dsa/data/Content;

    move-result-object v3

    .restart local v3       #content:Lcom/sprint/dsa/data/Content;
    goto :goto_4f

    .line 248
    :cond_6c
    const-string v7, "promo"

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/sprint/dsa/UpdateService;->updateContent(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 250
    const-string v1, "promo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sprint/dsa/UpdateService;->updatePages(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    move-object/from16 v1, p0

    .line 252
    invoke-virtual/range {v1 .. v6}, Lcom/sprint/dsa/UpdateService;->updateAlerts(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 256
    iget-wide v7, v3, Lcom/sprint/dsa/data/Content;->mAppVer:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Lcom/sprint/dsa/Prefs;->setUpgradeVersion(J)V

    .line 257
    iget-object v1, v3, Lcom/sprint/dsa/data/Content;->mUpgradePath:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/Prefs;->setUpgradePath(Ljava/lang/String;)V

    .line 258
    iget-boolean v1, v3, Lcom/sprint/dsa/data/Content;->mOptional:Z

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/Prefs;->setUpgradeOptional(Z)V

    .line 260
    :cond_9e
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 263
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v1

    if-nez v1, :cond_aa

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 265
    :cond_aa
    if-eqz v3, :cond_b8

    iget-object v1, v3, Lcom/sprint/dsa/data/Content;->mPacks:Lcom/sprint/dsa/pack/Packs;

    if-eqz v1, :cond_b8

    iget-object v1, v3, Lcom/sprint/dsa/data/Content;->mPacks:Lcom/sprint/dsa/pack/Packs;

    invoke-virtual {v1}, Lcom/sprint/dsa/pack/Packs;->empty()Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 268
    :cond_b8
    const v1, 0x7f040002

    const-string v7, "promo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Lcom/sprint/dsa/UpdateService;->loadLocalContent(ILjava/lang/String;)Lcom/sprint/dsa/data/Content;

    move-result-object v3

    .line 272
    :cond_c3
    if-eqz v3, :cond_d1

    iget-object v1, v3, Lcom/sprint/dsa/data/Content;->mPacks:Lcom/sprint/dsa/pack/Packs;

    if-eqz v1, :cond_d1

    move-object/from16 v1, p0

    .line 274
    invoke-virtual/range {v1 .. v6}, Lcom/sprint/dsa/UpdateService;->updatePacks(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 277
    :cond_d1
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 280
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v1

    if-nez v1, :cond_dd

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 281
    :cond_dd
    if-nez p1, :cond_13a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sprint/dsa/UpdateService;->mInitDb:I

    if-nez v1, :cond_13a

    sget-boolean v1, Lcom/sprint/dsa/Util;->USE_LOCAL_SZA:Z

    if-nez v1, :cond_13a

    .line 283
    const-string v1, "custom"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v4, v1}, Lcom/sprint/dsa/UpdateService;->downloadContent(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;)Lcom/sprint/dsa/data/Content;

    move-result-object v3

    .line 288
    :goto_f1
    if-eqz v3, :cond_117

    .line 290
    const-string v13, "custom"

    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v12, v11

    move/from16 v14, p1

    invoke-virtual/range {v7 .. v14}, Lcom/sprint/dsa/UpdateService;->updateContent(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 292
    const-string v1, "custom"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sprint/dsa/UpdateService;->updatePages(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 294
    const-string v1, "custom"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sprint/dsa/UpdateService;->updateDiagnostics(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 297
    :cond_117
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 301
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v1

    if-nez v1, :cond_123

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 304
    :cond_123
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->updateLastUpdate()V

    .line 306
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->getAlerts()Lcom/sprint/dsa/data/Alerts;

    move-result-object v15

    .line 307
    .local v15, alerts:Lcom/sprint/dsa/data/Alerts;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v2}, Lcom/sprint/dsa/data/Alerts;->cleanAlerts(Landroid/content/Context;Lcom/sprint/dsa/data/DbAdapter;)V

    .line 310
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V
    :try_end_132
    .catchall {:try_start_63 .. :try_end_132} :catchall_163
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_132} :catch_165

    .line 321
    if-eqz v2, :cond_137

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 315
    :cond_137
    const/4 v1, 0x1

    goto/16 :goto_5f

    .line 285
    .end local v15           #alerts:Lcom/sprint/dsa/data/Alerts;
    :cond_13a
    const v1, 0x7f040001

    :try_start_13d
    const-string v7, "custom"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Lcom/sprint/dsa/UpdateService;->loadLocalContent(ILjava/lang/String;)Lcom/sprint/dsa/data/Content;
    :try_end_144
    .catchall {:try_start_13d .. :try_end_144} :catchall_163
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_144} :catch_165

    move-result-object v3

    goto :goto_f1

    .line 316
    .end local v2           #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    .end local v3           #content:Lcom/sprint/dsa/data/Content;
    .end local v4           #currentVersion:Lcom/sprint/dsa/data/ContentVersion;
    .end local v5           #szaPromoUrl:Ljava/lang/String;
    .end local v6           #imageUrl:Ljava/lang/String;
    .end local v11           #szaUrl:Ljava/lang/String;
    .end local v18           #prefs:Lcom/sprint/dsa/Prefs;
    .restart local v16       #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    :catch_146
    move-exception v17

    move-object/from16 v2, v16

    .line 317
    .end local v16           #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    .restart local v2       #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    .local v17, ex:Ljava/lang/Exception;
    :goto_149
    :try_start_149
    const-string v1, "SprintZone_UpdateService"

    const-string v7, "UpdateService.performUpdate(): Error performing update..."

    move-object/from16 v0, v17

    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_152
    .catchall {:try_start_149 .. :try_end_152} :catchall_163

    .line 321
    if-eqz v2, :cond_157

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 318
    :cond_157
    const/4 v1, 0x0

    goto/16 :goto_5f

    .line 320
    .end local v2           #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    .end local v17           #ex:Ljava/lang/Exception;
    .restart local v16       #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    :catchall_15a
    move-exception v1

    move-object/from16 v2, v16

    .line 321
    .end local v16           #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    .restart local v2       #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    :goto_15d
    if-eqz v2, :cond_162

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 324
    :cond_162
    throw v1

    .line 320
    :catchall_163
    move-exception v1

    goto :goto_15d

    .line 316
    .restart local v5       #szaPromoUrl:Ljava/lang/String;
    .restart local v6       #imageUrl:Ljava/lang/String;
    .restart local v11       #szaUrl:Ljava/lang/String;
    .restart local v18       #prefs:Lcom/sprint/dsa/Prefs;
    :catch_165
    move-exception v17

    goto :goto_149
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-virtual {p0, v3}, Lcom/sprint/dsa/UpdateService;->performUpdate(Z)Z

    move-result v1

    .line 158
    .local v1, success:Z
    iget-object v2, p0, Lcom/sprint/dsa/UpdateService;->updateAgain:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 162
    :cond_d
    iget-object v2, p0, Lcom/sprint/dsa/UpdateService;->updateAgain:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/UpdateService;->scheduleUpdate(Z)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sprint.dsa.ACTION_UPDATE_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, broadcast:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    iget-object v2, p0, Lcom/sprint/dsa/UpdateService;->updateAgain:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 170
    iget-object v2, p0, Lcom/sprint/dsa/UpdateService;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/sprint/dsa/UpdateService;->stopSelf()V

    .line 173
    return-void
.end method

.method protected scheduleUpdate(Z)V
    .registers 11
    .parameter "immediately"

    .prologue
    .line 374
    :try_start_0
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 376
    new-instance v4, Lcom/sprint/dsa/Prefs;

    invoke-direct {v4, p0}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    .line 377
    .local v4, prefs:Lcom/sprint/dsa/Prefs;
    const-wide/16 v2, 0x0

    .line 378
    .local v2, poll:J
    if-eqz p1, :cond_3c

    .line 379
    const-wide/16 v2, 0x7d0

    .line 386
    :goto_11
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_3b

    .line 387
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v5, updateIntent:Landroid/content/Intent;
    const-class v6, Lcom/sprint/dsa/UpdateService;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 389
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 390
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 391
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 392
    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v2

    invoke-virtual {v0, v6, v7, v8, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 398
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    .end local v2           #poll:J
    .end local v4           #prefs:Lcom/sprint/dsa/Prefs;
    .end local v5           #updateIntent:Landroid/content/Intent;
    :cond_3b
    :goto_3b
    return-void

    .line 380
    .restart local v2       #poll:J
    .restart local v4       #prefs:Lcom/sprint/dsa/Prefs;
    :cond_3c
    iget v6, p0, Lcom/sprint/dsa/UpdateService;->mInitDb:I

    if-lez v6, :cond_49

    .line 381
    const-wide/16 v2, 0x3a98

    .line 382
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sprint/dsa/Prefs;->setDbInit(Z)V

    goto :goto_11

    .line 395
    .end local v2           #poll:J
    .end local v4           #prefs:Lcom/sprint/dsa/Prefs;
    :catch_47
    move-exception v6

    goto :goto_3b

    .line 384
    .restart local v2       #poll:J
    .restart local v4       #prefs:Lcom/sprint/dsa/Prefs;
    :cond_49
    invoke-virtual {v4}, Lcom/sprint/dsa/Prefs;->getPollInterval()J
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_47

    move-result-wide v2

    goto :goto_11
.end method

.method protected updateAlerts(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter "dbAdapter"
    .parameter "content"
    .parameter "currentVersion"
    .parameter "baseUrl"
    .parameter "imgBaseUrl"

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 444
    .local v1, alerts:Lcom/sprint/dsa/data/Alerts;
    :try_start_1
    iget-object v6, p2, Lcom/sprint/dsa/data/Content;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    invoke-virtual {v6}, Lcom/sprint/dsa/data/Alerts;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_22

    .line 445
    iget-object v6, p3, Lcom/sprint/dsa/data/ContentVersion;->mAlertsVer:Ljava/lang/String;

    iget-object v7, p2, Lcom/sprint/dsa/data/Content;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    .line 446
    invoke-virtual {v7}, Lcom/sprint/dsa/data/Alerts;->getVersion()Ljava/lang/String;

    move-result-object v7

    .line 445
    invoke-static {v6, v7}, Lcom/sprint/dsa/data/ContentVersion;->isOlder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 448
    invoke-virtual {p2}, Lcom/sprint/dsa/data/Content;->detachAlerts()Lcom/sprint/dsa/data/Alerts;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alerts;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lcom/sprint/dsa/data/Alerts;->updateAlertVersion(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_3e

    .line 458
    :cond_22
    if-eqz v1, :cond_3c

    .line 459
    invoke-virtual {p1}, Lcom/sprint/dsa/data/DbAdapter;->getSettings()Lcom/sprint/dsa/SzSettings;

    move-result-object v5

    .line 460
    .local v5, settings:Lcom/sprint/dsa/SzSettings;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alerts;->getAllAlerts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_54

    .line 470
    invoke-virtual {v1, v5}, Lcom/sprint/dsa/data/Alerts;->filter(Lcom/sprint/dsa/SzSettings;)V

    .line 473
    invoke-static {p0, v1, p1}, Lcom/sprint/dsa/Notifier;->sendNotification(Landroid/content/Context;Lcom/sprint/dsa/data/Alerts;Lcom/sprint/dsa/data/DbAdapter;)V

    .line 476
    .end local v5           #settings:Lcom/sprint/dsa/SzSettings;
    :cond_3c
    const/4 v6, 0x1

    :goto_3d
    return v6

    .line 451
    :catch_3e
    move-exception v2

    .line 452
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "EXCEPTION updateDatabase alerts - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, msg:Ljava/lang/String;
    const/4 v6, 0x0

    goto :goto_3d

    .line 460
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #msg:Ljava/lang/String;
    .restart local v5       #settings:Lcom/sprint/dsa/SzSettings;
    :cond_54
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/Alert;

    .line 461
    .local v0, alert:Lcom/sprint/dsa/data/Alert;
    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6b

    .line 462
    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {p5, v7, p0}, Lcom/sprint/dsa/http/MyHttpClient;->getPhotoBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 463
    .local v3, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Lcom/sprint/dsa/data/Alert;->setIcon(Landroid/graphics/Bitmap;)V

    .line 467
    .end local v3           #icon:Landroid/graphics/Bitmap;
    :cond_6b
    invoke-virtual {v1, p1, v0}, Lcom/sprint/dsa/data/Alerts;->insertAlert(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Alert;)V

    goto :goto_30
.end method

.method protected updateContent(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 20
    .parameter "dbAdapter"
    .parameter "content"
    .parameter "currentVersion"
    .parameter "baseUrl"
    .parameter "imgBaseUrl"
    .parameter "appMode"
    .parameter "override"

    .prologue
    .line 492
    const/4 v7, 0x0

    .line 495
    .local v7, promos:Lcom/sprint/dsa/data/PageContent;
    :try_start_1
    iget-object v9, p2, Lcom/sprint/dsa/data/Content;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v9}, Lcom/sprint/dsa/data/PageContent;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2c

    .line 496
    const-string v9, "promo"

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    iget-object v8, p3, Lcom/sprint/dsa/data/ContentVersion;->mPromosVer:Ljava/lang/String;

    .line 498
    .local v8, version:Ljava/lang/String;
    :goto_15
    if-nez p7, :cond_23

    iget-object v9, p2, Lcom/sprint/dsa/data/Content;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v9}, Lcom/sprint/dsa/data/PageContent;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sprint/dsa/data/ContentVersion;->isOlder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 501
    :cond_23
    invoke-virtual {p2}, Lcom/sprint/dsa/data/Content;->detachPromos()Lcom/sprint/dsa/data/PageContent;

    move-result-object v7

    .line 502
    move-object/from16 v0, p6

    invoke-virtual {v7, p1, v0}, Lcom/sprint/dsa/data/PageContent;->saveToDb(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    .line 506
    .end local v8           #version:Ljava/lang/String;
    :cond_2c
    const-string v9, "promo"

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9e

    if-eqz v7, :cond_9e

    .line 510
    invoke-virtual {v7}, Lcom/sprint/dsa/data/PageContent;->getAllGroups()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_40
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4b

    .line 530
    :cond_46
    const/4 v9, 0x1

    .line 534
    :goto_47
    return v9

    .line 497
    :cond_48
    iget-object v8, p3, Lcom/sprint/dsa/data/ContentVersion;->mPagesVer:Ljava/lang/String;

    goto :goto_15

    .line 510
    :cond_4b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/dsa/data/CategoryItem;

    .line 511
    .local v3, group:Lcom/sprint/dsa/data/CategoryItem;
    invoke-virtual {v3}, Lcom/sprint/dsa/data/CategoryItem;->getPromos()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_59
    :goto_59
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_40

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/dsa/data/FeatureItem;

    .line 512
    .local v5, item:Lcom/sprint/dsa/data/FeatureItem;
    invoke-virtual {v5}, Lcom/sprint/dsa/data/FeatureItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v11

    if-nez v11, :cond_59

    invoke-virtual {v5}, Lcom/sprint/dsa/data/FeatureItem;->getImageUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_59

    .line 513
    invoke-virtual {v5}, Lcom/sprint/dsa/data/FeatureItem;->getImageUrl()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-static {v0, v11, p0}, Lcom/sprint/dsa/http/MyHttpClient;->getPhotoBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 514
    .local v4, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v4}, Lcom/sprint/dsa/data/FeatureItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 515
    invoke-virtual {v5}, Lcom/sprint/dsa/data/FeatureItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_59

    invoke-virtual {p1, v5}, Lcom/sprint/dsa/data/DbAdapter;->updateFeatureIcon(Lcom/sprint/dsa/data/FeatureItem;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_87} :catch_88

    goto :goto_59

    .line 531
    .end local v3           #group:Lcom/sprint/dsa/data/CategoryItem;
    .end local v4           #icon:Landroid/graphics/Bitmap;
    .end local v5           #item:Lcom/sprint/dsa/data/FeatureItem;
    :catch_88
    move-exception v2

    .line 532
    .local v2, e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "UpdateService.updateContent(): ERROR: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 534
    .local v6, msg:Ljava/lang/String;
    const/4 v9, 0x0

    goto :goto_47

    .line 520
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #msg:Ljava/lang/String;
    :cond_9e
    :try_start_9e
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/sprint/dsa/data/DbAdapter;->getAllItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 521
    .local v1, allFeatures:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/dsa/data/FeatureItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a8
    :goto_a8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/dsa/data/FeatureItem;

    .line 522
    .restart local v5       #item:Lcom/sprint/dsa/data/FeatureItem;
    invoke-virtual {v5}, Lcom/sprint/dsa/data/FeatureItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_a8

    invoke-virtual {v5}, Lcom/sprint/dsa/data/FeatureItem;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a8

    .line 523
    invoke-virtual {v5}, Lcom/sprint/dsa/data/FeatureItem;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-static {v0, v10, p0}, Lcom/sprint/dsa/http/MyHttpClient;->getPhotoBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 524
    .restart local v4       #icon:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v4}, Lcom/sprint/dsa/data/FeatureItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 525
    invoke-virtual {v5}, Lcom/sprint/dsa/data/FeatureItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_a8

    invoke-virtual {p1, v5}, Lcom/sprint/dsa/data/DbAdapter;->updateFeatureIcon(Lcom/sprint/dsa/data/FeatureItem;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_d6} :catch_88

    goto :goto_a8
.end method

.method protected updateDiagnostics(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;)Z
    .registers 11
    .parameter "dbAdapter"
    .parameter "content"
    .parameter "currentVersion"
    .parameter "appMode"

    .prologue
    const/4 v2, 0x1

    .line 624
    :try_start_1
    iget-object v3, p2, Lcom/sprint/dsa/data/Content;->mDiagnosticStubs:Lcom/sprint/dsa/diagnostics/DiagnosticStubs;

    invoke-virtual {v3}, Lcom/sprint/dsa/diagnostics/DiagnosticStubs;->getCount()I

    move-result v3

    if-lez v3, :cond_13

    .line 625
    invoke-virtual {p1}, Lcom/sprint/dsa/data/DbAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p2, Lcom/sprint/dsa/data/Content;->mDiagnosticStubs:Lcom/sprint/dsa/diagnostics/DiagnosticStubs;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStubs;Z)V

    .line 627
    :cond_13
    iget-object v3, p2, Lcom/sprint/dsa/data/Content;->mDiagnosticGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    invoke-virtual {v3}, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->getCount()I

    move-result v3

    if-lez v3, :cond_25

    .line 628
    invoke-virtual {p1}, Lcom/sprint/dsa/data/DbAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p2, Lcom/sprint/dsa/data/Content;->mDiagnosticGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticGroups;Z)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    .line 636
    :cond_25
    :goto_25
    return v2

    .line 633
    :catch_26
    move-exception v0

    .line 634
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "UpdateService error updating Diagnostics."

    .line 636
    .local v1, msg:Ljava/lang/String;
    const/4 v2, 0x0

    goto :goto_25
.end method

.method protected updatePacks(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "dbAdapter"
    .parameter "content"
    .parameter "currentVersion"
    .parameter "baseUrl"
    .parameter "imgBaseUrl"

    .prologue
    .line 575
    :try_start_0
    iget-object v4, p2, Lcom/sprint/dsa/data/Content;->mPacks:Lcom/sprint/dsa/pack/Packs;

    invoke-virtual {v4}, Lcom/sprint/dsa/pack/Packs;->all()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 587
    invoke-virtual {p1}, Lcom/sprint/dsa/data/DbAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget-object v5, p2, Lcom/sprint/dsa/data/Content;->mPacks:Lcom/sprint/dsa/pack/Packs;

    invoke-static {v4, v5}, Lcom/sprint/dsa/pack/DbPacks;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Packs;)V

    .line 589
    const/4 v4, 0x1

    .line 594
    :goto_1a
    return v4

    .line 575
    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/dsa/pack/Pack;

    .line 576
    .local v3, pack:Lcom/sprint/dsa/pack/Pack;
    iget-object v5, v3, Lcom/sprint/dsa/pack/Pack;->alertIcon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_31

    iget-object v5, v3, Lcom/sprint/dsa/pack/Pack;->alertIconUrl:Ljava/lang/String;

    if-eqz v5, :cond_31

    .line 577
    iget-object v5, v3, Lcom/sprint/dsa/pack/Pack;->alertIconUrl:Ljava/lang/String;

    invoke-virtual {p0, p5, v5}, Lcom/sprint/dsa/UpdateService;->getImageBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 578
    .local v1, icon:Landroid/graphics/Bitmap;
    iput-object v1, v3, Lcom/sprint/dsa/pack/Pack;->alertIcon:Landroid/graphics/Bitmap;

    .line 580
    .end local v1           #icon:Landroid/graphics/Bitmap;
    :cond_31
    iget-object v5, v3, Lcom/sprint/dsa/pack/Pack;->backgroundImage:Landroid/graphics/Bitmap;

    if-nez v5, :cond_a

    iget-object v5, v3, Lcom/sprint/dsa/pack/Pack;->backgroundImageUrl:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 581
    iget-object v5, v3, Lcom/sprint/dsa/pack/Pack;->backgroundImageUrl:Ljava/lang/String;

    invoke-virtual {p0, p5, v5}, Lcom/sprint/dsa/UpdateService;->getImageBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 582
    .restart local v1       #icon:Landroid/graphics/Bitmap;
    iput-object v1, v3, Lcom/sprint/dsa/pack/Pack;->backgroundImage:Landroid/graphics/Bitmap;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_a

    .line 591
    .end local v1           #icon:Landroid/graphics/Bitmap;
    .end local v3           #pack:Lcom/sprint/dsa/pack/Pack;
    :catch_42
    move-exception v0

    .line 592
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "UpdateService error updating Packages."

    .line 594
    .local v2, msg:Ljava/lang/String;
    const/4 v4, 0x0

    goto :goto_1a
.end method

.method protected updatePages(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;Ljava/lang/String;)Z
    .registers 10
    .parameter "dbAdapter"
    .parameter "content"
    .parameter "currentVersion"
    .parameter "appMode"

    .prologue
    .line 412
    const/4 v2, 0x0

    .line 415
    .local v2, pages:Lcom/sprint/dsa/data/Pages;
    :try_start_1
    iget-object v3, p2, Lcom/sprint/dsa/data/Content;->mPages:Lcom/sprint/dsa/data/Pages;

    invoke-virtual {v3}, Lcom/sprint/dsa/data/Pages;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 417
    invoke-virtual {p2}, Lcom/sprint/dsa/data/Content;->detachPages()Lcom/sprint/dsa/data/Pages;

    move-result-object v2

    .line 418
    invoke-virtual {v2, p1, p4}, Lcom/sprint/dsa/data/Pages;->saveToDb(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    .line 420
    :cond_10
    const/4 v3, 0x1

    .line 424
    :goto_11
    return v3

    .line 421
    :catch_12
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EXCEPTION updateDatabase pages - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, msg:Ljava/lang/String;
    const/4 v3, 0x0

    goto :goto_11
.end method

.method protected updateSettings(Lcom/sprint/dsa/data/DbAdapter;Lcom/sprint/dsa/data/Content;Lcom/sprint/dsa/data/ContentVersion;)Z
    .registers 9
    .parameter "dbAdapter"
    .parameter "content"
    .parameter "currentVersion"

    .prologue
    .line 548
    invoke-virtual {p1}, Lcom/sprint/dsa/data/DbAdapter;->getSettings()Lcom/sprint/dsa/SzSettings;

    move-result-object v2

    .line 549
    .local v2, settings:Lcom/sprint/dsa/SzSettings;
    iget-object v3, p3, Lcom/sprint/dsa/data/ContentVersion;->mSettingsVer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/SzSettings;->setVersion(Ljava/lang/String;)V

    .line 554
    :try_start_9
    iget-object v3, p2, Lcom/sprint/dsa/data/Content;->mSettings:Lcom/sprint/dsa/SzSettings;

    invoke-virtual {v3}, Lcom/sprint/dsa/SzSettings;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 555
    iget-object v3, p3, Lcom/sprint/dsa/data/ContentVersion;->mSettingsVer:Ljava/lang/String;

    iget-object v4, p2, Lcom/sprint/dsa/data/Content;->mSettings:Lcom/sprint/dsa/SzSettings;

    .line 556
    invoke-virtual {v4}, Lcom/sprint/dsa/SzSettings;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 555
    invoke-static {v3, v4}, Lcom/sprint/dsa/data/ContentVersion;->isOlder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 558
    iget-object v3, p2, Lcom/sprint/dsa/data/Content;->mSettings:Lcom/sprint/dsa/SzSettings;

    invoke-virtual {v3, v2}, Lcom/sprint/dsa/SzSettings;->updateSettings(Lcom/sprint/dsa/SzSettings;)V

    .line 559
    invoke-virtual {p2}, Lcom/sprint/dsa/data/Content;->detachSettings()Lcom/sprint/dsa/SzSettings;

    move-result-object v2

    .line 560
    invoke-virtual {v2, p1}, Lcom/sprint/dsa/SzSettings;->saveToDb(Lcom/sprint/dsa/data/DbAdapter;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2d

    .line 568
    :cond_2b
    const/4 v3, 0x1

    :goto_2c
    return v3

    .line 562
    :catch_2d
    move-exception v0

    .line 563
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EXCEPTION updateSettingsDb - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, msg:Ljava/lang/String;
    const/4 v3, 0x0

    goto :goto_2c
.end method

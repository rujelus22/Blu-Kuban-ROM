.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method

.method private getDirectoriesExceptDuplicatedPath([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "directories"
    .parameter "externalSdPath"

    .prologue
    .line 343
    array-length v1, p1

    .line 344
    .local v1, length:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 350
    .end local p1
    :goto_4
    return-object p1

    .line 345
    .restart local p1
    :cond_5
    const/4 v4, 0x0

    aget-object v2, p1, v4

    .line 346
    .local v2, primaryDirectory:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v3, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    if-eqz p2, :cond_15

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_15
    const/4 v0, 0x1

    .local v0, i:I
    :goto_16
    if-ge v0, v1, :cond_28

    aget-object v4, p1, v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 350
    :cond_28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object p1, v4

    goto :goto_4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    .line 283
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 284
    .local v0, arguments:Landroid/os/Bundle;
    const-string v8, "filepath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, filePath:Ljava/lang/String;
    if-eqz v4, :cond_33

    .line 288
    :try_start_c
    const-string v8, "listener"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 289
    .local v1, binder:Landroid/os/IBinder;
    if-nez v1, :cond_2e

    const/4 v5, 0x0

    .line 291
    .local v5, listener:Landroid/media/IMediaScannerListener;
    :goto_15
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v9, "mimetype"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v8, v4, v9}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 292
    .local v6, uri:Landroid/net/Uri;
    if-eqz v5, :cond_26

    .line 293
    invoke-interface {v5, v4, v6}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_dd

    .line 338
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v5           #listener:Landroid/media/IMediaScannerListener;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_26
    :goto_26
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 339
    return-void

    .line 289
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_2e
    :try_start_2e
    invoke-static {v1}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v5

    goto :goto_15

    .line 296
    .end local v1           #binder:Landroid/os/IBinder;
    :cond_33
    const-string v8, "volume"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, volume:Ljava/lang/String;
    const/4 v2, 0x0

    .line 300
    .local v2, directories:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v9, "externalSdPath"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/providers/media/MediaScannerService;->mExternalStorageSdPath:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/providers/media/MediaScannerService;->access$202(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mExternalStorageSdPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_63

    const-string v8, "internal"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 302
    const-string v8, "MediaScannerService"

    const-string v9, "Message from receiver does not contain ExternalStorageSdPath! Set manually."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v9, "/mnt/sdcard/external_sd"

    #setter for: Lcom/android/providers/media/MediaScannerService;->mExternalStorageSdPath:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/providers/media/MediaScannerService;->access$202(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    :cond_63
    const-string v8, "internal"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 308
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/media"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 326
    .restart local v2       #directories:[Ljava/lang/String;
    :cond_88
    :goto_88
    if-eqz v2, :cond_26

    .line 327
    const-string v8, "MediaScannerService"

    const-string v9, "!@begin of Mediascannerservice"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v8, "MediaScannerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start scanning volume "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v2, v7}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v8, "MediaScannerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "done scanning volume "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v8, "MediaScannerService"

    const-string v9, "!@end of Mediascannerservice"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_db} :catch_dd

    goto/16 :goto_26

    .line 334
    .end local v2           #directories:[Ljava/lang/String;
    .end local v7           #volume:Ljava/lang/String;
    :catch_dd
    move-exception v3

    .line 335
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "MediaScannerService"

    const-string v9, "Exception in handleMessage"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 312
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #directories:[Ljava/lang/String;
    .restart local v7       #volume:Ljava/lang/String;
    :cond_e7
    :try_start_e7
    const-string v8, "external"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f7

    const-string v8, "external/metadataupdate"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_108

    .line 316
    :cond_f7
    iget-object v8, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mExternalStorageSdPath:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->getDirectoriesExceptDuplicatedPath([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_88

    .line 319
    :cond_108
    const-string v8, "external/sd"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 321
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mExternalStorageSdPath:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 322
    .restart local v2       #directories:[Ljava/lang/String;
    const-string v7, "external"
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_11e} :catch_dd

    goto/16 :goto_88
.end method

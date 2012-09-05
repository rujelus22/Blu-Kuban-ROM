.class Lcom/android/browser/Controller$Download;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Download"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mPrivateBrowsing:Z

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 4
    .parameter "activity"
    .parameter "toDownload"
    .parameter "privateBrowsing"

    .prologue
    .line 2521
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2522
    iput-object p1, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    .line 2523
    iput-object p2, p0, Lcom/android/browser/Controller$Download;->mText:Ljava/lang/String;

    .line 2524
    iput-boolean p3, p0, Lcom/android/browser/Controller$Download;->mPrivateBrowsing:Z

    .line 2525
    return-void
.end method

.method private getTarget(Lcom/android/browser/DataUri;)Ljava/io/File;
    .registers 12
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 2570
    const/4 v0, 0x0

    .line 2571
    .local v0, dir:Ljava/io/File;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v7

    if-ne v7, v9, :cond_94

    .line 2572
    const-string v7, "Controller"

    const-string v8, "isDownloadInternalMemory : true"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/browser/Controller;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2579
    .restart local v0       #dir:Ljava/io/File;
    :cond_35
    :goto_35
    invoke-static {}, Lcom/android/browser/Controller;->GetAvailableExternalMemorySize()Z

    move-result v7

    if-ne v7, v9, :cond_c9

    .line 2580
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_44

    .line 2581
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2588
    :cond_44
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd-HH-mm-ss-"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2589
    .local v2, format:Ljava/text/DateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 2590
    .local v5, nameBase:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/DataUri;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 2591
    .local v3, mimeType:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 2592
    .local v4, mimeTypeMap:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v4, v3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2593
    .local v1, extension:Ljava/lang/String;
    if-nez v1, :cond_7c

    .line 2594
    const-string v7, "Controller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown mime type in data URI"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    const-string v1, "dat"

    .line 2597
    :cond_7c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2598
    invoke-static {v5, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 2599
    .end local v1           #extension:Ljava/lang/String;
    .end local v2           #format:Ljava/text/DateFormat;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #mimeTypeMap:Landroid/webkit/MimeTypeMap;
    .end local v5           #nameBase:Ljava/lang/String;
    :goto_93
    return-object v6

    .line 2575
    :cond_94
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v7

    if-nez v7, :cond_35

    .line 2576
    const-string v7, "Controller"

    const-string v8, "isDownloadInternalMemory : false"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/browser/Controller;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #dir:Ljava/io/File;
    goto/16 :goto_35

    .line 2585
    :cond_c9
    const/4 v6, 0x0

    goto :goto_93
.end method

.method private saveDataUri()V
    .registers 15

    .prologue
    const/4 v2, 0x1

    .line 2531
    const/4 v10, 0x0

    .line 2533
    .local v10, outputStream:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v13, Lcom/android/browser/DataUri;

    iget-object v1, p0, Lcom/android/browser/Controller$Download;->mText:Ljava/lang/String;

    invoke-direct {v13, v1}, Lcom/android/browser/DataUri;-><init>(Ljava/lang/String;)V

    .line 2534
    .local v13, uri:Lcom/android/browser/DataUri;
    invoke-direct {p0, v13}, Lcom/android/browser/Controller$Download;->getTarget(Lcom/android/browser/DataUri;)Ljava/io/File;

    move-result-object v12

    .line 2536
    .local v12, target:Ljava/io/File;
    invoke-static {}, Lcom/android/browser/Controller;->GetAvailableExternalMemorySize()Z

    move-result v1

    if-ne v1, v2, :cond_5e

    .line 2537
    iget-object v1, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0131

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2538
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_82
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_72

    .line 2539
    .end local v10           #outputStream:Ljava/io/FileOutputStream;
    .local v11, outputStream:Ljava/io/FileOutputStream;
    :try_start_25
    invoke-virtual {v13}, Lcom/android/browser/DataUri;->getData()[B

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2540
    iget-object v1, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 2542
    .local v0, manager:Landroid/app/DownloadManager;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v13}, Lcom/android/browser/DataUri;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/browser/DataUri;->getData()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->secAddCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_57
    .catchall {:try_start_25 .. :try_end_57} :catchall_8d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_57} :catch_90

    move-object v10, v11

    .line 2554
    .end local v0           #manager:Landroid/app/DownloadManager;
    .end local v11           #outputStream:Ljava/io/FileOutputStream;
    .restart local v10       #outputStream:Ljava/io/FileOutputStream;
    :cond_58
    :goto_58
    if-eqz v10, :cond_5d

    .line 2556
    :try_start_5a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_89

    .line 2562
    .end local v12           #target:Ljava/io/File;
    .end local v13           #uri:Lcom/android/browser/DataUri;
    :cond_5d
    :goto_5d
    return-void

    .line 2547
    .restart local v12       #target:Ljava/io/File;
    .restart local v13       #uri:Lcom/android/browser/DataUri;
    :cond_5e
    :try_start_5e
    invoke-static {}, Lcom/android/browser/Controller;->GetAvailableExternalMemorySize()Z

    move-result v1

    if-nez v1, :cond_58

    .line 2548
    iget-object v1, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0136

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_71
    .catchall {:try_start_5e .. :try_end_71} :catchall_82
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_71} :catch_72

    goto :goto_58

    .line 2551
    .end local v12           #target:Ljava/io/File;
    .end local v13           #uri:Lcom/android/browser/DataUri;
    :catch_72
    move-exception v9

    .line 2552
    .local v9, e:Ljava/io/IOException;
    :goto_73
    :try_start_73
    const-string v1, "Controller"

    const-string v2, "Could not save data URL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_82

    .line 2554
    if-eqz v10, :cond_5d

    .line 2556
    :try_start_7c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_5d

    .line 2557
    :catch_80
    move-exception v1

    goto :goto_5d

    .line 2554
    .end local v9           #e:Ljava/io/IOException;
    :catchall_82
    move-exception v1

    :goto_83
    if-eqz v10, :cond_88

    .line 2556
    :try_start_85
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_8b

    .line 2559
    :cond_88
    :goto_88
    throw v1

    .line 2557
    .restart local v12       #target:Ljava/io/File;
    .restart local v13       #uri:Lcom/android/browser/DataUri;
    :catch_89
    move-exception v1

    goto :goto_5d

    .end local v12           #target:Ljava/io/File;
    .end local v13           #uri:Lcom/android/browser/DataUri;
    :catch_8b
    move-exception v2

    goto :goto_88

    .line 2554
    .end local v10           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #outputStream:Ljava/io/FileOutputStream;
    .restart local v12       #target:Ljava/io/File;
    .restart local v13       #uri:Lcom/android/browser/DataUri;
    :catchall_8d
    move-exception v1

    move-object v10, v11

    .end local v11           #outputStream:Ljava/io/FileOutputStream;
    .restart local v10       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_83

    .line 2551
    .end local v10           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #outputStream:Ljava/io/FileOutputStream;
    :catch_90
    move-exception v9

    move-object v10, v11

    .end local v11           #outputStream:Ljava/io/FileOutputStream;
    .restart local v10       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_73
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 2512
    iget-object v0, p0, Lcom/android/browser/Controller$Download;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/DataUri;->isDataUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2513
    invoke-direct {p0}, Lcom/android/browser/Controller$Download;->saveDataUri()V

    .line 2518
    :goto_c
    const/4 v0, 0x1

    return v0

    .line 2515
    :cond_e
    iget-object v0, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/Controller$Download;->mText:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/browser/Controller$Download;->mPrivateBrowsing:Z

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c
.end method

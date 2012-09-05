.class public Lcom/infraware/filemanager/FilePropertyActivity;
.super Landroid/app/ListActivity;
.source "FilePropertyActivity.java"


# instance fields
.field m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

.field private m_MimeImg:Landroid/graphics/Bitmap;

.field private m_MimeType:I

.field private m_bFolder:Z

.field private m_bLocal:Z

.field private m_nFileIcon:I

.field private m_nLocaleType:I

.field private m_nOrientation:I

.field private m_nSubFileCount:I

.field private m_nSubFolderCount:I

.field private m_nSubSize:J

.field private m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

.field private m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

.field private m_strCurId:Ljava/lang/String;

.field private m_strFileExt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_bLocal:Z

    .line 41
    iput-boolean v2, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_bFolder:Z

    .line 42
    iput-object v1, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    .line 44
    iput-object v1, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeImg:Landroid/graphics/Bitmap;

    .line 45
    iput v2, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeType:I

    .line 47
    iput-object v1, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 48
    iput-object v1, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    .line 49
    const v0, 0x7f080094

    iput v0, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nFileIcon:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_strFileExt:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private getFileUpdateTime(J)Ljava/lang/String;
    .registers 4
    .parameter "updateTime"

    .prologue
    .line 289
    invoke-static {p0, p1, p2}, Lcom/infraware/common/util/FileUtils;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFolderInfo(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 9
    .parameter "selItem"

    .prologue
    const/16 v6, 0x2f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 317
    iput v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    .line 318
    iput v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    .line 319
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubSize:J

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, strPath:Ljava/lang/String;
    iget v2, p1, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    if-nez v2, :cond_3d

    .line 324
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, fileFolder:Ljava/io/File;
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_39

    .line 337
    .end local v0           #fileFolder:Ljava/io/File;
    :cond_38
    :goto_38
    return-void

    .line 328
    .restart local v0       #fileFolder:Ljava/io/File;
    :cond_39
    invoke-direct {p0, v0}, Lcom/infraware/filemanager/FilePropertyActivity;->getLocalSubfolders(Ljava/io/File;)V

    goto :goto_38

    .line 329
    .end local v0           #fileFolder:Ljava/io/File;
    :cond_3d
    iget v2, p1, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    if-eq v2, v5, :cond_46

    .line 330
    iget v2, p1, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_38

    .line 331
    :cond_46
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_56

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_56

    .line 332
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_strCurId:Ljava/lang/String;

    .line 335
    iget v4, p1, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 334
    invoke-direct {p0, v2, v3, v4}, Lcom/infraware/filemanager/FilePropertyActivity;->getWebSubfolders(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_38
.end method

.method private getLocalSubfolders(Ljava/io/File;)V
    .registers 10
    .parameter "folder"

    .prologue
    .line 340
    new-instance v4, Lcom/infraware/filemanager/FilePropertyActivity$1;

    invoke-direct {v4, p0}, Lcom/infraware/filemanager/FilePropertyActivity$1;-><init>(Lcom/infraware/filemanager/FilePropertyActivity;)V

    invoke-virtual {p1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 349
    .local v3, subFolders:[Ljava/io/File;
    new-instance v4, Lcom/infraware/filemanager/FilePropertyActivity$2;

    invoke-direct {v4, p0}, Lcom/infraware/filemanager/FilePropertyActivity$2;-><init>(Lcom/infraware/filemanager/FilePropertyActivity;)V

    invoke-virtual {p1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 358
    .local v2, subFiles:[Ljava/io/File;
    const/4 v1, 0x0

    .line 359
    .local v1, nSubFolderCount:I
    const/4 v0, 0x0

    .line 361
    .local v0, nFileCount:I
    if-eqz v3, :cond_17

    .line 362
    array-length v1, v3

    .line 363
    :cond_17
    if-eqz v2, :cond_1a

    .line 364
    array-length v0, v2

    .line 366
    :cond_1a
    iget v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    .line 367
    iget v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    .line 368
    :goto_24
    if-gtz v0, :cond_29

    .line 373
    :goto_26
    if-gtz v1, :cond_39

    .line 377
    return-void

    .line 369
    :cond_29
    iget-wide v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubSize:J

    add-int/lit8 v6, v0, -0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubSize:J

    .line 370
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 374
    :cond_39
    add-int/lit8 v4, v1, -0x1

    aget-object v4, v3, v4

    invoke-direct {p0, v4}, Lcom/infraware/filemanager/FilePropertyActivity;->getLocalSubfolders(Ljava/io/File;)V

    .line 375
    add-int/lit8 v1, v1, -0x1

    goto :goto_26
.end method

.method private getSize(J)Ljava/lang/String;
    .registers 4
    .parameter "size"

    .prologue
    .line 284
    invoke-static {p1, p2}, Lcom/infraware/common/util/FileUtils;->getSizeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWebSubfolders(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "path"
    .parameter "id"
    .parameter "nServiceType"

    .prologue
    .line 380
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 381
    .local v0, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 396
    :cond_a
    return-void

    .line 384
    :cond_b
    invoke-virtual {v0, p3, p2, p1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getFirst(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    move-result-object v1

    .line 385
    .local v1, webFile:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    :goto_f
    if-eqz v1, :cond_a

    .line 386
    iget-boolean v2, v1, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    if-eqz v2, :cond_3c

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/infraware/filemanager/FilePropertyActivity;->getWebSubfolders(Ljava/lang/String;Ljava/lang/String;I)V

    .line 388
    iget v2, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    .line 394
    :goto_37
    invoke-virtual {v0, p3, p2, p1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getNext(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    move-result-object v1

    goto :goto_f

    .line 390
    :cond_3c
    iget v2, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    .line 391
    iget-wide v2, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubSize:J

    iget-wide v4, v1, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubSize:J

    goto :goto_37
.end method

.method private setDRMFiletype(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 7
    .parameter "item"

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, fileName:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/porting/DRM;->getInstance()Lcom/infraware/filemanager/porting/DRM;

    move-result-object v0

    .line 295
    .local v0, drm:Lcom/infraware/filemanager/porting/DRM;
    invoke-virtual {v0, v2, p0}, Lcom/infraware/filemanager/porting/DRM;->isDRM(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_24

    .line 297
    new-instance v1, Lcom/infraware/filemanager/file/FileListIcon;

    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/infraware/filemanager/file/FileListIcon;-><init>(Landroid/content/Context;)V

    .line 298
    .local v1, fileIcon:Lcom/infraware/filemanager/file/FileListIcon;
    invoke-virtual {v1, v0, p1}, Lcom/infraware/filemanager/file/FileListIcon;->getDRMFileIcon(Lcom/infraware/filemanager/porting/DRM;Lcom/infraware/filemanager/file/FileListItem;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeImg:Landroid/graphics/Bitmap;

    .line 300
    invoke-virtual {v0, v2}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v3

    .line 301
    .local v3, type:I
    packed-switch v3, :pswitch_data_38

    .line 314
    .end local v1           #fileIcon:Lcom/infraware/filemanager/file/FileListIcon;
    .end local v3           #type:I
    :cond_24
    :goto_24
    return-void

    .line 304
    .restart local v1       #fileIcon:Lcom/infraware/filemanager/file/FileListIcon;
    .restart local v3       #type:I
    :pswitch_25
    const v4, 0x7f080088

    iput v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeType:I

    goto :goto_24

    .line 307
    :pswitch_2b
    const v4, 0x7f08008d

    iput v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeType:I

    goto :goto_24

    .line 310
    :pswitch_31
    const v4, 0x7f08008e

    iput v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeType:I

    goto :goto_24

    .line 301
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2b
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public onChangeScreen(I)V
    .registers 3
    .parameter "nType"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 281
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "_newConfig"

    .prologue
    .line 266
    iget v1, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_f

    .line 267
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/FilePropertyActivity;->onChangeScreen(I)V

    .line 268
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nOrientation:I

    .line 271
    :cond_f
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 272
    .local v0, nLocaleType:I
    iget v1, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nLocaleType:I

    if-eq v0, v1, :cond_1e

    .line 273
    iput v0, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nLocaleType:I

    .line 274
    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->onUpdateText()V

    .line 276
    :cond_1e
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 277
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nOrientation:I

    .line 57
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v9

    iput v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nLocaleType:I

    .line 60
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nOrientation:I

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->onChangeScreen(I)V

    .line 64
    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 66
    const/4 v9, 0x0

    iput v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    .line 67
    const/4 v9, 0x0

    iput v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    .line 68
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubSize:J

    .line 71
    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "key_login_id"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_strCurId:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "key_property"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 74
    .local v2, extraStream:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    :try_start_50
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    .local v5, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/infraware/filemanager/file/FileListItem;

    iput-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 79
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_60
    .catch Ljava/io/StreamCorruptedException; {:try_start_50 .. :try_end_60} :catch_195
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_60} :catch_19b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_50 .. :try_end_60} :catch_1a1

    .line 88
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    :goto_60
    new-instance v9, Lcom/infraware/filemanager/property/FilePropertyAdapter;

    const v10, 0x7f030021

    invoke-direct {v9, p0, v10}, Lcom/infraware/filemanager/property/FilePropertyAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    .line 90
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    if-eqz v9, :cond_18f

    .line 91
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v7, v9, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 93
    .local v7, strValue:Ljava/lang/String;
    new-instance v9, Lcom/infraware/filemanager/file/FileListIcon;

    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/infraware/filemanager/file/FileListIcon;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    .line 94
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-boolean v9, v9, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v9, :cond_1a7

    .line 95
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_bFolder:Z

    .line 96
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v10}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v10}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/infraware/filemanager/porting/DeviceConfig$SdDetectHelper;->isSdCardDirectory(Ljava/io/File;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 97
    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v10, v10, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/infraware/filemanager/porting/DeviceConfig$SDCardList;->getSDCardIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeImg:Landroid/graphics/Bitmap;

    .line 99
    :cond_ab
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeImg:Landroid/graphics/Bitmap;

    if-nez v9, :cond_b7

    .line 100
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    invoke-virtual {v9, v7}, Lcom/infraware/filemanager/file/FileListIcon;->getFolderIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeImg:Landroid/graphics/Bitmap;

    .line 109
    :cond_b7
    :goto_b7
    const/4 v6, 0x0

    .line 111
    .local v6, strSubCount:Ljava/lang/String;
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-boolean v9, v9, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v9, :cond_2cb

    .line 112
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->getFolderInfo(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 114
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    iget v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    add-int/2addr v9, v10

    if-lez v9, :cond_106

    .line 116
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v9

    if-nez v9, :cond_eb

    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08030e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "- FV02"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2ae

    .line 118
    :cond_eb
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    if-nez v9, :cond_1d0

    .line 120
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_1bc

    .line 121
    const-string v9, "%d files"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 158
    :cond_106
    :goto_106
    new-instance v3, Lcom/infraware/filemanager/property/FilePropertyItem;

    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeImg:Landroid/graphics/Bitmap;

    invoke-direct {v3, v7, v6, v9}, Lcom/infraware/filemanager/property/FilePropertyItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 163
    .local v3, item:Lcom/infraware/filemanager/property/FilePropertyItem;
    :goto_10d
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    invoke-virtual {v9, v3}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->add(Ljava/lang/Object;)V

    .line 165
    const/4 v8, 0x0

    .line 166
    .local v8, type:Ljava/lang/String;
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-boolean v9, v9, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v9, :cond_2db

    .line 167
    const v9, 0x7f080086

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 187
    :cond_120
    :goto_120
    new-instance v3, Lcom/infraware/filemanager/property/FilePropertyItem;

    .end local v3           #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    const v9, 0x7f080082

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v3, v9, v8, v10}, Lcom/infraware/filemanager/property/FilePropertyItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 188
    .restart local v3       #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    invoke-virtual {v9, v3}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->add(Ljava/lang/Object;)V

    .line 190
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v7, v9, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 191
    new-instance v3, Lcom/infraware/filemanager/property/FilePropertyItem;

    .end local v3           #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    const v9, 0x7f080083

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v3, v9, v7, v10}, Lcom/infraware/filemanager/property/FilePropertyItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 192
    .restart local v3       #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    invoke-virtual {v9, v3}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->add(Ljava/lang/Object;)V

    .line 195
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget v9, v9, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_373

    .line 196
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-boolean v9, v9, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v9, :cond_35c

    .line 197
    new-instance v3, Lcom/infraware/filemanager/property/FilePropertyItem;

    .end local v3           #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    const v9, 0x7f080084

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubSize:J

    invoke-direct {p0, v10, v11}, Lcom/infraware/filemanager/FilePropertyActivity;->getSize(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v3, v9, v10, v11}, Lcom/infraware/filemanager/property/FilePropertyItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 200
    .restart local v3       #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    :goto_168
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    invoke-virtual {v9, v3}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->add(Ljava/lang/Object;)V

    .line 205
    :goto_16d
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-wide v9, v9, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 206
    .local v4, nFileModi:Ljava/lang/Long;
    new-instance v3, Lcom/infraware/filemanager/property/FilePropertyItem;

    .end local v3           #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    const v9, 0x7f080085

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/infraware/filemanager/FilePropertyActivity;->getFileUpdateTime(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v3, v9, v10, v11}, Lcom/infraware/filemanager/property/FilePropertyItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 207
    .restart local v3       #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    invoke-virtual {v9, v3}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->add(Ljava/lang/Object;)V

    .line 210
    .end local v3           #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    .end local v4           #nFileModi:Ljava/lang/Long;
    .end local v6           #strSubCount:Ljava/lang/String;
    .end local v7           #strValue:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    :cond_18f
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    return-void

    .line 80
    :catch_195
    move-exception v1

    .line 81
    .local v1, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto/16 :goto_60

    .line 82
    .end local v1           #e:Ljava/io/StreamCorruptedException;
    :catch_19b
    move-exception v1

    .line 83
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_60

    .line 84
    .end local v1           #e:Ljava/io/IOException;
    :catch_1a1
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_60

    .line 104
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v7       #strValue:Ljava/lang/String;
    :cond_1a7
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->setDRMFiletype(Lcom/infraware/filemanager/file/FileListItem;)V

    .line 105
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeImg:Landroid/graphics/Bitmap;

    if-nez v9, :cond_b7

    .line 106
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    iget-object v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v9, v10}, Lcom/infraware/filemanager/file/FileListIcon;->getFileIcon(Lcom/infraware/filemanager/file/FileListItem;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeImg:Landroid/graphics/Bitmap;

    goto/16 :goto_b7

    .line 123
    .restart local v6       #strSubCount:Ljava/lang/String;
    :cond_1bc
    const-string v9, "%d file"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_106

    .line 125
    :cond_1d0
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    if-nez v9, :cond_201

    .line 127
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_1ed

    .line 128
    const-string v9, "%d folders"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_106

    .line 130
    :cond_1ed
    const-string v9, "%d folder"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_106

    .line 132
    :cond_201
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_249

    .line 134
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    if-lez v9, :cond_106

    .line 136
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_22c

    .line 137
    const-string v9, "%d folder, %d files"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_106

    .line 139
    :cond_22c
    const-string v9, "%d folder, %d file"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_106

    .line 142
    :cond_249
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_291

    .line 144
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    if-lez v9, :cond_106

    .line 146
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_274

    .line 147
    const-string v9, "%d folders, %d file"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_106

    .line 149
    :cond_274
    const-string v9, "%d folder, %d file"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_106

    .line 153
    :cond_291
    const-string v9, "%d folders, %d files"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_106

    .line 156
    :cond_2ae
    const-string v9, "%d folders, %d files"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFolderCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nSubFileCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_106

    .line 161
    :cond_2cb
    new-instance v3, Lcom/infraware/filemanager/property/FilePropertyItem;

    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {v9}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeImg:Landroid/graphics/Bitmap;

    invoke-direct {v3, v9, v10, v11}, Lcom/infraware/filemanager/property/FilePropertyItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .restart local v3       #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    goto/16 :goto_10d

    .line 169
    .restart local v8       #type:Ljava/lang/String;
    :cond_2db
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeType:I

    if-eqz v9, :cond_2e7

    .line 170
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_MimeType:I

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_120

    .line 173
    :cond_2e7
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget v9, v9, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_34d

    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v9, v9, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_34d

    .line 174
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    iget-object v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v10, v10, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/infraware/filemanager/file/FileListIcon;->getTypeByFileExt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 179
    :goto_306
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    iget-object v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v10, v10, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/infraware/filemanager/file/FileListIcon;->getTypeByFileExt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nFileIcon:I

    .line 180
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v9, v9, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    iput-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_strFileExt:Ljava/lang/String;

    .line 181
    iget v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nFileIcon:I

    const v10, 0x7f080094

    if-ne v9, v10, :cond_120

    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_strFileExt:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_120

    .line 182
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_strFileExt:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f080206

    invoke-virtual {p0, v10}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_120

    .line 176
    :cond_34d
    iget-object v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    iget-object v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v10, v10, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/infraware/filemanager/file/FileListIcon;->getTypeByFileExt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_306

    .line 199
    :cond_35c
    new-instance v3, Lcom/infraware/filemanager/property/FilePropertyItem;

    .end local v3           #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    const v9, 0x7f080084

    invoke-virtual {p0, v9}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-wide v10, v10, Lcom/infraware/filemanager/file/FileListItem;->size:J

    invoke-direct {p0, v10, v11}, Lcom/infraware/filemanager/FilePropertyActivity;->getSize(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v3, v9, v10, v11}, Lcom/infraware/filemanager/property/FilePropertyItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .restart local v3       #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    goto/16 :goto_168

    .line 203
    :cond_373
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_bLocal:Z

    goto/16 :goto_16d
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 262
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/infraware/filemanager/FilePropertyActivity;->onUpdateText()V

    .line 255
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 256
    return-void
.end method

.method onUpdateText()V
    .registers 7

    .prologue
    const v5, 0x7f080082

    .line 214
    const/4 v2, 0x1

    .local v2, nIndex:I
    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    invoke-virtual {v4}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->getCount()I

    move-result v1

    .line 216
    .local v1, nCnt:I
    const v4, 0x7f080081

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FilePropertyActivity;->setTitle(I)V

    .line 217
    if-lez v1, :cond_7d

    .line 218
    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #nIndex:I
    .local v3, nIndex:I
    invoke-virtual {v4, v2}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/property/FilePropertyItem;

    .line 219
    .local v0, item:Lcom/infraware/filemanager/property/FilePropertyItem;
    iget-boolean v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_bFolder:Z

    if-eqz v4, :cond_7e

    .line 220
    invoke-virtual {p0, v5}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/infraware/filemanager/property/FilePropertyItem;->strTitle:Ljava/lang/String;

    .line 221
    const v4, 0x7f080086

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/infraware/filemanager/property/FilePropertyItem;->strValue:Ljava/lang/String;

    .line 236
    :cond_2f
    :goto_2f
    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #nIndex:I
    .restart local v2       #nIndex:I
    invoke-virtual {v4, v3}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    check-cast v0, Lcom/infraware/filemanager/property/FilePropertyItem;

    .line 237
    .restart local v0       #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    const v4, 0x7f080083

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/infraware/filemanager/property/FilePropertyItem;->strTitle:Ljava/lang/String;

    .line 238
    iget-boolean v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_bLocal:Z

    if-eqz v4, :cond_5a

    .line 239
    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #nIndex:I
    .restart local v3       #nIndex:I
    invoke-virtual {v4, v2}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    check-cast v0, Lcom/infraware/filemanager/property/FilePropertyItem;

    .line 240
    .restart local v0       #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    const v4, 0x7f080084

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/infraware/filemanager/property/FilePropertyItem;->strTitle:Ljava/lang/String;

    move v2, v3

    .line 243
    .end local v3           #nIndex:I
    .restart local v2       #nIndex:I
    :cond_5a
    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #nIndex:I
    .restart local v3       #nIndex:I
    invoke-virtual {v4, v2}, Lcom/infraware/filemanager/property/FilePropertyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    check-cast v0, Lcom/infraware/filemanager/property/FilePropertyItem;

    .line 244
    .restart local v0       #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    const v4, 0x7f080085

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/infraware/filemanager/property/FilePropertyItem;->strTitle:Ljava/lang/String;

    .line 245
    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-wide v4, v4, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    invoke-direct {p0, v4, v5}, Lcom/infraware/filemanager/FilePropertyActivity;->getFileUpdateTime(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/infraware/filemanager/property/FilePropertyItem;->strValue:Ljava/lang/String;

    .line 247
    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_Adapter:Lcom/infraware/filemanager/property/FilePropertyAdapter;

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FilePropertyActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    move v2, v3

    .line 249
    .end local v0           #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    .end local v3           #nIndex:I
    .restart local v2       #nIndex:I
    :cond_7d
    return-void

    .line 223
    .end local v2           #nIndex:I
    .restart local v0       #item:Lcom/infraware/filemanager/property/FilePropertyItem;
    .restart local v3       #nIndex:I
    :cond_7e
    invoke-virtual {p0, v5}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/infraware/filemanager/property/FilePropertyItem;->strTitle:Ljava/lang/String;

    .line 225
    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget v4, v4, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_dc

    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v4, v4, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_dc

    .line 226
    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    iget-object v5, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v5, v5, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/file/FileListIcon;->getTypeByFileExt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/infraware/filemanager/property/FilePropertyItem;->strValue:Ljava/lang/String;

    .line 231
    :goto_a5
    iget v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_nFileIcon:I

    const v5, 0x7f080094

    if-ne v4, v5, :cond_2f

    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_strFileExt:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2f

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_strFileExt:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f080206

    invoke-virtual {p0, v5}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/infraware/filemanager/property/FilePropertyItem;->strValue:Ljava/lang/String;

    goto/16 :goto_2f

    .line 228
    :cond_dc
    iget-object v4, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileIcon:Lcom/infraware/filemanager/file/FileListIcon;

    iget-object v5, p0, Lcom/infraware/filemanager/FilePropertyActivity;->m_oFileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v5, v5, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/file/FileListIcon;->getTypeByFileExt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/FilePropertyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/infraware/filemanager/property/FilePropertyItem;->strValue:Ljava/lang/String;

    goto :goto_a5
.end method

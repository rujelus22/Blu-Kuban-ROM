.class public Lcom/sec/print/mobileprint/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# static fields
.field private static final CTS_FILES_FOLDER:Ljava/lang/String; = "cts_files"

.field private static final MODEL_INFO_XML:Ljava/lang/String; = "mobileprint_model_list.xml"

.field public static final TEMP_FOLDER_PATH:Ljava/lang/String;


# instance fields
.field private assetMgr:Landroid/content/res/AssetManager;

.field private cratedTempFileList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRun:Z

.field private pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

.field private requestCancel:Z

.field private statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

.field private final syncCancel:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SamsungMobilePrint/temp/PrintService/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/print/mobileprint/PrintJob;->TEMP_FOLDER_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/PrintingStatusMonitor;Landroid/content/res/AssetManager;)V
    .registers 5
    .parameter "statusMonitor"
    .parameter "assetMgr"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    .line 50
    iput-object v0, p0, Lcom/sec/print/mobileprint/PrintJob;->pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/PrintJob;->syncCancel:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    .line 65
    iput-object p2, p0, Lcom/sec/print/mobileprint/PrintJob;->assetMgr:Landroid/content/res/AssetManager;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/PrintJob;->cratedTempFileList:Ljava/util/LinkedList;

    .line 67
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/PrintJob;->requestCancel:Z

    .line 68
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/PrintJob;->isRun:Z

    .line 69
    return-void
.end method

.method private checkValidation(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;)Z
    .registers 7
    .parameter "printOptions"
    .parameter "docSet"

    .prologue
    .line 353
    const/4 v1, 0x1

    .line 355
    .local v1, result:Z
    const-class v2, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    invoke-virtual {p1, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->get(Ljava/lang/Class;)Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;

    move-result-object v0

    check-cast v0, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    .line 356
    .local v0, pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    if-nez v0, :cond_d

    .line 358
    const/4 v1, 0x0

    .line 379
    :cond_c
    :goto_c
    return v1

    .line 362
    :cond_d
    invoke-virtual {v0}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->getPDLType()Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    move-result-object v2

    sget-object v3, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_DIRECTPRINT:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    if-ne v2, v3, :cond_1f

    .line 364
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;

    if-eq v2, v3, :cond_c

    .line 366
    const/4 v1, 0x0

    goto :goto_c

    .line 369
    :cond_1f
    invoke-virtual {v0}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->getPDLType()Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    move-result-object v2

    sget-object v3, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL6:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    if-eq v2, v3, :cond_2f

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;->getPDLType()Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    move-result-object v2

    sget-object v3, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_SPL:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    if-ne v2, v3, :cond_c

    .line 372
    :cond_2f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/sec/print/mobileprint/pagedata/PageSet;

    if-eq v2, v3, :cond_c

    .line 374
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private copyCTS2SDCard(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "filePathCTS"

    .prologue
    const/16 v13, 0x400

    const/4 v10, 0x0

    .line 594
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/sec/print/mobileprint/PrintJob;->TEMP_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, newFilePathOnSDCard:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 596
    .local v9, tempFolderPath:Ljava/io/File;
    if-nez v9, :cond_24

    .line 597
    const-string v5, ""

    .line 655
    .end local v5           #newFilePathOnSDCard:Ljava/lang/String;
    :cond_23
    :goto_23
    return-object v5

    .line 599
    .restart local v5       #newFilePathOnSDCard:Ljava/lang/String;
    :cond_24
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_38

    .line 601
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_38

    .line 603
    const-string v10, "ERROR - mkdirs"

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    const-string v5, ""

    goto :goto_23

    .line 608
    :cond_38
    new-array v0, v13, [B

    .line 609
    .local v0, arrBuffer:[B
    const/4 v6, 0x0

    .line 610
    .local v6, offset:I
    const/4 v4, 0x0

    .line 611
    .local v4, lengthOfRead:I
    const/4 v7, 0x0

    .line 614
    .local v7, outputStream:Ljava/io/FileOutputStream;
    :try_start_3d
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_42} :catch_94
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_84

    .line 615
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .local v8, outputStream:Ljava/io/FileOutputStream;
    :try_start_42
    iget-object v11, p0, Lcom/sec/print/mobileprint/PrintJob;->assetMgr:Landroid/content/res/AssetManager;

    invoke-virtual {v11, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 619
    .local v3, inputStream:Ljava/io/InputStream;
    :goto_48
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v3, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 620
    const/4 v11, -0x1

    if-ne v4, v11, :cond_70

    .line 628
    iget-object v11, p0, Lcom/sec/print/mobileprint/PrintJob;->cratedTempFileList:Ljava/util/LinkedList;

    invoke-virtual {v11, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 631
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_5d} :catch_76
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_5d} :catch_91

    .line 644
    if-eqz v8, :cond_23

    .line 646
    :try_start_5f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_23

    .line 647
    :catch_63
    move-exception v1

    .line 649
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 650
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v10

    .line 651
    goto :goto_23

    .line 624
    .end local v1           #e:Ljava/io/IOException;
    :cond_70
    add-int/2addr v6, v4

    .line 625
    const/4 v11, 0x0

    :try_start_72
    invoke-virtual {v8, v0, v11, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_75} :catch_76
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_91

    goto :goto_48

    .line 632
    .end local v3           #inputStream:Ljava/io/InputStream;
    :catch_76
    move-exception v2

    move-object v7, v8

    .line 634
    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .local v2, e1:Ljava/io/FileNotFoundException;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    :goto_78
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 635
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v10

    .line 636
    goto :goto_23

    .line 637
    .end local v2           #e1:Ljava/io/FileNotFoundException;
    :catch_84
    move-exception v1

    .line 639
    .restart local v1       #e:Ljava/io/IOException;
    :goto_85
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 640
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v10

    .line 641
    goto :goto_23

    .line 637
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :catch_91
    move-exception v1

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_85

    .line 632
    :catch_94
    move-exception v2

    goto :goto_78
.end method

.method private createFolder(Ljava/lang/String;)Z
    .registers 7
    .parameter "strFilePath"

    .prologue
    .line 279
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, filePath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 281
    .local v1, folderPath:Ljava/io/File;
    const-string v2, "PrintJob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create Folder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_36

    .line 286
    const-string v2, "PrintJob"

    const-string v3, "ERROR - mkdirs"

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    .line 291
    :goto_35
    return v2

    .line 289
    :cond_36
    const-string v2, "PrintJob"

    const-string v3, "Success : "

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_3d
    const/4 v2, 0x1

    goto :goto_35
.end method

.method private getDefaultModel(Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "printerInfo"
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 575
    if-nez p2, :cond_5

    .line 589
    :cond_4
    :goto_4
    return-object v0

    .line 578
    :cond_5
    const-string v1, "SPL3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_10

    .line 580
    const-string v0, "Samsung ML-1660 Series"

    goto :goto_4

    .line 581
    :cond_10
    const-string v1, "SPL5"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1b

    .line 583
    const-string v0, "Samsung CLP-320 Series"

    goto :goto_4

    .line 584
    :cond_1b
    const-string v1, "SPL7"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 586
    const-string v0, "Samsung CLP-320 Series"

    goto :goto_4
.end method

.method private getSPLDeviceInfo(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    .registers 16
    .parameter "modelName"

    .prologue
    const/4 v13, 0x1

    const/4 v9, 0x0

    .line 502
    const/4 v4, 0x0

    .line 503
    .local v4, pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    const/4 v2, 0x0

    .line 505
    .local v2, deviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    :try_start_4
    iget-object v10, p0, Lcom/sec/print/mobileprint/PrintJob;->assetMgr:Landroid/content/res/AssetManager;

    const-string v11, "mobileprint_model_list.xml"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;->loadCapability(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    move-result-object v2

    .line 506
    if-nez v2, :cond_48

    .line 507
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR : deviceCapability == null , modelName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_28} :catch_29

    .line 570
    :cond_28
    :goto_28
    return-object v9

    .line 510
    :catch_29
    move-exception v3

    .line 512
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_28

    .line 517
    .end local v3           #e:Ljava/io/IOException;
    :cond_48
    invoke-virtual {v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->getSplVersion()Ljava/lang/String;

    move-result-object v6

    .line 518
    .local v6, splVersion:Ljava/lang/String;
    if-nez v6, :cond_54

    .line 519
    const-string v10, "ERROR : splVersion == null"

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_28

    .line 522
    :cond_54
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 523
    .local v7, valueSPLVersion:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "splVersion == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cts_files/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->getCmsFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/print/mobileprint/PrintJob;->copyCTS2SDCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, colorTableFilePath:Ljava/lang/String;
    if-nez v0, :cond_91

    .line 528
    const-string v10, "ERROR : colorTableFilePath == null"

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_28

    .line 531
    :cond_91
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ColorTable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-virtual {v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->getSplCompressionType()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, compression:Ljava/lang/String;
    if-nez v1, :cond_b4

    .line 535
    const-string v10, "ERROR : compression == null"

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 538
    :cond_b4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "compression == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->getSplWidthAlign()Ljava/lang/String;

    move-result-object v8

    .line 542
    .local v8, widthAlign:Ljava/lang/String;
    if-nez v8, :cond_d7

    .line 543
    const-string v10, "ERROR : widthAlign == null"

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 546
    :cond_d7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "widthAlign == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    const/4 v5, 0x0

    .line 550
    .local v5, splTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;
    packed-switch v7, :pswitch_data_13e

    .line 564
    :goto_f1
    :pswitch_f1
    if-eqz v5, :cond_28

    invoke-virtual {v5}, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->isError()Z

    move-result v10

    if-eq v10, v13, :cond_28

    .line 568
    new-instance v4, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    .end local v4           #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    sget-object v9, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_SPL:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    invoke-direct {v4, v9, v5}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;)V

    .restart local v4       #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    move-object v9, v4

    .line 570
    goto/16 :goto_28

    .line 552
    :pswitch_103
    new-instance v5, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;

    .end local v5           #splTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v0, v13, v10, v11}, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 553
    .restart local v5       #splTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;
    goto :goto_f1

    .line 555
    :pswitch_111
    new-instance v5, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;

    .end local v5           #splTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;
    const/4 v10, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v0, v10, v11, v12}, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 556
    .restart local v5       #splTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;
    goto :goto_f1

    .line 558
    :pswitch_120
    new-instance v5, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;

    .end local v5           #splTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;
    const/4 v10, 0x3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v0, v10, v11, v12}, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 559
    .restart local v5       #splTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;
    goto :goto_f1

    .line 561
    :pswitch_12f
    new-instance v5, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;

    .end local v5           #splTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;
    const/4 v10, 0x5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v0, v10, v11, v12}, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .restart local v5       #splTypeInfo:Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;
    goto :goto_f1

    .line 550
    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_103
        :pswitch_111
        :pswitch_120
        :pswitch_f1
        :pswitch_12f
    .end packed-switch
.end method

.method public static getTempPrefixString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 662
    .local v0, currentTimeValue:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private selectPDLType(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;)Z
    .registers 16
    .parameter "printOptions"
    .parameter "printerInfo"
    .parameter "docSet"

    .prologue
    const/4 v11, 0x1

    .line 386
    invoke-virtual {p2}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->getSupportedPDLTypeList()Ljava/util/ArrayList;

    move-result-object v5

    .line 387
    .local v5, pdlTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_f

    .line 389
    :cond_d
    const/4 v6, 0x0

    .line 497
    :cond_e
    :goto_e
    return v6

    .line 392
    :cond_f
    const/4 v6, 0x1

    .line 393
    .local v6, result:Z
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/sec/print/mobileprint/pagedata/DirectPrintDocSet;

    if-ne v9, v10, :cond_2d

    .line 395
    const-string v9, "PDF"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_2b

    .line 397
    new-instance v3, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    sget-object v9, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_DIRECTPRINT:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    invoke-direct {v3, v9}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;)V

    .line 398
    .local v3, pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    invoke-virtual {p1, v3}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    goto :goto_e

    .line 402
    .end local v3           #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    :cond_2b
    const/4 v6, 0x0

    goto :goto_e

    .line 405
    :cond_2d
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/sec/print/mobileprint/pagedata/PageSet;

    if-ne v9, v10, :cond_e

    .line 408
    const-string v9, "PCL6"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eq v9, v11, :cond_45

    const-string v9, "PCLXL"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_fc

    .line 411
    :cond_45
    const/4 v3, 0x0

    .line 413
    .restart local v3       #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    invoke-virtual {p2}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->isSupportedColor()Z

    move-result v9

    if-nez v9, :cond_62

    .line 415
    const-string v9, "PCL6 - RLE"

    invoke-static {p0, v9}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    new-instance v3, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    .end local v3           #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    sget-object v9, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL6:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    new-instance v10, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;-><init>(I)V

    invoke-direct {v3, v9, v10}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;)V

    .line 466
    .restart local v3       #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    :goto_5e
    invoke-virtual {p1, v3}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    goto :goto_e

    .line 420
    :cond_62
    const-class v9, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;

    invoke-virtual {p1, v9}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->get(Ljava/lang/Class;)Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;

    move-result-object v7

    check-cast v7, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;

    .line 421
    .local v7, sourceType:Lcom/sec/print/mobileprint/printoptionattribute/SourceType;
    if-eqz v7, :cond_8a

    invoke-virtual {v7}, Lcom/sec/print/mobileprint/printoptionattribute/SourceType;->getSourceType()I

    move-result v9

    sget-object v10, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->PRINT_SOURCE_DOCUMENT:Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;

    invoke-virtual {v10}, Lcom/sec/print/mobileprint/printoptionattribute/SourceType$EnumSourceType;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_8a

    .line 424
    const-string v9, "PCL6 - Delta-Row"

    invoke-static {p0, v9}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    new-instance v3, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    .end local v3           #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    sget-object v9, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL6:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    new-instance v10, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;

    invoke-direct {v10, v11}, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;-><init>(I)V

    invoke-direct {v3, v9, v10}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;)V

    .restart local v3       #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    goto :goto_5e

    .line 429
    :cond_8a
    const/4 v1, 0x0

    .line 431
    .local v1, deviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    :try_start_8b
    iget-object v9, p0, Lcom/sec/print/mobileprint/PrintJob;->assetMgr:Landroid/content/res/AssetManager;

    const-string v10, "mobileprint_model_list.xml"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {p2}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->getModelName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceInfoLoader;->loadCapability(Ljava/io/InputStream;Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_9a} :catch_c7

    move-result-object v1

    .line 437
    :goto_9b
    const/4 v8, 0x0

    .line 438
    .local v8, strPCL6Comp:Ljava/lang/String;
    if-eqz v1, :cond_a2

    .line 439
    invoke-virtual {v1}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->getPCL6CompressionType()Ljava/lang/String;

    move-result-object v8

    .line 442
    :cond_a2
    if-eqz v8, :cond_aa

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v11, :cond_ac

    .line 444
    :cond_aa
    const-string v8, "RLE, Deltarow, Banded_JPG, FullImage_JPG"

    .line 447
    :cond_ac
    const-string v9, "FullImage_JPG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-ne v9, v11, :cond_cd

    .line 449
    const-string v9, "PCL6 - FullImage_JPG"

    invoke-static {p0, v9}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    new-instance v3, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    .end local v3           #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    sget-object v9, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL6:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    new-instance v10, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;-><init>(I)V

    invoke-direct {v3, v9, v10}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;)V

    .restart local v3       #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    goto :goto_5e

    .line 432
    .end local v8           #strPCL6Comp:Ljava/lang/String;
    :catch_c7
    move-exception v2

    .line 434
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 435
    const/4 v1, 0x0

    goto :goto_9b

    .line 452
    .end local v2           #e:Ljava/io/IOException;
    .restart local v8       #strPCL6Comp:Ljava/lang/String;
    :cond_cd
    const-string v9, "Banded_JPG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-ne v9, v11, :cond_e9

    .line 454
    const-string v9, "PCL6 - Banded_JPG"

    invoke-static {p0, v9}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    new-instance v3, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    .end local v3           #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    sget-object v9, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL6:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    new-instance v10, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;-><init>(I)V

    invoke-direct {v3, v9, v10}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;)V

    .restart local v3       #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    goto/16 :goto_5e

    .line 459
    :cond_e9
    const-string v9, "PCL6 - PCL6_COMP_TYPE_BANDED_DELTA_ROW"

    invoke-static {p0, v9}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    new-instance v3, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    .end local v3           #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    sget-object v9, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL6:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    new-instance v10, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;

    invoke-direct {v10, v11}, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;-><init>(I)V

    invoke-direct {v3, v9, v10}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;)V

    .restart local v3       #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    goto/16 :goto_5e

    .line 469
    .end local v1           #deviceCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    .end local v3           #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    .end local v7           #sourceType:Lcom/sec/print/mobileprint/printoptionattribute/SourceType;
    .end local v8           #strPCL6Comp:Ljava/lang/String;
    :cond_fc
    const-string v9, "SPLC"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eq v9, v11, :cond_114

    const-string v9, "SPL"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eq v9, v11, :cond_114

    const-string v9, "GDI"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_141

    .line 471
    :cond_114
    invoke-virtual {p2}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sec/print/mobileprint/PrintJob;->getSPLDeviceInfo(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    move-result-object v3

    .line 472
    .restart local v3       #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    if-eqz v3, :cond_123

    .line 473
    invoke-virtual {p1, v3}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    goto/16 :goto_e

    .line 476
    :cond_123
    const-string v9, "set default color table"

    invoke-static {p0, v9}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    const-string v9, "SPL5"

    invoke-direct {p0, p2, v9}, Lcom/sec/print/mobileprint/PrintJob;->getDefaultModel(Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, defaultModel:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/print/mobileprint/PrintJob;->getSPLDeviceInfo(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    move-result-object v4

    .line 479
    .local v4, pdlTypeDefault:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    if-eqz v4, :cond_139

    .line 480
    invoke-virtual {p1, v4}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    goto/16 :goto_e

    .line 482
    :cond_139
    const-string v9, "Fail to set default color table"

    invoke-static {p0, v9}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    const/4 v6, 0x0

    goto/16 :goto_e

    .line 487
    .end local v0           #defaultModel:Ljava/lang/String;
    .end local v3           #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    .end local v4           #pdlTypeDefault:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    :cond_141
    const-string v9, "PCL3GUI"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_155

    .line 489
    new-instance v3, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;

    sget-object v9, Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;->PDLTYPE_PCL3GUI:Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;

    invoke-direct {v3, v9}, Lcom/sec/print/mobileprint/printoptionattribute/PDLType;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/PDLType$EnumPDLType;)V

    .line 490
    .restart local v3       #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    invoke-virtual {p1, v3}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    goto/16 :goto_e

    .line 494
    .end local v3           #pdlType:Lcom/sec/print/mobileprint/printoptionattribute/PDLType;
    :cond_155
    const/4 v6, 0x0

    goto/16 :goto_e
.end method

.method private setMediaInfo(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;)V
    .registers 12
    .parameter "printOptions"

    .prologue
    .line 331
    const-class v2, Lcom/sec/print/mobileprint/printoptionattribute/Media;

    invoke-virtual {p1, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->get(Ljava/lang/Class;)Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;

    move-result-object v9

    check-cast v9, Lcom/sec/print/mobileprint/printoptionattribute/Media;

    .line 332
    .local v9, media:Lcom/sec/print/mobileprint/printoptionattribute/Media;
    const/4 v0, 0x0

    .line 333
    .local v0, mediaInfo:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;
    if-eqz v9, :cond_41

    .line 335
    invoke-virtual {v9}, Lcom/sec/print/mobileprint/printoptionattribute/Media;->getMediaSizeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->getMediaSizeID(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    move-result-object v1

    .line 336
    .local v1, eMediaSize:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;
    invoke-virtual {v9}, Lcom/sec/print/mobileprint/printoptionattribute/Media;->getMediaTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->getMediaTypeID(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    move-result-object v4

    .line 338
    .local v4, eMediaType:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;

    .end local v0           #mediaInfo:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;
    invoke-virtual {v9}, Lcom/sec/print/mobileprint/printoptionattribute/Media;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/sec/print/mobileprint/printoptionattribute/Media;->getHeight()I

    move-result v3

    invoke-virtual {v9}, Lcom/sec/print/mobileprint/printoptionattribute/Media;->getMarginLeft()I

    move-result v5

    invoke-virtual {v9}, Lcom/sec/print/mobileprint/printoptionattribute/Media;->getMarginTop()I

    move-result v6

    invoke-virtual {v9}, Lcom/sec/print/mobileprint/printoptionattribute/Media;->getMarginRight()I

    move-result v7

    invoke-virtual {v9}, Lcom/sec/print/mobileprint/printoptionattribute/Media;->getMarginBottom()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;IILcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;IIII)V

    .line 347
    .end local v1           #eMediaSize:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;
    .end local v4           #eMediaType:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;
    .restart local v0       #mediaInfo:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;
    :goto_38
    const-class v2, Lcom/sec/print/mobileprint/printoptionattribute/Media;

    invoke-virtual {p1, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->remove(Ljava/lang/Class;)Z

    .line 348
    invoke-virtual {p1, v0}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    .line 349
    return-void

    .line 344
    :cond_41
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;

    .end local v0           #mediaInfo:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;
    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;-><init>()V

    .restart local v0       #mediaInfo:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;
    goto :goto_38
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/sec/print/mobileprint/PrintJob;->syncCancel:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/PrintJob;->requestCancel:Z

    .line 77
    iget-object v0, p0, Lcom/sec/print/mobileprint/PrintJob;->pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

    if-eqz v0, :cond_11

    .line 79
    iget-object v0, p0, Lcom/sec/print/mobileprint/PrintJob;->pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/PDLComposer;->cancel()V

    .line 80
    monitor-exit v1

    .line 83
    :goto_10
    return-void

    .line 82
    :cond_11
    monitor-exit v1

    goto :goto_10

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public deleteFolder(Ljava/io/File;)V
    .registers 6
    .parameter "targetFolder"

    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 306
    .local v0, childFile:[Ljava/io/File;
    if-nez v0, :cond_7

    .line 328
    :goto_6
    return-void

    .line 310
    :cond_7
    array-length v2, v0

    .line 312
    .local v2, size:I
    if-lez v2, :cond_23

    .line 314
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v2, :cond_23

    .line 316
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 318
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 314
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 320
    :cond_1d
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/sec/print/mobileprint/PrintJob;->deleteFolder(Ljava/io/File;)V

    goto :goto_1a

    .line 325
    .end local v1           #i:I
    :cond_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_6
.end method

.method public deleteFolder(Ljava/lang/String;)V
    .registers 5
    .parameter "folderPathToBeDeleted"

    .prologue
    .line 296
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, targetFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 299
    invoke-virtual {p0, v0}, Lcom/sec/print/mobileprint/PrintJob;->deleteFolder(Ljava/io/File;)V

    .line 301
    :cond_f
    return-void
.end method

.method public init()V
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/PrintJob;->isRun:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/PrintJob;->pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

    .line 97
    return-void
.end method

.method public isProcessing()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/sec/print/mobileprint/PrintJob;->isRun:Z

    return v0
.end method

.method public print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;)V
    .registers 35
    .parameter "printOptions"
    .parameter "docSet"
    .parameter "printerInfo"

    .prologue
    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/sec/print/mobileprint/PrintJob;->init()V

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/PrintJob;->selectPDLType(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;)Z

    move-result v28

    if-nez v28, :cond_27

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_ERROR:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x6

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    .line 275
    :goto_1e
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/print/mobileprint/PrintJob;->isRun:Z

    .line 276
    return-void

    .line 113
    :cond_27
    invoke-virtual/range {p3 .. p3}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->isSupportedColor()Z

    move-result v28

    if-nez v28, :cond_42

    .line 115
    const-class v28, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->get(Ljava/lang/Class;)Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;

    move-result-object v10

    check-cast v10, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;

    .line 116
    .local v10, chromaticity:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;
    if-eqz v10, :cond_42

    .line 117
    sget-object v28, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->MONOCHROME:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;->setChromaticity(Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;)V

    .line 121
    .end local v10           #chromaticity:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;
    :cond_42
    invoke-direct/range {p0 .. p1}, Lcom/sec/print/mobileprint/PrintJob;->setMediaInfo(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->getOutputInfo()Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;

    move-result-object v19

    .line 125
    .local v19, outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    const/16 v17, 0x0

    .line 126
    .local v17, isCanceled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->syncCancel:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 128
    :try_start_52
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/print/mobileprint/PrintJob;->requestCancel:Z

    move/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_a2

    .line 130
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/print/mobileprint/PrintJob;->requestCancel:Z

    .line 131
    const/16 v17, 0x1

    .line 135
    :goto_6a
    monitor-exit v29
    :try_end_6b
    .catchall {:try_start_52 .. :try_end_6b} :catchall_b8

    .line 137
    const/16 v28, 0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_bb

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_CANCELED:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    .line 266
    .end local v19           #outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    :goto_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->syncCancel:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 268
    :try_start_87
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/print/mobileprint/PrintJob;->requestCancel:Z

    move/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_9d

    .line 270
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/print/mobileprint/PrintJob;->requestCancel:Z

    .line 272
    :cond_9d
    monitor-exit v29

    goto :goto_1e

    :catchall_9f
    move-exception v28

    monitor-exit v29
    :try_end_a1
    .catchall {:try_start_87 .. :try_end_a1} :catchall_9f

    throw v28

    .line 133
    .restart local v19       #outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    :cond_a2
    :try_start_a2
    new-instance v28, Lcom/sec/print/mobileprint/PDLComposer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/print/mobileprint/PDLComposer;-><init>(Lcom/sec/print/mobileprint/PrintingStatusMonitor;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/print/mobileprint/PrintJob;->pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

    goto :goto_6a

    .line 135
    :catchall_b8
    move-exception v28

    monitor-exit v29
    :try_end_ba
    .catchall {:try_start_a2 .. :try_end_ba} :catchall_b8

    throw v28

    .line 140
    :cond_bb
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_fb

    move-object/from16 v28, v19

    .line 142
    check-cast v28, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;

    invoke-virtual/range {v28 .. v28}, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v16

    .line 143
    .local v16, ipAddr:Ljava/lang/String;
    check-cast v19, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;

    .end local v19           #outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->getPortNum()I

    move-result v21

    .line 144
    .local v21, portNum:I
    new-instance v18, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;-><init>(Ljava/lang/String;I)V

    .line 145
    .local v18, netOutputStream:Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/print/mobileprint/PDLComposer;->print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/io/ISPSOutputStream;)I

    .line 263
    .end local v16           #ipAddr:Ljava/lang/String;
    .end local v18           #netOutputStream:Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;
    .end local v21           #portNum:I
    :cond_f1
    :goto_f1
    sget-object v28, Lcom/sec/print/mobileprint/PrintJob;->TEMP_FOLDER_PATH:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/print/mobileprint/PrintJob;->deleteFolder(Ljava/lang/String;)V

    goto :goto_80

    .line 147
    .restart local v19       #outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    :cond_fb
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_122

    .line 149
    check-cast v19, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;

    .end local v19           #outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/print/mobileprint/printerinfo/FileOutputInfo;->getFilefullpath()Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, fileFullPath:Ljava/lang/String;
    new-instance v15, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;

    invoke-direct {v15, v13}, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;-><init>(Ljava/lang/String;)V

    .line 151
    .local v15, fileOutputStream:Lcom/sec/print/mobileprint/io/SPSFileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v15}, Lcom/sec/print/mobileprint/PDLComposer;->print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/io/ISPSOutputStream;)I

    goto :goto_f1

    .line 153
    .end local v13           #fileFullPath:Ljava/lang/String;
    .end local v15           #fileOutputStream:Lcom/sec/print/mobileprint/io/SPSFileOutputStream;
    .restart local v19       #outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    :cond_122
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Lcom/sec/print/mobileprint/printerinfo/USBOutputInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14b

    .line 155
    check-cast v19, Lcom/sec/print/mobileprint/printerinfo/USBOutputInfo;

    .end local v19           #outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/print/mobileprint/printerinfo/USBOutputInfo;->getUSBPortAddr()Ljava/lang/String;

    move-result-object v27

    .line 156
    .local v27, usbPortAddr:Ljava/lang/String;
    new-instance v15, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v15       #fileOutputStream:Lcom/sec/print/mobileprint/io/SPSFileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v15}, Lcom/sec/print/mobileprint/PDLComposer;->print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/io/ISPSOutputStream;)I

    goto :goto_f1

    .line 159
    .end local v15           #fileOutputStream:Lcom/sec/print/mobileprint/io/SPSFileOutputStream;
    .end local v27           #usbPortAddr:Ljava/lang/String;
    .restart local v19       #outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    :cond_14b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_193

    move-object/from16 v28, v19

    .line 161
    check-cast v28, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;

    invoke-virtual/range {v28 .. v28}, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->getSelectedPrinterDomain()Ljava/lang/String;

    move-result-object v5

    .local v5, selectedPrinterDomain:Ljava/lang/String;
    move-object/from16 v28, v19

    .line 162
    check-cast v28, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;

    invoke-virtual/range {v28 .. v28}, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->getSelectedPrinterUserName()Ljava/lang/String;

    move-result-object v6

    .local v6, selectedPrinterUserName:Ljava/lang/String;
    move-object/from16 v28, v19

    .line 163
    check-cast v28, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;

    invoke-virtual/range {v28 .. v28}, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->getSelectedPrinterPassword()Ljava/lang/String;

    move-result-object v7

    .local v7, selectedPrinterPassword:Ljava/lang/String;
    move-object/from16 v28, v19

    .line 164
    check-cast v28, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;

    invoke-virtual/range {v28 .. v28}, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->getSelectedPrinterIP()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, selectedPrinterIPAddress:Ljava/lang/String;
    check-cast v19, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;

    .end local v19           #outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->getSelectedPrinterShareName()Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, selectedPrinterShareName:Ljava/lang/String;
    new-instance v4, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;

    invoke-direct/range {v4 .. v9}, Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v4, smbOutputStream:Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/print/mobileprint/PDLComposer;->print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/io/ISPSOutputStream;)I

    goto/16 :goto_f1

    .line 175
    .end local v4           #smbOutputStream:Lcom/sec/print/mobileprint/io/SPSSMBOutputStream;
    .end local v5           #selectedPrinterDomain:Ljava/lang/String;
    .end local v6           #selectedPrinterUserName:Ljava/lang/String;
    .end local v7           #selectedPrinterPassword:Ljava/lang/String;
    .end local v8           #selectedPrinterIPAddress:Ljava/lang/String;
    .end local v9           #selectedPrinterShareName:Ljava/lang/String;
    .restart local v19       #outputInfo:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    :cond_193
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_f1

    move-object/from16 v20, v19

    .line 178
    check-cast v20, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;

    .line 179
    .local v20, outputInfoIPP:Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/print/mobileprint/printerinfo/IPPOutputInfo;->getURL()Ljava/net/URL;

    move-result-object v26

    .line 180
    .local v26, urlIPPPrinter:Ljava/net/URL;
    if-nez v26, :cond_1c1

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_ERROR:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x6

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    .line 184
    sget-object v28, Lcom/sec/print/mobileprint/PrintJob;->TEMP_FOLDER_PATH:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/print/mobileprint/PrintJob;->deleteFolder(Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 189
    :cond_1c1
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/sec/print/mobileprint/PrintJob;->TEMP_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/sec/print/mobileprint/PrintJob;->getTempPrefixString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "IPP"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 191
    .local v25, strIPPTempFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/print/mobileprint/PrintJob;->createFolder(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_200

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_ERROR:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    .line 194
    sget-object v28, Lcom/sec/print/mobileprint/PrintJob;->TEMP_FOLDER_PATH:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/print/mobileprint/PrintJob;->deleteFolder(Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 199
    :cond_200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_START_MAKE_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    .line 200
    new-instance v15, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v15       #fileOutputStream:Lcom/sec/print/mobileprint/io/SPSFileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->pdlComposer:Lcom/sec/print/mobileprint/PDLComposer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v15}, Lcom/sec/print/mobileprint/PDLComposer;->print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/io/ISPSOutputStream;)I

    move-result v28

    if-nez v28, :cond_231

    .line 203
    sget-object v28, Lcom/sec/print/mobileprint/PrintJob;->TEMP_FOLDER_PATH:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/print/mobileprint/PrintJob;->deleteFolder(Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 208
    :cond_231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_END_MAKE_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    .line 212
    :try_start_23e
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_245
    .catch Ljava/io/FileNotFoundException; {:try_start_23e .. :try_end_245} :catch_301

    .line 224
    .local v14, fileInputStream:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_START_SEND_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    .line 225
    const-string v28, "CupsPrinter - sending"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v24, Lorg/cups4j/CupsPrinter;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;->getModelName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lorg/cups4j/CupsPrinter;-><init>(Ljava/net/URL;Ljava/lang/String;Z)V

    .line 227
    .local v24, printer:Lorg/cups4j/CupsPrinter;
    new-instance v28, Lorg/cups4j/PrintJob$Builder;

    move-object/from16 v0, v28

    invoke-direct {v0, v14}, Lorg/cups4j/PrintJob$Builder;-><init>(Ljava/io/InputStream;)V

    const-string v29, "Samsung Mobile Print"

    invoke-virtual/range {v28 .. v29}, Lorg/cups4j/PrintJob$Builder;->jobName(Ljava/lang/String;)Lorg/cups4j/PrintJob$Builder;

    move-result-object v28

    const-string v29, "Samsung Mobile Print"

    invoke-virtual/range {v28 .. v29}, Lorg/cups4j/PrintJob$Builder;->userName(Ljava/lang/String;)Lorg/cups4j/PrintJob$Builder;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lorg/cups4j/PrintJob$Builder;->copies(I)Lorg/cups4j/PrintJob$Builder;

    move-result-object v28

    const-string v29, "1"

    invoke-virtual/range {v28 .. v29}, Lorg/cups4j/PrintJob$Builder;->pageRanges(Ljava/lang/String;)Lorg/cups4j/PrintJob$Builder;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lorg/cups4j/PrintJob$Builder;->duplex(Z)Lorg/cups4j/PrintJob$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/cups4j/PrintJob$Builder;->build()Lorg/cups4j/PrintJob;

    move-result-object v22

    .line 236
    .local v22, printJob:Lorg/cups4j/PrintJob;
    :try_start_297
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/cups4j/CupsPrinter;->print(Lorg/cups4j/PrintJob;)Lorg/cups4j/PrintRequestResult;

    move-result-object v23

    .line 237
    .local v23, printRequestResult:Lorg/cups4j/PrintRequestResult;
    invoke-virtual/range {v23 .. v23}, Lorg/cups4j/PrintRequestResult;->isSuccessfulResult()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_33b

    .line 239
    const-string v28, "CupsPrinter - success"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_END_SEND_FILE_DATA:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_COMPLETED_FILE_JOB:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V
    :try_end_2ce
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_2ce} :catch_2d0

    goto/16 :goto_f1

    .line 250
    .end local v23           #printRequestResult:Lorg/cups4j/PrintRequestResult;
    :catch_2d0
    move-exception v11

    .line 252
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error - printRequestResult exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_ERROR:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x4

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    goto/16 :goto_f1

    .line 213
    .end local v11           #e:Ljava/lang/Exception;
    .end local v14           #fileInputStream:Ljava/io/FileInputStream;
    .end local v22           #printJob:Lorg/cups4j/PrintJob;
    .end local v24           #printer:Lorg/cups4j/CupsPrinter;
    :catch_301
    move-exception v12

    .line 215
    .local v12, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 216
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error - new FileInputStream(strIPPTempFilePath) : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_ERROR:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x4

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    .line 219
    sget-object v28, Lcom/sec/print/mobileprint/PrintJob;->TEMP_FOLDER_PATH:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/print/mobileprint/PrintJob;->deleteFolder(Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 245
    .end local v12           #e1:Ljava/io/FileNotFoundException;
    .restart local v14       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v22       #printJob:Lorg/cups4j/PrintJob;
    .restart local v23       #printRequestResult:Lorg/cups4j/PrintRequestResult;
    .restart local v24       #printer:Lorg/cups4j/CupsPrinter;
    :cond_33b
    :try_start_33b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error - printRequestResult : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lorg/cups4j/PrintRequestResult;->getResultCode()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Descriptioni : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lorg/cups4j/PrintRequestResult;->getResultDescription()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/PrintJob;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    move-object/from16 v28, v0

    sget-object v29, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_ERROR:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/16 v30, 0x4

    invoke-virtual/range {v28 .. v30}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V
    :try_end_374
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_374} :catch_2d0

    goto/16 :goto_f1
.end method

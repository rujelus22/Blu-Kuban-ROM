.class public Lcom/infraware/filemanager/manager/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field private static final CHANNEL_BUFFER_SIZE:I = 0x10000

.field private static final DUPLICATE_PREFIX:Ljava/lang/String; = "Copy_%03d_"

.field private static final HUGE_FILE_SIZE:I = 0x500000

.field public static m_bCancel:Z

.field private static m_nProgressIndex:J

.field private static m_nProgressUnit:I

.field private static m_nTotalSize:J

.field private static volatile m_oFileManager:Lcom/infraware/filemanager/manager/FileManager;


# instance fields
.field private m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-wide/16 v1, 0x0

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/filemanager/manager/FileManager;->m_oFileManager:Lcom/infraware/filemanager/manager/FileManager;

    .line 42
    sput-wide v1, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    .line 43
    sput-wide v1, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    .line 50
    return-void
.end method

.method private addMedia(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "sourcePath"
    .parameter "targetPath"
    .parameter "dbAction"

    .prologue
    .line 928
    new-instance v0, Lcom/infraware/filemanager/media/MediaItem;

    invoke-direct {v0, p1}, Lcom/infraware/filemanager/media/MediaItem;-><init>(Ljava/lang/String;)V

    .line 929
    .local v0, mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    iput p3, v0, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    .line 930
    iput-object p2, v0, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    .line 932
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onAddMedia(Lcom/infraware/filemanager/media/MediaItem;)V

    .line 933
    return-void
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;ZLcom/infraware/filemanager/async/FileAsyncControlHandler;)I
    .registers 22
    .parameter "sourceFile"
    .parameter "targetFile"
    .parameter "deleteSource"
    .parameter "resultHandler"

    .prologue
    .line 648
    sget-boolean v3, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v3, :cond_6

    .line 649
    const/4 v12, -0x7

    .line 693
    :cond_5
    :goto_5
    return v12

    .line 651
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 653
    if-eqz p3, :cond_11

    .line 654
    const/16 v12, -0xf

    goto :goto_5

    .line 656
    :cond_11
    const/4 v12, 0x0

    goto :goto_5

    .line 659
    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_36

    .line 660
    new-instance p2, Ljava/io/File;

    .end local p2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/infraware/filemanager/manager/FileManager;->getDuplicateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 662
    .restart local p2
    :cond_36
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 663
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    .line 665
    :cond_3f
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_47

    .line 666
    const/4 v12, -0x1

    goto :goto_5

    .line 668
    :cond_47
    const/4 v12, -0x1

    .line 670
    .local v12, result:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    .line 671
    .local v14, subLists:[Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 674
    const/4 v12, 0x0

    .line 675
    array-length v10, v14

    const/4 v3, 0x0

    move v9, v3

    :goto_52
    if-lt v9, v10, :cond_6e

    .line 688
    if-eqz p3, :cond_59

    .line 689
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 691
    :cond_59
    const/4 v7, 0x0

    const/4 v8, 0x3

    sget-wide v9, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    sget v3, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    int-to-long v15, v3

    div-long/2addr v9, v15

    long-to-int v9, v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v6, p0

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto :goto_5

    .line 675
    :cond_6e
    aget-object v13, v14, v9

    .line 677
    .local v13, subItem:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 678
    .local v4, sourceSubFile:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 679
    .local v5, targetSubFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 680
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/infraware/filemanager/manager/FileManager;->copyDirectory(Ljava/io/File;Ljava/io/File;ZLcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v12

    .line 684
    :goto_8e
    if-nez v12, :cond_5

    .line 675
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_52

    .line 682
    :cond_94
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/infraware/filemanager/manager/FileManager;->copyFile(Ljava/io/File;Ljava/io/File;ZLcom/infraware/filemanager/async/FileAsyncControlHandler;Z)I

    move-result v12

    goto :goto_8e
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;ZLcom/infraware/filemanager/async/FileAsyncControlHandler;Z)I
    .registers 46
    .parameter "sourceFile"
    .parameter "targetFile"
    .parameter "deleteSource"
    .parameter "resultHandler"
    .parameter "useFileProgress"

    .prologue
    .line 698
    sget-boolean v2, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v2, :cond_7

    .line 699
    const/16 v33, -0x7

    .line 849
    :goto_6
    return v33

    .line 701
    :cond_7
    const/16 v22, 0x0

    .line 702
    .local v22, fis:Ljava/io/FileInputStream;
    const/16 v25, 0x0

    .line 704
    .local v25, fos:Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 705
    .local v12, bis:Ljava/io/BufferedInputStream;
    const/4 v15, 0x0

    .line 707
    .local v15, bos:Ljava/io/BufferedOutputStream;
    const/16 v21, 0x0

    .line 708
    .local v21, fic:Ljava/nio/channels/FileChannel;
    const/16 v24, 0x0

    .line 710
    .local v24, foc:Ljava/nio/channels/FileChannel;
    const/16 v33, 0x0

    .line 712
    .local v33, result:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_36

    .line 713
    new-instance p2, Ljava/io/File;

    .end local p2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/infraware/filemanager/manager/FileManager;->getDuplicateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    .restart local p2
    :cond_36
    const/16 v27, 0x0

    .line 716
    .local v27, freeBlock:I
    const/4 v14, 0x0

    .line 717
    .local v14, blockSize:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v35

    .line 719
    .local v35, size:J
    :try_start_3d
    new-instance v34, Landroid/os/StatFs;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 720
    .local v34, sf:Landroid/os/StatFs;
    invoke-virtual/range {v34 .. v34}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v27

    .line 721
    invoke-virtual/range {v34 .. v34}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_4f} :catch_6c

    move-result v14

    .line 728
    const-wide/32 v5, 0x500000

    cmp-long v2, v35, v5

    if-lez v2, :cond_73

    const-wide/32 v5, 0x280000

    add-long v5, v5, v35

    :goto_5c
    int-to-long v7, v14

    div-long v30, v5, v7

    .line 729
    .local v30, minFree:J
    move/from16 v0, v27

    int-to-long v5, v0

    cmp-long v2, v5, v30

    if-gez v2, :cond_7a

    .line 731
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 732
    const/16 v33, -0xc

    .line 733
    goto :goto_6

    .line 722
    .end local v30           #minFree:J
    .end local v34           #sf:Landroid/os/StatFs;
    :catch_6c
    move-exception v20

    .line 723
    .local v20, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 724
    const/16 v33, -0xc

    .line 725
    goto :goto_6

    .line 728
    .end local v20           #e:Ljava/lang/IllegalArgumentException;
    .restart local v34       #sf:Landroid/os/StatFs;
    :cond_73
    const-wide/16 v5, 0x2

    div-long v5, v35, v5

    add-long v5, v5, v35

    goto :goto_5c

    .line 736
    .restart local v30       #minFree:J
    :cond_7a
    if-nez p5, :cond_90

    .line 737
    const/4 v3, 0x0

    const/4 v4, 0x3

    sget-wide v5, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    sget v2, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    int-to-long v7, v2

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 739
    :cond_90
    const/4 v11, 0x1

    .line 740
    .local v11, bResult:Z
    sget-wide v37, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    .line 743
    .local v37, totalPosition:J
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v32

    .line 744
    .local v32, old:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v32

    invoke-direct {v2, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 747
    :try_start_a9
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_280
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b2} :catch_2eb

    .line 748
    .end local v22           #fis:Ljava/io/FileInputStream;
    .local v23, fis:Ljava/io/FileInputStream;
    :try_start_b2
    new-instance v26, Ljava/io/FileOutputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_2da
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bb} :catch_2ee

    .line 750
    .end local v25           #fos:Ljava/io/FileOutputStream;
    .local v26, fos:Ljava/io/FileOutputStream;
    const-wide v28, 0x80000000L

    .line 751
    .local v28, intLimit:J
    cmp-long v2, v35, v28

    if-gez v2, :cond_148

    .line 753
    :try_start_c4
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    .line 754
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v24

    .line 762
    :goto_cc
    if-eqz p5, :cond_ed

    .line 764
    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-wide v5, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    sget v2, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    int-to-long v7, v2

    div-long/2addr v5, v7

    long-to-int v5, v5

    const-string v6, ""

    move-object/from16 v2, p0

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 765
    const/4 v3, 0x0

    const/4 v4, 0x2

    sget v5, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    const-string v6, ""

    move-object/from16 v2, p0

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 768
    :cond_ed
    const-wide/16 v3, 0x0

    .line 769
    .local v3, position:J
    const-wide/16 v18, 0x0

    .line 770
    .local v18, count:J
    const/high16 v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v17, v0
    :try_end_f7
    .catchall {:try_start_c4 .. :try_end_f7} :catchall_2de
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_f7} :catch_23a

    .line 771
    .local v17, buffer:[B
    const/16 v39, 0x0

    .line 773
    .local v39, writeSize:I
    :cond_f9
    :goto_f9
    cmp-long v2, v3, v35

    if-ltz v2, :cond_15d

    .line 816
    if-eqz p5, :cond_2be

    .line 817
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const-string v9, ""

    move-object/from16 v5, p0

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 822
    :goto_10b
    if-eqz v12, :cond_110

    :try_start_10d
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 823
    :cond_110
    if-eqz v15, :cond_115

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 825
    :cond_115
    if-eqz v21, :cond_11a

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->close()V

    .line 826
    :cond_11a
    if-eqz v24, :cond_11f

    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/FileChannel;->close()V

    .line 828
    :cond_11f
    if-eqz v23, :cond_124

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    .line 829
    :cond_124
    if-eqz v26, :cond_129

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    .line 831
    :cond_129
    if-nez v11, :cond_12e

    .line 832
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_12e} :catch_2c2

    .line 840
    :cond_12e
    if-eqz p3, :cond_2ca

    .line 841
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6}, Lcom/infraware/filemanager/manager/FileManager;->addMedia(Ljava/lang/String;Ljava/lang/String;I)V

    .line 842
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 847
    :goto_141
    invoke-static/range {v32 .. v32}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 849
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 758
    .end local v3           #position:J
    .end local v17           #buffer:[B
    .end local v18           #count:J
    .end local v39           #writeSize:I
    :cond_148
    :try_start_148
    new-instance v13, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14f
    .catchall {:try_start_148 .. :try_end_14f} :catchall_2de
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14f} :catch_23a

    .line 759
    .end local v12           #bis:Ljava/io/BufferedInputStream;
    .local v13, bis:Ljava/io/BufferedInputStream;
    :try_start_14f
    new-instance v16, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_158
    .catchall {:try_start_14f .. :try_end_158} :catchall_2e4
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_158} :catch_2f3

    .end local v15           #bos:Ljava/io/BufferedOutputStream;
    .local v16, bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v15, v16

    .end local v16           #bos:Ljava/io/BufferedOutputStream;
    .restart local v15       #bos:Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13           #bis:Ljava/io/BufferedInputStream;
    .restart local v12       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_cc

    .line 774
    .restart local v3       #position:J
    .restart local v17       #buffer:[B
    .restart local v18       #count:J
    .restart local v39       #writeSize:I
    :cond_15d
    :try_start_15d
    sget-boolean v2, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z
    :try_end_15f
    .catchall {:try_start_15d .. :try_end_15f} :catchall_2de
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_15f} :catch_23a

    if-eqz v2, :cond_1a2

    .line 776
    const/4 v11, 0x0

    .line 816
    if-eqz p5, :cond_197

    .line 817
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, ""

    .end local v3           #position:J
    move-object/from16 v2, p0

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 822
    :goto_170
    if-eqz v12, :cond_175

    :try_start_172
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 823
    :cond_175
    if-eqz v15, :cond_17a

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 825
    :cond_17a
    if-eqz v21, :cond_17f

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->close()V

    .line 826
    :cond_17f
    if-eqz v24, :cond_184

    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/FileChannel;->close()V

    .line 828
    :cond_184
    if-eqz v23, :cond_189

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    .line 829
    :cond_189
    if-eqz v26, :cond_18e

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    .line 831
    :cond_18e
    if-nez v11, :cond_193

    .line 832
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_193} :catch_19a

    .line 777
    :cond_193
    const/16 v33, -0x7

    goto/16 :goto_6

    .line 819
    .restart local v3       #position:J
    :cond_197
    sput-wide v37, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    goto :goto_170

    .line 834
    .end local v3           #position:J
    :catch_19a
    move-exception v20

    .line 835
    .local v20, e:Ljava/io/IOException;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 836
    const/16 v33, -0x1

    goto/16 :goto_6

    .line 780
    .end local v20           #e:Ljava/io/IOException;
    .restart local v3       #position:J
    :cond_1a2
    cmp-long v2, v35, v28

    if-gez v2, :cond_1f7

    .line 782
    const-wide/32 v5, 0x10000

    move-object/from16 v2, v21

    move-object/from16 v7, v24

    :try_start_1ad
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1b0
    .catchall {:try_start_1ad .. :try_end_1b0} :catchall_2de
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1b0} :catch_23a

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v39, v0

    .line 783
    if-gez v39, :cond_20c

    .line 785
    const/4 v11, 0x0

    .line 816
    :goto_1b7
    if-eqz p5, :cond_1ec

    .line 817
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const-string v9, ""

    move-object/from16 v5, p0

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 822
    :goto_1c5
    if-eqz v12, :cond_1ca

    :try_start_1c7
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 823
    :cond_1ca
    if-eqz v15, :cond_1cf

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 825
    :cond_1cf
    if-eqz v21, :cond_1d4

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->close()V

    .line 826
    :cond_1d4
    if-eqz v24, :cond_1d9

    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/FileChannel;->close()V

    .line 828
    :cond_1d9
    if-eqz v23, :cond_1de

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    .line 829
    :cond_1de
    if-eqz v26, :cond_1e3

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    .line 831
    :cond_1e3
    if-nez v11, :cond_1e8

    .line 832
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1e8} :catch_1ef

    .line 786
    :cond_1e8
    const/16 v33, -0x1

    goto/16 :goto_6

    .line 819
    :cond_1ec
    sput-wide v37, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    goto :goto_1c5

    .line 834
    :catch_1ef
    move-exception v20

    .line 835
    .restart local v20       #e:Ljava/io/IOException;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 836
    const/16 v33, -0x1

    goto/16 :goto_6

    .line 791
    .end local v20           #e:Ljava/io/IOException;
    :cond_1f7
    const/4 v2, 0x0

    const/high16 v5, 0x1

    :try_start_1fa
    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v39

    .line 792
    if-gez v39, :cond_204

    .line 794
    const/4 v11, 0x0

    .line 795
    goto :goto_1b7

    .line 797
    :cond_204
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v15, v0, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 800
    :cond_20c
    move/from16 v0, v39

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 801
    sget-wide v5, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    add-long v37, v5, v3

    .line 802
    const-wide/16 v5, 0x1

    add-long v18, v18, v5

    .line 804
    const-wide/16 v5, 0x10

    cmp-long v2, v18, v5

    if-ltz v2, :cond_f9

    .line 806
    const-wide/16 v18, 0x0

    .line 807
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 808
    const/4 v6, 0x0

    const/4 v7, 0x3

    sget v2, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    int-to-long v8, v2

    div-long v8, v37, v8

    long-to-int v8, v8

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V
    :try_end_238
    .catchall {:try_start_1fa .. :try_end_238} :catchall_2de
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_238} :catch_23a

    goto/16 :goto_f9

    .line 811
    .end local v3           #position:J
    .end local v17           #buffer:[B
    .end local v18           #count:J
    .end local v39           #writeSize:I
    :catch_23a
    move-exception v20

    move-object/from16 v25, v26

    .end local v26           #fos:Ljava/io/FileOutputStream;
    .restart local v25       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .line 812
    .end local v23           #fis:Ljava/io/FileInputStream;
    .end local v28           #intLimit:J
    .local v20, e:Ljava/lang/Exception;
    .restart local v22       #fis:Ljava/io/FileInputStream;
    :goto_23f
    const/4 v11, 0x0

    .line 816
    if-eqz p5, :cond_275

    .line 817
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const-string v9, ""

    move-object/from16 v5, p0

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 822
    :goto_24e
    if-eqz v12, :cond_253

    :try_start_250
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 823
    :cond_253
    if-eqz v15, :cond_258

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 825
    :cond_258
    if-eqz v21, :cond_25d

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->close()V

    .line 826
    :cond_25d
    if-eqz v24, :cond_262

    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/FileChannel;->close()V

    .line 828
    :cond_262
    if-eqz v22, :cond_267

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    .line 829
    :cond_267
    if-eqz v25, :cond_26c

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 831
    :cond_26c
    if-nez v11, :cond_271

    .line 832
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z
    :try_end_271
    .catch Ljava/io/IOException; {:try_start_250 .. :try_end_271} :catch_278

    .line 813
    :cond_271
    const/16 v33, -0x1

    goto/16 :goto_6

    .line 819
    :cond_275
    sput-wide v37, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    goto :goto_24e

    .line 834
    :catch_278
    move-exception v20

    .line 835
    .local v20, e:Ljava/io/IOException;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 836
    const/16 v33, -0x1

    goto/16 :goto_6

    .line 815
    .end local v20           #e:Ljava/io/IOException;
    :catchall_280
    move-exception v2

    .line 816
    :goto_281
    if-eqz p5, :cond_2b3

    .line 817
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const-string v9, ""

    move-object/from16 v5, p0

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 822
    :goto_28f
    if-eqz v12, :cond_294

    :try_start_291
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 823
    :cond_294
    if-eqz v15, :cond_299

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 825
    :cond_299
    if-eqz v21, :cond_29e

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->close()V

    .line 826
    :cond_29e
    if-eqz v24, :cond_2a3

    invoke-virtual/range {v24 .. v24}, Ljava/nio/channels/FileChannel;->close()V

    .line 828
    :cond_2a3
    if-eqz v22, :cond_2a8

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    .line 829
    :cond_2a8
    if-eqz v25, :cond_2ad

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 831
    :cond_2ad
    if-nez v11, :cond_2b2

    .line 832
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z
    :try_end_2b2
    .catch Ljava/io/IOException; {:try_start_291 .. :try_end_2b2} :catch_2b6

    .line 838
    :cond_2b2
    throw v2

    .line 819
    :cond_2b3
    sput-wide v37, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    goto :goto_28f

    .line 834
    :catch_2b6
    move-exception v20

    .line 835
    .restart local v20       #e:Ljava/io/IOException;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 836
    const/16 v33, -0x1

    goto/16 :goto_6

    .line 819
    .end local v20           #e:Ljava/io/IOException;
    .end local v22           #fis:Ljava/io/FileInputStream;
    .end local v25           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #position:J
    .restart local v17       #buffer:[B
    .restart local v18       #count:J
    .restart local v23       #fis:Ljava/io/FileInputStream;
    .restart local v26       #fos:Ljava/io/FileOutputStream;
    .restart local v28       #intLimit:J
    .restart local v39       #writeSize:I
    :cond_2be
    sput-wide v37, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    goto/16 :goto_10b

    .line 834
    :catch_2c2
    move-exception v20

    .line 835
    .restart local v20       #e:Ljava/io/IOException;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 836
    const/16 v33, -0x1

    goto/16 :goto_6

    .line 845
    .end local v20           #e:Ljava/io/IOException;
    :cond_2ca
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6}, Lcom/infraware/filemanager/manager/FileManager;->addMedia(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_141

    .line 815
    .end local v3           #position:J
    .end local v17           #buffer:[B
    .end local v18           #count:J
    .end local v26           #fos:Ljava/io/FileOutputStream;
    .end local v28           #intLimit:J
    .end local v39           #writeSize:I
    .restart local v25       #fos:Ljava/io/FileOutputStream;
    :catchall_2da
    move-exception v2

    move-object/from16 v22, v23

    .end local v23           #fis:Ljava/io/FileInputStream;
    .restart local v22       #fis:Ljava/io/FileInputStream;
    goto :goto_281

    .end local v22           #fis:Ljava/io/FileInputStream;
    .end local v25           #fos:Ljava/io/FileOutputStream;
    .restart local v23       #fis:Ljava/io/FileInputStream;
    .restart local v26       #fos:Ljava/io/FileOutputStream;
    .restart local v28       #intLimit:J
    :catchall_2de
    move-exception v2

    move-object/from16 v25, v26

    .end local v26           #fos:Ljava/io/FileOutputStream;
    .restart local v25       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #fis:Ljava/io/FileInputStream;
    .restart local v22       #fis:Ljava/io/FileInputStream;
    goto :goto_281

    .end local v12           #bis:Ljava/io/BufferedInputStream;
    .end local v22           #fis:Ljava/io/FileInputStream;
    .end local v25           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #bis:Ljava/io/BufferedInputStream;
    .restart local v23       #fis:Ljava/io/FileInputStream;
    .restart local v26       #fos:Ljava/io/FileOutputStream;
    :catchall_2e4
    move-exception v2

    move-object v12, v13

    .end local v13           #bis:Ljava/io/BufferedInputStream;
    .restart local v12       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v25, v26

    .end local v26           #fos:Ljava/io/FileOutputStream;
    .restart local v25       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #fis:Ljava/io/FileInputStream;
    .restart local v22       #fis:Ljava/io/FileInputStream;
    goto :goto_281

    .line 811
    .end local v28           #intLimit:J
    :catch_2eb
    move-exception v20

    goto/16 :goto_23f

    .end local v22           #fis:Ljava/io/FileInputStream;
    .restart local v23       #fis:Ljava/io/FileInputStream;
    :catch_2ee
    move-exception v20

    move-object/from16 v22, v23

    .end local v23           #fis:Ljava/io/FileInputStream;
    .restart local v22       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_23f

    .end local v12           #bis:Ljava/io/BufferedInputStream;
    .end local v22           #fis:Ljava/io/FileInputStream;
    .end local v25           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #bis:Ljava/io/BufferedInputStream;
    .restart local v23       #fis:Ljava/io/FileInputStream;
    .restart local v26       #fos:Ljava/io/FileOutputStream;
    .restart local v28       #intLimit:J
    :catch_2f3
    move-exception v20

    move-object v12, v13

    .end local v13           #bis:Ljava/io/BufferedInputStream;
    .restart local v12       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v25, v26

    .end local v26           #fos:Ljava/io/FileOutputStream;
    .restart local v25       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #fis:Ljava/io/FileInputStream;
    .restart local v22       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_23f
.end method

.method private deleteDirectory(Ljava/io/File;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I
    .registers 13
    .parameter "deleteFile"
    .parameter "resultHandler"

    .prologue
    const/4 v3, -0x1

    .line 854
    sget-boolean v0, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v0, :cond_7

    .line 855
    const/4 v6, -0x7

    .line 884
    :cond_6
    :goto_6
    return v6

    .line 857
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 858
    const/16 v6, -0xf

    goto :goto_6

    .line 860
    :cond_10
    const/4 v6, -0x1

    .line 862
    .local v6, result:I
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 863
    .local v9, subLists:[Ljava/lang/String;
    if-nez v9, :cond_19

    move v6, v3

    .line 864
    goto :goto_6

    .line 866
    :cond_19
    array-length v1, v9

    const/4 v0, 0x0

    :goto_1b
    if-lt v0, v1, :cond_30

    .line 878
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 879
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 882
    const/4 v6, 0x0

    .line 884
    goto :goto_6

    .line 866
    :cond_30
    aget-object v8, v9, v0

    .line 868
    .local v8, subItem:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 869
    .local v7, sourceSubFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 870
    invoke-direct {p0, v7, p2}, Lcom/infraware/filemanager/manager/FileManager;->deleteDirectory(Ljava/io/File;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v6

    .line 874
    :goto_41
    if-nez v6, :cond_6

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 872
    :cond_46
    invoke-direct {p0, v7, p2}, Lcom/infraware/filemanager/manager/FileManager;->deleteFile(Ljava/io/File;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v6

    goto :goto_41
.end method

.method private deleteFile(Ljava/io/File;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I
    .registers 9
    .parameter "deleteFile"
    .parameter "resultHandler"

    .prologue
    const/4 v1, 0x2

    const/4 v3, -0x1

    .line 889
    sget-boolean v0, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v0, :cond_8

    .line 890
    const/4 v3, -0x7

    .line 897
    :cond_7
    :goto_7
    return v3

    .line 892
    :cond_8
    const/4 v2, 0x3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 893
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 896
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {p0, v0, v2, v1}, Lcom/infraware/filemanager/manager/FileManager;->addMedia(Ljava/lang/String;Ljava/lang/String;I)V

    .line 897
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private deleteWebFile(Lcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I
    .registers 13
    .parameter "deleteItem"
    .parameter "id"
    .parameter "resultHandler"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v3, -0x1

    .line 902
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v8

    .line 903
    .local v8, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    iget v7, p1, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 905
    .local v7, serviceType:I
    const-string v4, ""

    .line 906
    .local v4, strMessage:Ljava/lang/String;
    iget v0, p1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-ne v0, v1, :cond_3b

    .line 907
    const-string v4, "Google docs - "

    .line 911
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    .line 912
    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 914
    const/4 v6, 0x1

    .line 915
    .local v6, result:Z
    iget-boolean v0, p1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v0, :cond_42

    .line 916
    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v7, p2, v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeFolder(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 920
    :goto_38
    if-nez v6, :cond_4b

    .line 923
    :goto_3a
    return v3

    .line 908
    .end local v6           #result:Z
    :cond_3b
    iget v0, p1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-ne v0, v2, :cond_11

    .line 909
    const-string v4, "Box.net - "

    goto :goto_11

    .line 918
    .restart local v6       #result:Z
    :cond_42
    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v7, p2, v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_38

    .line 923
    :cond_4b
    const/4 v3, 0x0

    goto :goto_3a
.end method

.method private getDuplicateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "path"
    .parameter "name"

    .prologue
    const/4 v11, 0x0

    .line 1043
    const/16 v4, 0x41

    .line 1044
    .local v4, maxLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    const/16 v7, 0x3e8

    if-lt v2, v7, :cond_b

    .line 1067
    const-string v7, ""

    :goto_a
    return-object v7

    .line 1046
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Copy_%03d_"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v5, v4, v7

    .line 1048
    .local v5, nOverSize:I
    if-gez v5, :cond_60

    .line 1050
    const/16 v7, 0x2e

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1053
    .local v3, index:I
    if-ltz v3, :cond_43

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    const/4 v8, 0x5

    if-le v7, v8, :cond_87

    .line 1054
    :cond_43
    const-string v0, ""

    .line 1058
    .local v0, ext:Ljava/lang/String;
    :goto_45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1059
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1062
    .end local v0           #ext:Ljava/lang/String;
    .end local v3           #index:I
    :cond_60
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v6, targetFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8c

    .line 1064
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 1056
    .end local v6           #targetFile:Ljava/io/File;
    .restart local v3       #index:I
    :cond_87
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #ext:Ljava/lang/String;
    goto :goto_45

    .line 1044
    .end local v0           #ext:Ljava/lang/String;
    .end local v3           #index:I
    .restart local v6       #targetFile:Ljava/io/File;
    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4
.end method

.method private getFileCount(Ljava/io/File;I)I
    .registers 11
    .parameter "file"
    .parameter "deleteMode"

    .prologue
    const/4 v4, 0x0

    .line 998
    sget-boolean v5, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v5, :cond_7

    .line 999
    const/4 v0, -0x7

    .line 1038
    :cond_6
    :goto_6
    return v0

    .line 1001
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1003
    packed-switch p2, :pswitch_data_48

    move v0, v4

    .line 1011
    goto :goto_6

    .line 1007
    :pswitch_12
    const/16 v0, -0xf

    goto :goto_6

    .line 1009
    :pswitch_15
    const/16 v0, -0x10

    goto :goto_6

    .line 1015
    :cond_18
    :pswitch_18
    const/4 v3, 0x1

    .line 1016
    .local v3, totalCount:I
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, result:I
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1021
    .local v2, subLists:[Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 1024
    const/4 v0, 0x0

    .line 1025
    array-length v5, v2

    :goto_28
    if-lt v4, v5, :cond_2c

    .end local v0           #result:I
    .end local v2           #subLists:[Ljava/lang/String;
    :goto_2a
    move v0, v3

    .line 1038
    goto :goto_6

    .line 1025
    .restart local v0       #result:I
    .restart local v2       #subLists:[Ljava/lang/String;
    :cond_2c
    aget-object v1, v2, v4

    .line 1027
    .local v1, subItem:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6, p2}, Lcom/infraware/filemanager/manager/FileManager;->getFileCount(Ljava/io/File;I)I

    move-result v0

    .line 1029
    if-ltz v0, :cond_6

    .line 1032
    add-int/2addr v3, v0

    .line 1025
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1036
    .end local v0           #result:I
    .end local v1           #subItem:Ljava/lang/String;
    .end local v2           #subLists:[Ljava/lang/String;
    :cond_3d
    sget-wide v4, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    goto :goto_2a

    .line 1003
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_18
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public static getInstance()Lcom/infraware/filemanager/manager/FileManager;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/infraware/filemanager/manager/FileManager;->m_oFileManager:Lcom/infraware/filemanager/manager/FileManager;

    if-nez v0, :cond_13

    .line 55
    const-class v1, Lcom/infraware/filemanager/manager/FileManager;

    monitor-enter v1

    .line 56
    :try_start_7
    sget-object v0, Lcom/infraware/filemanager/manager/FileManager;->m_oFileManager:Lcom/infraware/filemanager/manager/FileManager;

    if-nez v0, :cond_12

    .line 57
    new-instance v0, Lcom/infraware/filemanager/manager/FileManager;

    invoke-direct {v0}, Lcom/infraware/filemanager/manager/FileManager;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/manager/FileManager;->m_oFileManager:Lcom/infraware/filemanager/manager/FileManager;

    .line 55
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    .line 61
    :cond_13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    .line 62
    sget-object v0, Lcom/infraware/filemanager/manager/FileManager;->m_oFileManager:Lcom/infraware/filemanager/manager/FileManager;

    return-object v0

    .line 55
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private isActionItemEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1129
    iget-object v1, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    if-nez v1, :cond_6

    .line 1135
    :cond_5
    :goto_5
    return v0

    .line 1132
    :cond_6
    iget-object v1, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1135
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isActionItemExist(Ljava/lang/String;)Z
    .registers 5
    .parameter "path"

    .prologue
    .line 1117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v2

    if-lt v0, v2, :cond_b

    .line 1124
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 1119
    :cond_b
    iget-object v2, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 1120
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    invoke-direct {p0, v1, p1}, Lcom/infraware/filemanager/manager/FileManager;->isItemExist(Lcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1121
    const/4 v2, 0x1

    goto :goto_a

    .line 1117
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isItemExist(Lcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;)Z
    .registers 6
    .parameter "item"
    .parameter "path"

    .prologue
    .line 1109
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1110
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1111
    const/4 v1, 0x1

    .line 1113
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private isRecursivePath(Ljava/lang/String;)Z
    .registers 9
    .parameter "targetPath"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1072
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v5, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v5

    if-lt v0, v5, :cond_d

    move v3, v4

    .line 1091
    :cond_c
    :goto_c
    return v3

    .line 1074
    :cond_d
    iget-object v5, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v5, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 1075
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v5, v1, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v5, :cond_1a

    .line 1072
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1078
    :cond_1a
    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, sourcePath:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_17

    .line 1082
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_17

    .line 1084
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_c

    .line 1086
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_17

    goto :goto_c
.end method

.method private postRename(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "file"
    .parameter "originPath"
    .parameter "renamePath"

    .prologue
    .line 937
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 956
    :cond_6
    :goto_6
    return-void

    .line 940
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 942
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 943
    .local v2, subLists:[Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 946
    array-length v5, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v5, :cond_6

    aget-object v1, v2, v4

    .line 947
    .local v1, subItem:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6, p2, p3}, Lcom/infraware/filemanager/manager/FileManager;->postRename(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 951
    .end local v1           #subItem:Ljava/lang/String;
    .end local v2           #subLists:[Ljava/lang/String;
    :cond_24
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 952
    .local v3, targetPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, sourcePath:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-direct {p0, v0, v3, v4}, Lcom/infraware/filemanager/manager/FileManager;->addMedia(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6
.end method

.method private preOperation(I)I
    .registers 11
    .parameter "deleteMode"

    .prologue
    const-wide/16 v5, 0x0

    .line 965
    sput-wide v5, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    .line 966
    sput-wide v5, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressIndex:J

    .line 968
    const/4 v0, 0x0

    .line 969
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    iget-object v5, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v5

    if-lt v2, v5, :cond_12

    move v4, v0

    .line 987
    :cond_11
    return v4

    .line 971
    :cond_12
    iget-object v5, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v5, v2}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v3

    .line 972
    .local v3, item:Lcom/infraware/filemanager/file/FileListItem;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 973
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 975
    invoke-direct {p0, v1, p1}, Lcom/infraware/filemanager/manager/FileManager;->getFileCount(Ljava/io/File;I)I

    move-result v4

    .line 976
    .local v4, result:I
    if-ltz v4, :cond_11

    .line 977
    add-int/2addr v0, v4

    .line 969
    .end local v4           #result:I
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 983
    :cond_31
    sget-wide v5, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    sput-wide v5, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e
.end method

.method private searchDirectory(Ljava/io/File;ILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I
    .registers 24
    .parameter "searchPath"
    .parameter "searchType"
    .parameter "searchWord"
    .parameter "resultHandler"

    .prologue
    .line 502
    sget-boolean v4, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v4, :cond_6

    .line 503
    const/4 v13, -0x7

    .line 568
    :cond_5
    :goto_5
    return v13

    .line 505
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 506
    const/4 v13, 0x0

    goto :goto_5

    .line 508
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_16

    .line 509
    const/4 v13, 0x0

    goto :goto_5

    .line 511
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    .line 512
    .local v16, subLists:[Ljava/lang/String;
    if-nez v16, :cond_1e

    .line 513
    const/4 v13, 0x0

    goto :goto_5

    .line 515
    :cond_1e
    const/4 v13, 0x0

    .line 516
    .local v13, result:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_27
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    aget-object v15, v16, v17

    .line 518
    .local v15, subItem:Ljava/lang/String;
    sget-boolean v4, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v4, :cond_35

    .line 519
    const/4 v13, -0x7

    goto :goto_5

    .line 521
    :cond_35
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 522
    .local v14, searchFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 523
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/infraware/filemanager/manager/FileManager;->searchDirectory(Ljava/io/File;ILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v13

    .line 564
    :cond_4e
    :goto_4e
    if-nez v13, :cond_5

    .line 516
    :cond_50
    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    goto :goto_27

    .line 526
    :cond_55
    invoke-virtual {v14}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_50

    .line 529
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 530
    .local v11, fileName:Ljava/lang/String;
    if-nez p2, :cond_7f

    .line 532
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 533
    const/16 v5, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto :goto_4e

    .line 537
    :cond_7f
    const/16 v4, 0x2e

    invoke-virtual {v11, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 538
    .local v12, idx_exe:I
    if-lez v12, :cond_50

    .line 541
    add-int/lit8 v4, v12, 0x1

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 542
    .local v10, ext:Ljava/lang/String;
    packed-switch p2, :pswitch_data_10c

    goto :goto_4e

    .line 545
    :pswitch_91
    const-string v4, "doc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a1

    const-string v4, "docx"

    invoke-virtual {v10, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4e

    .line 546
    :cond_a1
    const/16 v5, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto :goto_4e

    .line 549
    :pswitch_b1
    const-string v4, "xls"

    invoke-virtual {v10, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_c1

    const-string v4, "xlsx"

    invoke-virtual {v10, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4e

    .line 550
    :cond_c1
    const/16 v5, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto/16 :goto_4e

    .line 553
    :pswitch_d2
    const-string v4, "ppt"

    invoke-virtual {v10, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_e2

    const-string v4, "pptx"

    invoke-virtual {v10, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4e

    .line 554
    :cond_e2
    const/16 v5, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto/16 :goto_4e

    .line 557
    :pswitch_f3
    const-string v4, "pdf"

    invoke-virtual {v10, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4e

    .line 558
    const/16 v5, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto/16 :goto_4e

    .line 542
    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_91
        :pswitch_b1
        :pswitch_d2
        :pswitch_f3
    .end packed-switch
.end method

.method private searchDirectory(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I
    .registers 23
    .parameter "searchPath"
    .parameter "searchType"
    .parameter "searchWord"
    .parameter "type"
    .parameter "id"
    .parameter "resultHandler"

    .prologue
    .line 573
    sget-boolean v2, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v2, :cond_6

    .line 574
    const/4 v13, -0x7

    .line 643
    :cond_5
    :goto_5
    return v13

    .line 576
    :cond_6
    const/4 v13, 0x0

    .line 578
    .local v13, result:I
    invoke-static/range {p4 .. p4}, Lcom/infraware/filemanager/file/FileBaseActivity;->convertTypeToService(I)I

    move-result v14

    .line 579
    .local v14, serviceType:I
    if-nez v14, :cond_f

    .line 580
    const/4 v13, 0x0

    goto :goto_5

    .line 582
    :cond_f
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v15

    .line 583
    .local v15, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v15, v14, v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getFirst(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    move-result-object v8

    .line 584
    .local v8, webFile:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    :cond_1b
    :goto_1b
    if-eqz v8, :cond_5

    .line 586
    iget-boolean v2, v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    if-eqz v2, :cond_74

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, subPath:Ljava/lang/String;
    iget-object v2, v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_59

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_59
    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 592
    invoke-direct/range {v2 .. v8}, Lcom/infraware/filemanager/manager/FileManager;->searchDirectory(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    .end local v8           #webFile:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    move-result v13

    .line 637
    .end local v3           #subPath:Ljava/lang/String;
    :cond_69
    :goto_69
    if-nez v13, :cond_5

    .line 640
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v15, v14, v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getNext(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    move-result-object v8

    .restart local v8       #webFile:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    goto :goto_1b

    .line 596
    :cond_74
    sget-boolean v2, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v2, :cond_7a

    .line 597
    const/4 v13, -0x7

    goto :goto_5

    .line 599
    :cond_7a
    iget-object v11, v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    .line 600
    .local v11, fileName:Ljava/lang/String;
    iget-object v2, v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    if-eqz v2, :cond_a1

    iget-object v2, v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a1

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 603
    :cond_a1
    if-nez p2, :cond_bd

    .line 605
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 606
    const/16 v5, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/Object;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto :goto_69

    .line 610
    :cond_bd
    const/16 v2, 0x2e

    invoke-virtual {v11, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 611
    .local v12, idx_exe:I
    if-lez v12, :cond_1b

    .line 614
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 615
    .local v10, ext:Ljava/lang/String;
    packed-switch p2, :pswitch_data_13c

    goto :goto_69

    .line 618
    :pswitch_cf
    const-string v2, "doc"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_df

    const-string v2, "docx"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_69

    .line 619
    :cond_df
    const/16 v5, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/Object;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto/16 :goto_69

    .line 622
    :pswitch_ec
    const-string v2, "xls"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_fc

    const-string v2, "xlsx"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_69

    .line 623
    :cond_fc
    const/16 v5, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/Object;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto/16 :goto_69

    .line 626
    :pswitch_109
    const-string v2, "ppt"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_119

    const-string v2, "pptx"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_69

    .line 627
    :cond_119
    const/16 v5, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/Object;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto/16 :goto_69

    .line 630
    :pswitch_126
    const-string v2, "pdf"

    invoke-virtual {v10, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_69

    .line 631
    const/16 v5, 0x14

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/Object;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto/16 :goto_69

    .line 615
    nop

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_ec
        :pswitch_109
        :pswitch_126
    .end packed-switch
.end method

.method private sendProgress(IIILjava/lang/Object;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V
    .registers 7
    .parameter "aOpCode"
    .parameter "aProgCode"
    .parameter "aValue"
    .parameter "strObj"
    .parameter "resultHandler"

    .prologue
    .line 1155
    if-eqz p5, :cond_11

    .line 1157
    invoke-virtual {p5}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1159
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1160
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1161
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1162
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1164
    invoke-virtual {p5, v0}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1166
    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    return-void
.end method

.method private sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V
    .registers 7
    .parameter "aOpCode"
    .parameter "aProgCode"
    .parameter "aValue"
    .parameter "strMsg"
    .parameter "resultHandler"

    .prologue
    .line 1140
    if-eqz p5, :cond_11

    .line 1142
    invoke-virtual {p5}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1144
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1145
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1146
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1147
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1149
    invoke-virtual {p5, v0}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1151
    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    return-void
.end method


# virtual methods
.method public delete(Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I
    .registers 16
    .parameter "resultHandler"

    .prologue
    const/4 v13, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 263
    const-string v4, ""

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 264
    invoke-direct {p0}, Lcom/infraware/filemanager/manager/FileManager;->isActionItemEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 266
    const-string v4, ""

    move-object v0, p0

    move v2, v13

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 267
    const/4 v7, -0x4

    .line 307
    :goto_1a
    return v7

    .line 270
    :cond_1b
    const/4 v7, 0x0

    .line 271
    .local v7, totalCount:I
    iget-object v0, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileSelectedList;->getType()I

    move-result v0

    if-ne v0, v2, :cond_33

    .line 272
    invoke-direct {p0, v2}, Lcom/infraware/filemanager/manager/FileManager;->preOperation(I)I

    move-result v7

    .line 276
    :goto_28
    if-gez v7, :cond_3a

    .line 278
    const-string v4, ""

    move-object v0, p0

    move v2, v13

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto :goto_1a

    .line 274
    :cond_33
    iget-object v0, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v7

    goto :goto_28

    .line 282
    :cond_3a
    const-string v8, ""

    move-object v4, p0

    move v5, v1

    move v6, v2

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 284
    const/4 v11, -0x1

    .line 285
    .local v11, fmResult:I
    iget-object v0, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0, v3}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v12

    .line 286
    .local v12, item:Lcom/infraware/filemanager/file/FileListItem;
    :goto_4a
    if-nez v12, :cond_56

    .line 305
    const-string v4, ""

    move-object v0, p0

    move v2, v13

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    move v7, v11

    .line 307
    goto :goto_1a

    .line 288
    :cond_56
    sget-boolean v0, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v0, :cond_5c

    .line 289
    const/4 v7, -0x7

    goto :goto_1a

    .line 291
    :cond_5c
    iget-object v0, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileSelectedList;->getType()I

    move-result v0

    if-ne v0, v2, :cond_86

    .line 293
    new-instance v10, Ljava/io/File;

    invoke-virtual {v12}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v10, deleteFile:Ljava/io/File;
    iget-boolean v0, v12, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v0, :cond_81

    .line 295
    invoke-direct {p0, v10, p1}, Lcom/infraware/filemanager/manager/FileManager;->deleteDirectory(Ljava/io/File;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v11

    .line 302
    .end local v10           #deleteFile:Ljava/io/File;
    :goto_75
    iget-object v0, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0, v3}, Lcom/infraware/filemanager/file/FileSelectedList;->remove(I)Lcom/infraware/filemanager/file/FileListItem;

    .line 303
    iget-object v0, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0, v3}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v12

    goto :goto_4a

    .line 297
    .restart local v10       #deleteFile:Ljava/io/File;
    :cond_81
    invoke-direct {p0, v10, p1}, Lcom/infraware/filemanager/manager/FileManager;->deleteFile(Ljava/io/File;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v11

    goto :goto_75

    .line 300
    .end local v10           #deleteFile:Ljava/io/File;
    :cond_86
    iget-object v0, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileSelectedList;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v12, v0, p1}, Lcom/infraware/filemanager/manager/FileManager;->deleteWebFile(Lcom/infraware/filemanager/file/FileListItem;Ljava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v11

    goto :goto_75
.end method

.method public download(Lcom/infraware/filemanager/async/FileAsyncControlHandler;Lcom/infraware/filemanager/file/FileListItem;Z)I
    .registers 27
    .parameter "resultHandler"
    .parameter "targetItem"
    .parameter "isOverwrite"

    .prologue
    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/infraware/filemanager/manager/FileManager;->isActionItemEmpty()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 339
    const/16 v19, -0x4

    .line 381
    :goto_8
    return v19

    .line 341
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/infraware/filemanager/file/FileSelectedList;->getType()I

    move-result v17

    .line 342
    .local v17, type:I
    invoke-static/range {v17 .. v17}, Lcom/infraware/filemanager/file/FileBaseActivity;->convertTypeToService(I)I

    move-result v17

    .line 343
    if-nez v17, :cond_1c

    .line 344
    const/16 v19, -0x6

    goto :goto_8

    .line 346
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/infraware/filemanager/file/FileSelectedList;->getId()Ljava/lang/String;

    move-result-object v11

    .line 347
    .local v11, id:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 349
    .local v5, downloadSize:J
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v16, sourceList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v10, v0, :cond_6e

    .line 360
    const/4 v9, 0x0

    .line 361
    .local v9, freeBlock:I
    const/4 v4, 0x0

    .line 363
    .local v4, blockSize:I
    :try_start_3e
    new-instance v15, Landroid/os/StatFs;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 364
    .local v15, sf:Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    .line 365
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_52} :catch_93

    move-result v4

    .line 369
    const-wide/32 v19, 0x500000

    cmp-long v19, v5, v19

    if-lez v19, :cond_98

    const-wide/32 v19, 0x280000

    add-long v19, v19, v5

    :goto_5f
    int-to-long v0, v4

    move-wide/from16 v21, v0

    div-long v13, v19, v21

    .line 370
    .local v13, minFree:J
    int-to-long v0, v9

    move-wide/from16 v19, v0

    cmp-long v19, v19, v13

    if-gez v19, :cond_9f

    .line 371
    const/16 v19, -0xc

    goto :goto_8

    .line 352
    .end local v4           #blockSize:I
    .end local v9           #freeBlock:I
    .end local v13           #minFree:J
    .end local v15           #sf:Landroid/os/StatFs;
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v12

    .line 353
    .local v12, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v12, :cond_7f

    .line 354
    const/16 v19, -0x1

    goto :goto_8

    .line 356
    :cond_7f
    iget-wide v0, v12, Lcom/infraware/filemanager/file/FileListItem;->size:J

    move-wide/from16 v19, v0

    add-long v5, v5, v19

    .line 357
    invoke-virtual {v12}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 366
    .end local v12           #item:Lcom/infraware/filemanager/file/FileListItem;
    .restart local v4       #blockSize:I
    .restart local v9       #freeBlock:I
    :catch_93
    move-exception v8

    .line 367
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const/16 v19, -0xc

    goto/16 :goto_8

    .line 369
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .restart local v15       #sf:Landroid/os/StatFs;
    :cond_98
    const-wide/16 v19, 0x2

    div-long v19, v5, v19

    add-long v19, v19, v5

    goto :goto_5f

    .line 374
    .restart local v13       #minFree:J
    :cond_9f
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v18

    .line 376
    .local v18, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    const-string v19, "DOWNLOAD"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->createThreadByType(Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v7

    check-cast v7, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;

    .line 377
    .local v7, downloadThread:Lcom/infraware/filemanager/webstorage/thread/DownloadThread;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->setSourceList(Ljava/util/List;)V

    .line 378
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->setTargetPath(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v7}, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->start()V

    .line 381
    const/16 v19, 0x0

    goto/16 :goto_8
.end method

.method public isEmpty()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 440
    iget-object v6, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileSelectedList;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_60

    .line 469
    :cond_a
    const/4 v5, 0x1

    :cond_b
    return v5

    .line 443
    :pswitch_c
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    iget-object v6, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 445
    iget-object v6, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6, v1}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v3

    .line 446
    .local v3, item:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v6, v3, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v6, :cond_31

    .line 448
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, fileList:[Ljava/lang/String;
    if-eqz v0, :cond_31

    array-length v6, v0

    if-gtz v6, :cond_b

    .line 443
    .end local v0           #fileList:[Ljava/lang/String;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 456
    .end local v1           #i:I
    .end local v3           #item:Lcom/infraware/filemanager/file/FileListItem;
    :pswitch_34
    iget-object v6, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileSelectedList;->getId()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, id:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v4

    .line 458
    .local v4, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3f
    iget-object v6, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 460
    iget-object v6, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v6, v1}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v3

    .line 461
    .restart local v3       #item:Lcom/infraware/filemanager/file/FileListItem;
    iget-boolean v6, v3, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v6, :cond_5d

    .line 463
    iget v6, v3, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    invoke-virtual {v3}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v2, v7}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getFirst(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    move-result-object v6

    if-nez v6, :cond_b

    .line 458
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 440
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_c
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method public isExist(Ljava/lang/String;)Z
    .registers 4
    .parameter "fileName"

    .prologue
    .line 474
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 476
    const/4 v1, 0x1

    .line 478
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isExist(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7
    .parameter "fileName"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 483
    packed-switch p2, :pswitch_data_1a

    .line 497
    :cond_3
    const/4 v2, 0x0

    :goto_4
    return v2

    .line 486
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/infraware/filemanager/manager/FileManager;->isExist(Ljava/lang/String;)Z

    move-result v2

    goto :goto_4

    .line 489
    :pswitch_a
    invoke-static {p2}, Lcom/infraware/filemanager/file/FileBaseActivity;->convertTypeToService(I)I

    move-result v0

    .line 490
    .local v0, serviceType:I
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v1

    .line 491
    .local v1, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v1, v0, p3, p1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->isExist(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 492
    const/4 v2, 0x1

    goto :goto_4

    .line 483
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public paste(Lcom/infraware/filemanager/async/FileAsyncControlHandler;Lcom/infraware/filemanager/file/FileListItem;ZI)I
    .registers 23
    .parameter "resultHandler"
    .parameter "targetItem"
    .parameter "isOverwrite"
    .parameter "nOperation"

    .prologue
    .line 118
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->getMode()I

    move-result v14

    .line 120
    .local v14, mode:I
    invoke-direct/range {p0 .. p0}, Lcom/infraware/filemanager/manager/FileManager;->isActionItemEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 122
    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 123
    const/4 v12, -0x4

    .line 258
    :goto_29
    return v12

    .line 126
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->getType()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3c

    move-object/from16 v0, p2

    iget v2, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4b

    .line 128
    :cond_3c
    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 129
    const/4 v12, -0x6

    goto :goto_29

    .line 132
    :cond_4b
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v2, :cond_60

    .line 134
    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 135
    const/4 v12, -0x1

    goto :goto_29

    .line 138
    :cond_60
    invoke-virtual/range {p2 .. p2}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 139
    .local v16, targetPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_86

    .line 141
    const/4 v2, 0x1

    if-eq v14, v2, :cond_a1

    .line 148
    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 149
    const/4 v12, -0x2

    goto :goto_29

    .line 154
    :cond_86
    if-nez p3, :cond_a1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/manager/FileManager;->isActionItemExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 156
    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 157
    const/4 v12, -0x3

    goto :goto_29

    .line 161
    :cond_a1
    sget-boolean v2, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v2, :cond_a7

    .line 162
    const/4 v12, -0x7

    goto :goto_29

    .line 164
    :cond_a7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/manager/FileManager;->isRecursivePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 166
    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 167
    const/16 v12, -0xb

    goto/16 :goto_29

    .line 170
    :cond_c2
    sget-boolean v2, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v2, :cond_d6

    .line 172
    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 173
    const/4 v12, -0x7

    goto/16 :goto_29

    .line 176
    :cond_d6
    const/4 v2, 0x1

    if-ne v14, v2, :cond_f3

    const/4 v2, 0x0

    :goto_da
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/infraware/filemanager/manager/FileManager;->preOperation(I)I

    move-result v17

    .line 177
    .local v17, totalCount:I
    if-gez v17, :cond_f5

    .line 179
    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    move/from16 v12, v17

    .line 180
    goto/16 :goto_29

    .line 176
    .end local v17           #totalCount:I
    :cond_f3
    const/4 v2, 0x2

    goto :goto_da

    .line 183
    .restart local v17       #totalCount:I
    :cond_f5
    sget-wide v6, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    const-wide/32 v8, 0x100000

    cmp-long v2, v6, v8

    if-lez v2, :cond_184

    sget-wide v6, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    const-wide/32 v8, 0x40000000

    cmp-long v2, v6, v8

    if-gtz v2, :cond_184

    .line 184
    const/16 v2, 0x400

    sput v2, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    .line 190
    :goto_10b
    const/4 v12, -0x1

    .line 191
    .local v12, fmResult:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->getMode()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_198

    const/4 v5, 0x1

    .line 193
    .local v5, isDeleteSource:Z
    :goto_118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v13

    .line 194
    .local v13, item:Lcom/infraware/filemanager/file/FileListItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v2}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1aa

    iget-boolean v2, v13, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-nez v2, :cond_1aa

    .line 196
    new-instance v3, Ljava/io/File;

    invoke-virtual {v13}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v3, sourceFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v4, targetFile:Ljava/io/File;
    const/4 v15, 0x0

    .line 200
    .local v15, result:Z
    if-eqz v5, :cond_160

    .line 201
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    .line 203
    :cond_160
    if-nez v15, :cond_19b

    .line 205
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->copyFile(Ljava/io/File;Ljava/io/File;ZLcom/infraware/filemanager/async/FileAsyncControlHandler;Z)I

    move-result v12

    .line 213
    :goto_16b
    if-nez v12, :cond_175

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/infraware/filemanager/file/FileSelectedList;->remove(I)Lcom/infraware/filemanager/file/FileListItem;

    .line 216
    :cond_175
    const/4 v8, 0x5

    const/4 v9, 0x0

    const-string v10, ""

    move-object/from16 v6, p0

    move/from16 v7, p4

    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto/16 :goto_29

    .line 185
    .end local v3           #sourceFile:Ljava/io/File;
    .end local v4           #targetFile:Ljava/io/File;
    .end local v5           #isDeleteSource:Z
    .end local v12           #fmResult:I
    .end local v13           #item:Lcom/infraware/filemanager/file/FileListItem;
    .end local v15           #result:Z
    :cond_184
    sget-wide v6, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    const-wide/32 v8, 0x40000000

    cmp-long v2, v6, v8

    if-lez v2, :cond_193

    .line 186
    const/high16 v2, 0x10

    sput v2, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    goto/16 :goto_10b

    .line 188
    :cond_193
    const/4 v2, 0x1

    sput v2, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    goto/16 :goto_10b

    .line 191
    .restart local v12       #fmResult:I
    :cond_198
    const/4 v5, 0x0

    goto/16 :goto_118

    .line 209
    .restart local v3       #sourceFile:Ljava/io/File;
    .restart local v4       #targetFile:Ljava/io/File;
    .restart local v5       #isDeleteSource:Z
    .restart local v13       #item:Lcom/infraware/filemanager/file/FileListItem;
    .restart local v15       #result:Z
    :cond_19b
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v6}, Lcom/infraware/filemanager/manager/FileManager;->postRename(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v12, 0x0

    goto :goto_16b

    .line 220
    .end local v3           #sourceFile:Ljava/io/File;
    .end local v4           #targetFile:Ljava/io/File;
    .end local v15           #result:Z
    :cond_1aa
    const/4 v8, 0x1

    sget-wide v6, Lcom/infraware/filemanager/manager/FileManager;->m_nTotalSize:J

    sget v2, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    int-to-long v9, v2

    div-long/2addr v6, v9

    long-to-int v9, v6

    const-string v10, ""

    move-object/from16 v6, p0

    move/from16 v7, p4

    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 221
    const/4 v8, 0x2

    sget v9, Lcom/infraware/filemanager/manager/FileManager;->m_nProgressUnit:I

    const-string v10, ""

    move-object/from16 v6, p0

    move/from16 v7, p4

    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 223
    :goto_1cb
    if-nez v13, :cond_1dc

    .line 257
    :cond_1cd
    const/4 v8, 0x5

    const/4 v9, 0x0

    const-string v10, ""

    move-object/from16 v6, p0

    move/from16 v7, p4

    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto/16 :goto_29

    .line 225
    :cond_1dc
    sget-boolean v2, Lcom/infraware/filemanager/manager/FileManager;->m_bCancel:Z

    if-eqz v2, :cond_1e3

    .line 226
    const/4 v12, -0x7

    goto/16 :goto_29

    .line 228
    :cond_1e3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v13}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .restart local v3       #sourceFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .restart local v4       #targetFile:Ljava/io/File;
    const/4 v15, 0x0

    .line 232
    .restart local v15       #result:Z
    if-eqz v5, :cond_213

    .line 233
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    .line 235
    :cond_213
    if-nez v15, :cond_241

    .line 237
    iget-boolean v2, v13, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v2, :cond_237

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/infraware/filemanager/manager/FileManager;->copyDirectory(Ljava/io/File;Ljava/io/File;ZLcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v12

    .line 242
    :goto_221
    if-nez v12, :cond_1cd

    .line 251
    :goto_223
    if-nez v12, :cond_22d

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/infraware/filemanager/file/FileSelectedList;->remove(I)Lcom/infraware/filemanager/file/FileListItem;

    .line 254
    :cond_22d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v13

    goto :goto_1cb

    .line 240
    :cond_237
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->copyFile(Ljava/io/File;Ljava/io/File;ZLcom/infraware/filemanager/async/FileAsyncControlHandler;Z)I

    move-result v12

    goto :goto_221

    .line 247
    :cond_241
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v6}, Lcom/infraware/filemanager/manager/FileManager;->postRename(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v12, 0x0

    goto :goto_223
.end method

.method public rename(Ljava/lang/String;Z)I
    .registers 10
    .parameter "newName"
    .parameter "isExt"

    .prologue
    const/4 v4, 0x0

    .line 312
    invoke-direct {p0}, Lcom/infraware/filemanager/manager/FileManager;->isActionItemEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 313
    const/4 v4, -0x4

    .line 333
    :goto_8
    return v4

    .line 315
    :cond_9
    iget-object v5, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v5, v4}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 316
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v2, sourceFile:Ljava/io/File;
    const-string v0, ""

    .line 319
    .local v0, ext:Ljava/lang/String;
    if-nez p2, :cond_39

    iget-object v5, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v5, :cond_39

    iget-object v5, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_39

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_39
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileListItem;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .local v3, targetFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 324
    const/4 v4, -0x3

    goto :goto_8

    .line 327
    :cond_65
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 329
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6}, Lcom/infraware/filemanager/manager/FileManager;->postRename(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 333
    :cond_77
    const/4 v4, -0x1

    goto :goto_8
.end method

.method public search(Lcom/infraware/filemanager/async/FileAsyncControlHandler;Lcom/infraware/filemanager/file/FileListItem;)I
    .registers 16
    .parameter "resultHandler"
    .parameter "searchItem"

    .prologue
    .line 72
    iget-object v10, p2, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 74
    .local v10, searchPath:Ljava/lang/String;
    iget v12, p2, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 75
    .local v12, type:I
    iget-object v0, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileSelectedList;->getId()Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, id:Ljava/lang/String;
    invoke-virtual {p0, v10, v12, v6}, Lcom/infraware/filemanager/manager/FileManager;->isExist(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 78
    const/4 v8, -0x5

    .line 113
    :cond_11
    :goto_11
    return v8

    .line 80
    :cond_12
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v9, searchFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 83
    .local v4, searchWord:Ljava/lang/String;
    const/4 v11, -0x1

    .line 84
    .local v11, searchType:I
    iget-object v0, p2, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p2, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 86
    const/4 v11, 0x0

    .line 87
    iget-object v4, p2, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 98
    :cond_28
    :goto_28
    const/4 v0, -0x1

    if-ne v11, v0, :cond_6d

    .line 99
    const/4 v8, -0x1

    goto :goto_11

    .line 89
    :cond_2d
    iget-object v0, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v0, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    const-string v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3d

    .line 90
    const/4 v11, 0x1

    goto :goto_28

    .line 91
    :cond_3d
    iget-object v0, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v0, :cond_4d

    iget-object v0, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    const-string v1, "xls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4d

    .line 92
    const/4 v11, 0x2

    goto :goto_28

    .line 93
    :cond_4d
    iget-object v0, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    const-string v1, "ppt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5d

    .line 94
    const/4 v11, 0x3

    goto :goto_28

    .line 95
    :cond_5d
    iget-object v0, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    const-string v1, "pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    .line 96
    const/4 v11, 0x4

    goto :goto_28

    .line 101
    :cond_6d
    const/4 v8, 0x0

    .line 102
    .local v8, result:I
    const/16 v1, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 104
    const/4 v0, 0x1

    if-ne v12, v0, :cond_94

    .line 105
    invoke-direct {p0, v9, v11, v4, p1}, Lcom/infraware/filemanager/manager/FileManager;->searchDirectory(Ljava/io/File;ILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v8

    .line 109
    :goto_7e
    const/16 v1, 0x14

    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    .line 110
    if-nez v8, :cond_11

    .line 111
    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/manager/FileManager;->sendProgress(IIILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)V

    goto/16 :goto_11

    :cond_94
    move-object v1, p0

    move-object v2, v10

    move v3, v11

    move v5, v12

    move-object v7, p1

    .line 107
    invoke-direct/range {v1 .. v7}, Lcom/infraware/filemanager/manager/FileManager;->searchDirectory(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/infraware/filemanager/async/FileAsyncControlHandler;)I

    move-result v8

    goto :goto_7e
.end method

.method public setItemList(Lcom/infraware/filemanager/file/FileSelectedList;)V
    .registers 2
    .parameter "list"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    .line 68
    return-void
.end method

.method public upload(Lcom/infraware/filemanager/async/FileAsyncControlHandler;Lcom/infraware/filemanager/file/FileListItem;Z)I
    .registers 27
    .parameter "resultHandler"
    .parameter "targetItem"
    .parameter "isOverwrite"

    .prologue
    .line 387
    move-object/from16 v0, p2

    iget v0, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    .line 388
    const/4 v14, 0x1

    .line 394
    .local v14, type:I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/infraware/filemanager/file/FileSelectedList;->getId()Ljava/lang/String;

    move-result-object v7

    .line 396
    .local v7, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v19

    if-nez v19, :cond_3b

    .line 397
    const/16 v19, -0x6

    .line 434
    .end local v7           #id:Ljava/lang/String;
    .end local v14           #type:I
    :goto_27
    return v19

    .line 389
    :cond_28
    move-object/from16 v0, p2

    iget v0, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_38

    .line 390
    const/4 v14, 0x2

    .restart local v14       #type:I
    goto :goto_f

    .line 392
    .end local v14           #type:I
    :cond_38
    const/16 v19, -0x6

    goto :goto_27

    .line 399
    .restart local v7       #id:Ljava/lang/String;
    .restart local v14       #type:I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 400
    .local v13, sourcePath:Ljava/lang/String;
    const-wide/16 v15, 0x0

    .line 402
    .local v15, uploadSize:J
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v12, sourceList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/infraware/filemanager/file/FileSelectedList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v6, v0, :cond_8b

    .line 413
    const/4 v5, 0x0

    .line 414
    .local v5, freeBlock:I
    const/4 v3, 0x0

    .line 416
    .local v3, blockSize:I
    :try_start_63
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 417
    .local v11, sf:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    .line 418
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_6f} :catch_ae

    move-result v3

    .line 422
    const-wide/32 v19, 0x500000

    cmp-long v19, v15, v19

    if-lez v19, :cond_b3

    const-wide/32 v19, 0x280000

    add-long v19, v19, v15

    :goto_7c
    int-to-long v0, v3

    move-wide/from16 v21, v0

    div-long v9, v19, v21

    .line 423
    .local v9, minFree:J
    int-to-long v0, v5

    move-wide/from16 v19, v0

    cmp-long v19, v19, v9

    if-gez v19, :cond_ba

    .line 424
    const/16 v19, -0xc

    goto :goto_27

    .line 405
    .end local v3           #blockSize:I
    .end local v5           #freeBlock:I
    .end local v9           #minFree:J
    .end local v11           #sf:Landroid/os/StatFs;
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/manager/FileManager;->m_oActionItemList:Lcom/infraware/filemanager/file/FileSelectedList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v8

    .line 406
    .local v8, item:Lcom/infraware/filemanager/file/FileListItem;
    if-nez v8, :cond_9c

    .line 407
    const/16 v19, -0x1

    goto :goto_27

    .line 409
    :cond_9c
    iget-wide v0, v8, Lcom/infraware/filemanager/file/FileListItem;->size:J

    move-wide/from16 v19, v0

    add-long v15, v15, v19

    .line 410
    invoke-virtual {v8}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 419
    .end local v8           #item:Lcom/infraware/filemanager/file/FileListItem;
    .restart local v3       #blockSize:I
    .restart local v5       #freeBlock:I
    :catch_ae
    move-exception v4

    .line 420
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const/16 v19, -0xc

    goto/16 :goto_27

    .line 422
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .restart local v11       #sf:Landroid/os/StatFs;
    :cond_b3
    const-wide/16 v19, 0x2

    div-long v19, v15, v19

    add-long v19, v19, v15

    goto :goto_7c

    .line 427
    .restart local v9       #minFree:J
    :cond_ba
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v18

    .line 429
    .local v18, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    const-string v19, "UPLOAD"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v14, v7, v2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->createThreadByType(Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v17

    check-cast v17, Lcom/infraware/filemanager/webstorage/thread/UploadThread;

    .line 430
    .local v17, uploadThread:Lcom/infraware/filemanager/webstorage/thread/UploadThread;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->setSourceList(Ljava/util/List;)V

    .line 431
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->setTargetPath(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->start()V

    .line 434
    const/16 v19, 0x0

    goto/16 :goto_27
.end method

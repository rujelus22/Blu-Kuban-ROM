.class Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;
.super Ljava/lang/Thread;
.source "MPrintMainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintThread"
.end annotation


# instance fields
.field private mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

.field private mTransactionID:I

.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService;ILcom/sec/android/app/mobileprint/MPrintJobItem;)V
    .registers 5
    .parameter
    .parameter "transactionID"
    .parameter "printJob"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    .line 430
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 431
    iput p2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mTransactionID:I

    .line 432
    iput-object p3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 433
    return-void
.end method

.method private printViaSAPS()V
    .registers 22

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$400(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    move-result-object v2

    if-eqz v2, :cond_1fb

    .line 523
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$400(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/print/mobileprint/ISamsungPrintingService;->registerCallback(Lcom/sec/print/mobileprint/IPrintStatusCallback;)V

    .line 525
    new-instance v15, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;

    invoke-direct {v15}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;-><init>()V

    .line 526
    .local v15, listPrintOptionAttribute:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    new-instance v2, Lcom/sec/print/mobileprint/printoptionattribute/Media;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v6, v6, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperType:Ljava/lang/String;

    const/16 v7, 0x32

    const/16 v8, 0x32

    const/16 v9, 0x32

    const/16 v10, 0x32

    invoke-direct/range {v2 .. v10}, Lcom/sec/print/mobileprint/printoptionattribute/Media;-><init>(Ljava/lang/String;IILjava/lang/String;IIII)V

    invoke-virtual {v15, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    .line 534
    new-instance v2, Lcom/sec/print/mobileprint/printoptionattribute/Copies;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    invoke-direct {v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/Copies;-><init>(I)V

    invoke-virtual {v15, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    if-nez v2, :cond_b6

    .line 537
    new-instance v2, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;

    sget-object v3, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->MONOCHROME:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    invoke-direct {v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;)V

    invoke-virtual {v15, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    .line 543
    :goto_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e2

    .line 544
    new-instance v2, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;

    sget-object v3, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_TWO_SIDE_SHORT_EDGE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    invoke-direct {v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;)V

    invoke-virtual {v15, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    .line 553
    :goto_7d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12b

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->getImageOrientation(Ljava/lang/String;)I

    move-result v17

    .line 555
    .local v17, orientation:I
    if-gez v17, :cond_123

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mTransactionID:I

    const/4 v4, 0x3

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintError(II)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$900(Lcom/sec/android/app/mobileprint/MPrintMainService;II)V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    sget-object v3, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    invoke-static {v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$702(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$Status;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$1000(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    .line 613
    .end local v15           #listPrintOptionAttribute:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    .end local v17           #orientation:I
    :goto_b5
    return-void

    .line 540
    .restart local v15       #listPrintOptionAttribute:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    :cond_b6
    new-instance v2, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;

    sget-object v3, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;->COLOR:Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;

    invoke-direct {v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/Chromaticity$EnumChromaticity;)V

    invoke-virtual {v15, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_c0} :catch_c1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_c0} :catch_f6

    goto :goto_6a

    .line 595
    .end local v15           #listPrintOptionAttribute:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    :catch_c1
    move-exception v12

    .line 596
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mTransactionID:I

    const/4 v4, 0x0

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintError(II)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$900(Lcom/sec/android/app/mobileprint/MPrintMainService;II)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    sget-object v3, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    invoke-static {v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$702(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$Status;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$1000(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    goto :goto_b5

    .line 546
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v15       #listPrintOptionAttribute:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    :cond_e2
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_117

    .line 547
    new-instance v2, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;

    sget-object v3, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_TWO_SIDE_LONG_EDGE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    invoke-direct {v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;)V

    invoke-virtual {v15, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_f5} :catch_c1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e2 .. :try_end_f5} :catch_f6

    goto :goto_7d

    .line 600
    .end local v15           #listPrintOptionAttribute:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    :catch_f6
    move-exception v12

    .line 601
    .local v12, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v12}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mTransactionID:I

    const/4 v4, 0x0

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintError(II)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$900(Lcom/sec/android/app/mobileprint/MPrintMainService;II)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    sget-object v3, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    invoke-static {v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$702(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$Status;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$1000(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    goto :goto_b5

    .line 550
    .end local v12           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v15       #listPrintOptionAttribute:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    :cond_117
    :try_start_117
    new-instance v2, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;

    sget-object v3, Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;->DUPLEX_ONE_SIDE:Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;

    invoke-direct {v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/Duplex;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/Duplex$EnumDuplex;)V

    invoke-virtual {v15, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    goto/16 :goto_7d

    .line 562
    .restart local v17       #orientation:I
    :cond_123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    move/from16 v0, v17

    iput v0, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    .line 565
    .end local v17           #orientation:I
    :cond_12b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_175

    .line 566
    new-instance v2, Lcom/sec/print/mobileprint/printoptionattribute/Orientation;

    sget-object v3, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->ORIENTATION_LANDSCAPE:Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    invoke-direct {v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/Orientation;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;)V

    invoke-virtual {v15, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    .line 572
    :goto_13e
    new-instance v16, Lcom/sec/print/mobileprint/pagedata/PageSet;

    invoke-direct/range {v16 .. v16}, Lcom/sec/print/mobileprint/pagedata/PageSet;-><init>()V

    .line 573
    .local v16, listPrintedPages:Lcom/sec/print/mobileprint/pagedata/PageSet;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_180

    .line 574
    new-instance v19, Lcom/sec/print/mobileprint/pagedata/Page;

    invoke-direct/range {v19 .. v19}, Lcom/sec/print/mobileprint/pagedata/Page;-><init>()V

    .line 575
    .local v19, pageOne:Lcom/sec/print/mobileprint/pagedata/Page;
    new-instance v14, Lcom/sec/print/mobileprint/pagedata/FileImageData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v14, v2}, Lcom/sec/print/mobileprint/pagedata/FileImageData;-><init>(Ljava/lang/String;)V

    .line 576
    .local v14, imagedata:Lcom/sec/print/mobileprint/pagedata/FileImageData;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/sec/print/mobileprint/pagedata/Page;->add(Lcom/sec/print/mobileprint/pagedata/IPageData;)V

    .line 577
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/print/mobileprint/pagedata/PageSet;->add(Lcom/sec/print/mobileprint/pagedata/Page;)V

    .line 573
    add-int/lit8 v13, v13, 0x1

    goto :goto_144

    .line 569
    .end local v13           #i:I
    .end local v14           #imagedata:Lcom/sec/print/mobileprint/pagedata/FileImageData;
    .end local v16           #listPrintedPages:Lcom/sec/print/mobileprint/pagedata/PageSet;
    .end local v19           #pageOne:Lcom/sec/print/mobileprint/pagedata/Page;
    :cond_175
    new-instance v2, Lcom/sec/print/mobileprint/printoptionattribute/Orientation;

    sget-object v3, Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;->ORIENTATION_PORTRAINT:Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;

    invoke-direct {v2, v3}, Lcom/sec/print/mobileprint/printoptionattribute/Orientation;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/Orientation$EnumOrientation;)V

    invoke-virtual {v15, v2}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    goto :goto_13e

    .line 580
    .restart local v13       #i:I
    .restart local v16       #listPrintedPages:Lcom/sec/print/mobileprint/pagedata/PageSet;
    :cond_180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorModel:I

    if-nez v2, :cond_1eb

    const/4 v11, 0x0

    .line 582
    .local v11, colorPrint:Z
    :goto_189
    const/16 v18, 0x0

    .line 583
    .local v18, output:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1ed

    .line 584
    new-instance v18, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;

    .end local v18           #output:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mIPAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPort:I

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;-><init>(Ljava/lang/String;I)V

    .line 590
    .restart local v18       #output:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    :goto_1a7
    new-instance v20, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mLanguages:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v3, v11, v1}, Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/sec/print/mobileprint/printerinfo/IOutputInfo;)V

    .line 591
    .local v20, printerInfo:Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$400(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v2, v15, v0, v1}, Lcom/sec/print/mobileprint/ISamsungPrintingService;->print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$400(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/print/mobileprint/ISamsungPrintingService;->unregisterCallback(Lcom/sec/print/mobileprint/IPrintStatusCallback;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mLastCallbackTime:J
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$1102(Lcom/sec/android/app/mobileprint/MPrintMainService;J)J

    goto/16 :goto_b5

    .line 580
    .end local v11           #colorPrint:Z
    .end local v18           #output:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    .end local v20           #printerInfo:Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;
    :cond_1eb
    const/4 v11, 0x1

    goto :goto_189

    .line 587
    .restart local v11       #colorPrint:Z
    .restart local v18       #output:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    :cond_1ed
    new-instance v18, Lcom/sec/print/mobileprint/printerinfo/USBOutputInfo;

    .end local v18           #output:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v2, v2, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mIPAddr:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/sec/print/mobileprint/printerinfo/USBOutputInfo;-><init>(Ljava/lang/String;)V
    :try_end_1fa
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_1fa} :catch_c1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_117 .. :try_end_1fa} :catch_f6

    .restart local v18       #output:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    goto :goto_1a7

    .line 608
    .end local v11           #colorPrint:Z
    .end local v13           #i:I
    .end local v15           #listPrintOptionAttribute:Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
    .end local v16           #listPrintedPages:Lcom/sec/print/mobileprint/pagedata/PageSet;
    .end local v18           #output:Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;
    :cond_1fb
    const-string v2, "MobilePrint"

    const-string v3, "PrintThread : mSAPSPrintService is not binded!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mTransactionID:I

    const/4 v4, 0x0

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintError(II)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$900(Lcom/sec/android/app/mobileprint/MPrintMainService;II)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    sget-object v3, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    invoke-static {v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$702(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$Status;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$1000(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    goto/16 :goto_b5
.end method

.method private simulate()V
    .registers 8

    .prologue
    .line 492
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    mul-int v3, v4, v5

    .line 493
    .local v3, totalPage:I
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->statusChanged(II)V

    .line 494
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->statusChanged(II)V

    .line 495
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 496
    const/4 v0, 0x1

    .local v0, copies:I
    :goto_29
    if-gt v0, v3, :cond_79

    .line 497
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->statusChanged(II)V

    .line 498
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 500
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3b
    const/16 v4, 0x64

    if-gt v2, v4, :cond_67

    .line 501
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$700(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->RUNNING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    if-eq v4, v5, :cond_55

    .line 502
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->statusChanged(II)V

    .line 518
    .end local v0           #copies:I
    .end local v2           #i:I
    .end local v3           #totalPage:I
    :goto_54
    return-void

    .line 505
    .restart local v0       #copies:I
    .restart local v2       #i:I
    .restart local v3       #totalPage:I
    :cond_55
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->statusChanged(II)V

    .line 506
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 509
    :cond_67
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->statusChanged(II)V

    .line 510
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 512
    .end local v2           #i:I
    :cond_79
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;->statusChanged(II)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_84} :catch_85
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_84} :catch_8a

    goto :goto_54

    .line 513
    .end local v0           #copies:I
    .end local v3           #totalPage:I
    :catch_85
    move-exception v1

    .line 514
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_54

    .line 515
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_8a
    move-exception v1

    .line 516
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_54
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 437
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->acqiureWakelock()V
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$500(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    .line 439
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Transaction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mTransactionID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Device : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Connected type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mConnectedType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] IA : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mIPAddr:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getIpAddressHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Port : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Color model : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorModel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Languages : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Number of copies : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Paper size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Paper orientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Print orientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Paper type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPaperType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Color mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mColorPrint:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SET] Duplex mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDuplexPrint:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, waitCount:I
    :goto_1b2
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$400(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    move-result-object v2

    if-nez v2, :cond_1de

    .line 457
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d3

    .line 458
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mTransactionID:I

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->mPrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    mul-int/2addr v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintStatus(IIII)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$600(Lcom/sec/android/app/mobileprint/MPrintMainService;IIII)V

    .line 460
    :cond_1d3
    const/16 v2, 0x64

    if-le v1, v2, :cond_1ec

    .line 461
    const-string v2, "MobilePrint"

    const-string v3, "PrintThread : mSAPSPrintService waiting timeout!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1de
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$700(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->REQUESTING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    if-ne v2, v3, :cond_1f9

    .line 479
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->printViaSAPS()V

    .line 488
    :goto_1eb
    return-void

    .line 465
    :cond_1ec
    add-int/lit8 v1, v1, 0x1

    .line 468
    const-wide/16 v2, 0xc8

    :try_start_1f0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f3
    .catch Ljava/lang/InterruptedException; {:try_start_1f0 .. :try_end_1f3} :catch_1f4

    goto :goto_1b2

    .line 469
    :catch_1f4
    move-exception v0

    .line 470
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1b2

    .line 482
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1f9
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$700(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->CANCELLING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    if-ne v2, v3, :cond_20b

    .line 483
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    sget-object v3, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    invoke-static {v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$702(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$Status;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    goto :goto_1eb

    .line 486
    :cond_20b
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PrintThread : It is not requesting status. mServiceStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$700(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1eb
.end method

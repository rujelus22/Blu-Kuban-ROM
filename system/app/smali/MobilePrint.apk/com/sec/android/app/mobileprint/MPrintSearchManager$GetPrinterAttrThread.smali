.class Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;
.super Ljava/lang/Thread;
.source "MPrintSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPrinterAttrThread"
.end annotation


# instance fields
.field mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V
    .registers 3
    .parameter
    .parameter "printer"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 390
    iput-object p2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 391
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x1

    .line 395
    const/4 v3, 0x0

    .line 397
    .local v3, result:Z
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->acqiureWakelock()V
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$1000(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)V

    .line 400
    new-instance v4, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    invoke-direct {v4}, Lcom/sec/print/mobileprint/dm/DeviceInfo;-><init>()V

    .line 401
    .local v4, selectedDevice:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDevice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setName(Ljava/lang/String;)V

    .line 402
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setHost(Ljava/lang/String;)V

    .line 403
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPort:I

    invoke-virtual {v4, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setPort(I)V

    .line 404
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setNote(Ljava/lang/String;)V

    .line 405
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    if-ne v5, v6, :cond_177

    move v5, v6

    :goto_31
    invoke-virtual {v4, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setConnectionType(I)V

    .line 407
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v5

    if-eqz v5, :cond_1a9

    if-eqz v4, :cond_1a9

    .line 409
    :try_start_3e
    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->getLanguages(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v7, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    .line 410
    const-string v5, "MobilePrint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetPrinterAttrThread : Languages = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->getMediaTypes(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v7, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    .line 412
    const-string v5, "MobilePrint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetPrinterAttrThread : PaperTypes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v7}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->isSupportDuplex(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v7

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDuplexModel:I

    .line 414
    const-string v5, "MobilePrint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetPrinterAttrThread : DuplexModel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDuplexModel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v7}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->isPrinterColorModel(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v7

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    .line 416
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    if-ne v5, v9, :cond_f4

    .line 418
    const-string v5, "MobilePrint"

    const-string v7, "GetPrinterAttrThread : IsPrinterColorModel() return -1. Retry..."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v7}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->isPrinterColorModel(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v7

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    .line 420
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    if-ne v5, v9, :cond_f4

    .line 421
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    const/4 v7, 0x0

    iput v7, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    .line 424
    :cond_f4
    const-string v5, "MobilePrint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetPrinterAttrThread : ColorModel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v8, v8, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->getMediaSizes(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v2

    .line 427
    .local v2, mediaSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/MediaSizeInfo;>;"
    if-eqz v2, :cond_17a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_17a

    .line 428
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    iput-object v7, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    .line 430
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_17a

    .line 431
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    new-instance v7, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    invoke-direct {v7}, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;-><init>()V

    aput-object v7, v5, v1

    .line 432
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v7, v5, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    invoke-virtual {v5}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;->getMediaName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mName:Ljava/lang/String;

    .line 433
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v7, v5, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    invoke-virtual {v5}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;->getWidth()I

    move-result v5

    iput v5, v7, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mWidth:I

    .line 434
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v5, v5, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v7, v5, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    invoke-virtual {v5}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;->getLength()I

    move-result v5

    iput v5, v7, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mHeight:I
    :try_end_174
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_174} :catch_1a4

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_12d

    .line 405
    .end local v1           #i:I
    .end local v2           #mediaSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/MediaSizeInfo;>;"
    :cond_177
    const/4 v5, 0x2

    goto/16 :goto_31

    .line 439
    .restart local v2       #mediaSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/MediaSizeInfo;>;"
    :cond_17a
    const/4 v3, 0x1

    .line 448
    .end local v2           #mediaSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/MediaSizeInfo;>;"
    :goto_17b
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$800(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    move-result-object v5

    if-eqz v5, :cond_190

    .line 449
    if-ne v3, v6, :cond_1b1

    .line 450
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$800(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->mPrinterInfo:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-interface {v5, v6}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;->responseGetAttr(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V

    .line 457
    :cond_190
    :goto_190
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->releaseWakelock()V
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$1100(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)V

    .line 459
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mGetAttrThread:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$1200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Ljava/lang/Thread;

    move-result-object v6

    monitor-enter v6

    .line 460
    :try_start_19c
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mGetAttrThread:Ljava/lang/Thread;
    invoke-static {v5, v7}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$1202(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 461
    monitor-exit v6
    :try_end_1a3
    .catchall {:try_start_19c .. :try_end_1a3} :catchall_1bb

    .line 462
    return-void

    .line 440
    :catch_1a4
    move-exception v0

    .line 441
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17b

    .line 445
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1a9
    const-string v5, "MobilePrint"

    const-string v7, "GetPrinterAttrThread : mSAPSDeviceManagerService or mPrinterIP is null!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17b

    .line 453
    :cond_1b1
    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$800(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;->responseGetAttr(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V

    goto :goto_190

    .line 461
    :catchall_1bb
    move-exception v5

    :try_start_1bc
    monitor-exit v6
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1bb

    throw v5
.end method

.class Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;
.super Ljava/lang/Thread;
.source "MPrintSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchPrinterThread"
.end annotation


# instance fields
.field private mIsNeedAttr:Z

.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)V
    .registers 3
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->mIsNeedAttr:Z

    .line 228
    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Z)V
    .registers 3
    .parameter
    .parameter "isNeedAttr"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 231
    iput-boolean p2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->mIsNeedAttr:Z

    .line 232
    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 236
    const/4 v13, 0x0

    .line 237
    .local v13, searchedPrinters:I
    const/4 v10, 0x0

    .line 239
    .local v10, printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$400(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v15

    if-eqz v15, :cond_17

    .line 240
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$400(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 243
    :cond_17
    :goto_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCancelSearchFlag:Ljava/lang/Boolean;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$500(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_307

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mRetry:I
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$600(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)I

    move-result v15

    const/16 v16, 0x7

    move/from16 v0, v16

    if-lt v15, v0, :cond_43

    if-nez v13, :cond_307

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mRetry:I
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$600(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)I

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v15, v0, :cond_307

    .line 244
    :cond_43
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v15

    if-eqz v15, :cond_2ff

    .line 246
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mIsSAPSDiscoveryStarted:Z
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$700(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Z

    move-result v15

    if-nez v15, :cond_91

    .line 248
    invoke-static {}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isUSBConnected()Z

    move-result v5

    .line 249
    .local v5, isUsbConnected:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$300(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Landroid/content/Context;

    move-result-object v15

    check-cast v15, Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isWifiConnected(Landroid/app/Activity;)Z

    move-result v6

    .line 250
    .local v6, isWifiConnected:Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->mIsNeedAttr:Z

    if-nez v15, :cond_27b

    const/4 v15, 0x1

    if-ne v5, v15, :cond_27b

    const/4 v15, 0x1

    if-ne v6, v15, :cond_27b

    .line 251
    const/4 v9, 0x1

    .line 260
    .local v9, portType:I
    :goto_76
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v15

    invoke-interface {v15, v9}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->start(I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_28c

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    const/16 v16, 0x1

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mIsSAPSDiscoveryStarted:Z
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$702(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Z)Z

    .line 268
    .end local v5           #isUsbConnected:Z
    .end local v6           #isWifiConnected:Z
    .end local v9           #portType:I
    :cond_91
    :goto_91
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mIsSAPSDiscoveryStarted:Z
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$700(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Z

    move-result v15

    if-eqz v15, :cond_2b3

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v15

    invoke-interface {v15}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->getPrinters()Ljava/util/List;
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_a6} :catch_295

    move-result-object v12

    .line 270
    .local v12, printerList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    if-eqz v12, :cond_2f7

    .line 271
    const/4 v3, 0x0

    .local v3, i:I
    move-object v11, v10

    .end local v10           #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .local v11, printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :goto_ab
    :try_start_ab
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_3a0

    .line 272
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    invoke-virtual {v15}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, device:Ljava/lang/String;
    const/4 v8, 0x0

    .line 274
    .local v8, modelName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 275
    .local v14, token:[Ljava/lang/String;
    const-string v15, "[\\(|\\[]"

    invoke-virtual {v1, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 276
    if-eqz v14, :cond_2c7

    array-length v15, v14

    if-lez v15, :cond_2c7

    .line 277
    const/4 v15, 0x0

    aget-object v15, v14, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 283
    :goto_cf
    new-instance v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-direct {v10}, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;-><init>()V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_d4} :catch_39c

    .line 284
    .end local v11           #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .restart local v10       #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :try_start_d4
    iput-object v1, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDevice:Ljava/lang/String;

    .line 285
    iput-object v8, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    .line 286
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    invoke-virtual {v15}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getConnectionType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2ca

    const/4 v15, 0x1

    :goto_e9
    iput v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    .line 287
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    invoke-virtual {v15}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getHost()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    .line 288
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    invoke-virtual {v15}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getPort()I

    move-result v15

    iput v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPort:I

    .line 290
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->mIsNeedAttr:Z
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_107} :catch_295

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2db

    .line 292
    :try_start_10d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v16

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->getLanguages(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    iput-object v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    .line 293
    const-string v15, "MobilePrint"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SearchPrinterThread : Languages = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v16

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->getMediaTypes(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    iput-object v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    .line 295
    const-string v15, "MobilePrint"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SearchPrinterThread : PaperTypes = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperTypes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v16

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->isSupportDuplex(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v15

    iput v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDuplexModel:I

    .line 297
    const-string v15, "MobilePrint"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "GetPrinterAttrThread : DuplexModel = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mDuplexModel:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v16

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->isPrinterColorModel(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I

    move-result v15

    iput v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    .line 299
    const-string v15, "MobilePrint"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SearchPrinterThread : ColorModel = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1e4

    .line 301
    const/4 v15, 0x0

    iput v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mColorModel:I

    .line 304
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v16

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->getMediaSizes(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;

    move-result-object v7

    .line 305
    .local v7, mediaSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/MediaSizeInfo;>;"
    if-eqz v7, :cond_2d1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_2d1

    .line 306
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    iput-object v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    .line 308
    const/4 v4, 0x0

    .local v4, index:I
    :goto_209
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_2d1

    .line 309
    iget-object v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    new-instance v16, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    invoke-direct/range {v16 .. v16}, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;-><init>()V

    aput-object v16, v15, v4

    .line 310
    iget-object v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v16, v15, v4

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    invoke-virtual {v15}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;->getMediaName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mName:Ljava/lang/String;

    .line 311
    iget-object v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v16, v15, v4

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    invoke-virtual {v15}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;->getWidth()I

    move-result v15

    move-object/from16 v0, v16

    iput v15, v0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mWidth:I

    .line 312
    iget-object v15, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    aget-object v16, v15, v4

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;

    invoke-virtual {v15}, Lcom/sec/print/mobileprint/dm/MediaSizeInfo;->getLength()I

    move-result v15

    move-object/from16 v0, v16

    iput v15, v0, Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;->mHeight:I

    .line 313
    const-string v15, "MobilePrint"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SearchPrinterThread : PaperSizes["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPaperSizes:[Lcom/sec/android/app/mobileprint/MPrintPrinterItem$PaperInfo;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_278
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_278} :catch_2cd

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_209

    .line 253
    .end local v1           #device:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v7           #mediaSizes:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/MediaSizeInfo;>;"
    .end local v8           #modelName:Ljava/lang/String;
    .end local v12           #printerList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    .end local v14           #token:[Ljava/lang/String;
    .restart local v5       #isUsbConnected:Z
    .restart local v6       #isWifiConnected:Z
    :cond_27b
    :try_start_27b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->mIsNeedAttr:Z

    if-nez v15, :cond_289

    if-nez v5, :cond_289

    const/4 v15, 0x1

    if-ne v6, v15, :cond_289

    .line 254
    const/4 v9, 0x2

    .restart local v9       #portType:I
    goto/16 :goto_76

    .line 257
    .end local v9           #portType:I
    :cond_289
    const/4 v9, 0x3

    .restart local v9       #portType:I
    goto/16 :goto_76

    .line 264
    :cond_28c
    const-string v15, "MobilePrint"

    const-string v16, "SearchPrinterThread : mSAPSDeviceManagerService.start() fail."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_293
    .catch Landroid/os/RemoteException; {:try_start_27b .. :try_end_293} :catch_295

    goto/16 :goto_91

    .line 336
    .end local v5           #isUsbConnected:Z
    .end local v6           #isWifiConnected:Z
    .end local v9           #portType:I
    :catch_295
    move-exception v2

    .line 337
    .local v2, e:Landroid/os/RemoteException;
    :goto_296
    const-string v15, "MobilePrint"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SearchPrinterThread : mSAPSDeviceManagerService.getPrinters() failed with: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 345
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2b3
    :goto_2b3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$608(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)I

    .line 348
    const-wide/16 v15, 0x3e8

    :try_start_2bc
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2bf
    .catch Ljava/lang/InterruptedException; {:try_start_2bc .. :try_end_2bf} :catch_2c1

    goto/16 :goto_17

    .line 349
    :catch_2c1
    move-exception v2

    .line 350
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_17

    .line 280
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v10           #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .restart local v1       #device:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v8       #modelName:Ljava/lang/String;
    .restart local v11       #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .restart local v12       #printerList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    .restart local v14       #token:[Ljava/lang/String;
    :cond_2c7
    move-object v8, v1

    goto/16 :goto_cf

    .line 286
    .end local v11           #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .restart local v10       #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :cond_2ca
    const/4 v15, 0x0

    goto/16 :goto_e9

    .line 316
    :catch_2cd
    move-exception v2

    .line 317
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2ce
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 320
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2d1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    const/16 v16, 0x63

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mRetry:I
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$602(Lcom/sec/android/app/mobileprint/MPrintSearchManager;I)I

    goto :goto_2b3

    .line 324
    :cond_2db
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$800(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    move-result-object v15

    if-eqz v15, :cond_2f0

    .line 325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$800(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    move-result-object v15

    invoke-interface {v15, v10}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;->onSearch(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V

    .line 328
    :cond_2f0
    add-int/lit8 v13, v13, 0x1

    .line 271
    add-int/lit8 v3, v3, 0x1

    move-object v11, v10

    .end local v10           #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .restart local v11       #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    goto/16 :goto_ab

    .line 333
    .end local v1           #device:Ljava/lang/String;
    .end local v3           #i:I
    .end local v8           #modelName:Ljava/lang/String;
    .end local v11           #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .end local v14           #token:[Ljava/lang/String;
    .restart local v10       #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :cond_2f7
    const-string v15, "MobilePrint"

    const-string v16, "SearchPrinterThread : mSAPSDeviceManagerService.getPrinters() return null!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fe
    .catch Landroid/os/RemoteException; {:try_start_2ce .. :try_end_2fe} :catch_295

    goto :goto_2b3

    .line 342
    .end local v12           #printerList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    :cond_2ff
    const-string v15, "MobilePrint"

    const-string v16, "SearchPrinterThread : mSAPSDeviceManagerService is not yet binded!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b3

    .line 354
    :cond_307
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mIsSAPSDiscoveryStarted:Z
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$700(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Z

    move-result v15

    if-eqz v15, :cond_336

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v15

    if-eqz v15, :cond_336

    .line 356
    :try_start_31b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v15

    invoke-interface {v15}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->stop()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_380

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    const/16 v16, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mIsSAPSDiscoveryStarted:Z
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$702(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Z)Z
    :try_end_336
    .catch Landroid/os/RemoteException; {:try_start_31b .. :try_end_336} :catch_388

    .line 367
    :cond_336
    :goto_336
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$400(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v15

    if-eqz v15, :cond_34b

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$400(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 371
    :cond_34b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$800(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    move-result-object v15

    if-eqz v15, :cond_36a

    .line 372
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->mIsNeedAttr:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_38d

    .line 373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$800(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    move-result-object v15

    invoke-interface {v15, v10}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;->responseGetAttr(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V

    .line 380
    :cond_36a
    :goto_36a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$900(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Ljava/lang/Thread;

    move-result-object v16

    monitor-enter v16

    .line 381
    :try_start_373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;
    invoke-static {v15, v0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$902(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 382
    monitor-exit v16
    :try_end_37f
    .catchall {:try_start_373 .. :try_end_37f} :catchall_399

    .line 383
    return-void

    .line 360
    :cond_380
    :try_start_380
    const-string v15, "MobilePrint"

    const-string v16, "SearchPrinterThread : mSAPSDeviceManagerService.stop() fail."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_387
    .catch Landroid/os/RemoteException; {:try_start_380 .. :try_end_387} :catch_388

    goto :goto_336

    .line 362
    :catch_388
    move-exception v2

    .line 363
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_336

    .line 376
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_38d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;
    invoke-static {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$800(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    move-result-object v15

    invoke-interface {v15}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;->responseSearchCompleted()V

    goto :goto_36a

    .line 382
    :catchall_399
    move-exception v15

    :try_start_39a
    monitor-exit v16
    :try_end_39b
    .catchall {:try_start_39a .. :try_end_39b} :catchall_399

    throw v15

    .line 336
    .end local v10           #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .restart local v3       #i:I
    .restart local v11       #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .restart local v12       #printerList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    :catch_39c
    move-exception v2

    move-object v10, v11

    .end local v11           #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .restart local v10       #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    goto/16 :goto_296

    .end local v10           #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .restart local v11       #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    :cond_3a0
    move-object v10, v11

    .end local v11           #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    .restart local v10       #printerItem:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    goto/16 :goto_2b3
.end method

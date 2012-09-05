.class Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;
.super Landroid/os/AsyncTask;
.source "PopupEasyConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/applet/PopupEasyConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanKiesAirDevicesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROCESS_ERROR:I = 0x2

.field private static final PROCESS_SUCCESS:I = 0x1

.field private static final TASK_CANCELLED:I


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private devices:Ljava/util/ArrayList;

.field private mc:Lcom/samsung/swift/network/MulticastSender;

.field final synthetic this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

.field private urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->devices:Ljava/util/ArrayList;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->urls:Ljava/util/ArrayList;

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->mc:Lcom/samsung/swift/network/MulticastSender;

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->urls:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 337
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 26
    .parameter "unused"

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->mc:Lcom/samsung/swift/network/MulticastSender;

    move-object/from16 v20, v0

    if-nez v20, :cond_1c

    .line 389
    new-instance v20, Lcom/samsung/swift/network/MulticastSender;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/swift/network/MulticastSender;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->mc:Lcom/samsung/swift/network/MulticastSender;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->mc:Lcom/samsung/swift/network/MulticastSender;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/swift/network/MulticastSender;->init()V

    .line 397
    :cond_1c
    const/16 v18, 0x0

    .line 398
    .local v18, txBuffer:[B
    const/16 v20, 0x800

    :try_start_20
    move/from16 v0, v20

    new-array v11, v0, [B

    .line 399
    .local v11, rxBuffer:[B
    const-string v20, "M-SEARCH * HTTP/1.1\r\nHost:239.255.255.250:1900\r\nST:urn:schemas-upnp-org:device:SwiftServer:1\r\nMan:\"ssdp:discover\"\r\nMX:3\r\n\r\n"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    .line 400
    const/4 v10, 0x0

    .line 402
    .local v10, responses:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 403
    .local v14, startTime:J
    const-wide/32 v20, 0xea60

    add-long v4, v14, v20

    .line 406
    .local v4, endTime:J
    :cond_34
    :goto_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v20, v20, v4

    if-gez v20, :cond_1a5

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 409
    .local v16, thisScanStarted:J
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    .line 410
    .local v7, interfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_44
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_f9

    .line 412
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    .line 413
    .local v8, netIf:Ljava/net/NetworkInterface;
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_44

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->mc:Lcom/samsung/swift/network/MulticastSender;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2, v11}, Lcom/samsung/swift/network/MulticastSender;->send(Ljava/net/NetworkInterface;[BI[B)[Ljava/lang/String;

    move-result-object v10

    .line 416
    if-eqz v10, :cond_44

    array-length v0, v10

    move/from16 v20, v0

    if-lez v20, :cond_44

    .line 418
    const/4 v6, 0x0

    .local v6, i:I
    :goto_73
    array-length v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_44

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->isCancelled()Z

    move-result v20

    if-eqz v20, :cond_a3

    .line 422
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x0

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->publishProgress([Ljava/lang/Object;)V

    .line 423
    const/16 v20, 0x0

    .line 470
    .end local v4           #endTime:J
    .end local v6           #i:I
    .end local v7           #interfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v8           #netIf:Ljava/net/NetworkInterface;
    .end local v10           #responses:[Ljava/lang/String;
    .end local v11           #rxBuffer:[B
    .end local v14           #startTime:J
    .end local v16           #thisScanStarted:J
    :goto_a2
    return-object v20

    .line 426
    .restart local v4       #endTime:J
    .restart local v6       #i:I
    .restart local v7       #interfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v8       #netIf:Ljava/net/NetworkInterface;
    .restart local v10       #responses:[Ljava/lang/String;
    .restart local v11       #rxBuffer:[B
    .restart local v14       #startTime:J
    .restart local v16       #thisScanStarted:J
    :cond_a3
    aget-object v20, v10, v6

    invoke-static/range {v20 .. v20}, Lcom/samsung/swift/network/Utils;->getServiceDescription(Ljava/lang/String;)Lcom/samsung/swift/network/DiscoveryResponse;

    move-result-object v9

    .line 427
    .local v9, res:Lcom/samsung/swift/network/DiscoveryResponse;
    if-eqz v9, :cond_f5

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->urls:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual {v9}, Lcom/samsung/swift/network/DiscoveryResponse;->getPresentationURL()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f5

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->urls:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual {v9}, Lcom/samsung/swift/network/DiscoveryResponse;->getPresentationURL()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    aput-object v22, v20, v21

    const/16 v21, 0x1

    new-instance v22, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/samsung/swift/network/DiscoveryResponse;->getFriendlyName()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->publishProgress([Ljava/lang/Object;)V

    .line 418
    :cond_f5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_73

    .line 440
    .end local v6           #i:I
    .end local v8           #netIf:Ljava/net/NetworkInterface;
    .end local v9           #res:Lcom/samsung/swift/network/DiscoveryResponse;
    :cond_f9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0xbb8

    add-long v22, v22, v14

    cmp-long v20, v20, v22

    if-ltz v20, :cond_1a9

    .line 441
    const-wide/16 v12, 0x5dc

    .line 445
    .local v12, scan_interval:J
    :goto_107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_10a} :catch_184

    move-result-wide v20

    add-long v22, v16, v12

    cmp-long v20, v20, v22

    if-gez v20, :cond_114

    .line 447
    :try_start_111
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_114
    .catch Ljava/lang/InterruptedException; {:try_start_111 .. :try_end_114} :catch_1ad
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_184

    .line 451
    :cond_114
    :goto_114
    :try_start_114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0xbb8

    add-long v22, v22, v14

    cmp-long v20, v20, v22

    if-ltz v20, :cond_34

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->urls:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_34

    .line 455
    new-instance v19, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->urls:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 456
    .local v19, viewIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 457
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->cancel(Z)Z

    .line 458
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$500()Ljava/lang/String;

    move-result-object v20

    const-string v21, "ONE_NETWORK_TIMEOUT: setScanning(true)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/16 v20, 0x0

    #calls: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setScanning(Z)V
    invoke-static/range {v20 .. v20}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$000(Z)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->finish()V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_182} :catch_184

    goto/16 :goto_34

    .line 465
    .end local v4           #endTime:J
    .end local v7           #interfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v10           #responses:[Ljava/lang/String;
    .end local v11           #rxBuffer:[B
    .end local v12           #scan_interval:J
    .end local v14           #startTime:J
    .end local v16           #thisScanStarted:J
    .end local v19           #viewIntent:Landroid/content/Intent;
    :catch_184
    move-exception v3

    .line 467
    .local v3, e:Ljava/lang/Exception;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x2

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x0

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->publishProgress([Ljava/lang/Object;)V

    .line 470
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1a5
    const/16 v20, 0x0

    goto/16 :goto_a2

    .line 443
    .restart local v4       #endTime:J
    .restart local v7       #interfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v10       #responses:[Ljava/lang/String;
    .restart local v11       #rxBuffer:[B
    .restart local v14       #startTime:J
    .restart local v16       #thisScanStarted:J
    :cond_1a9
    const-wide/16 v12, 0x1f4

    .restart local v12       #scan_interval:J
    goto/16 :goto_107

    .line 447
    :catch_1ad
    move-exception v20

    goto/16 :goto_114
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 337
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6
    .parameter "unused"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 509
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->devices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 511
    .local v0, numberOfDevices:I
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 513
    if-lez v0, :cond_3e

    .line 515
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanning:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$800(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 516
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanNoResult:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$600(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 517
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanResult:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$700(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPostExecute: setScanning(false)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    #calls: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setScanning(Z)V
    invoke-static {v3}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$000(Z)V

    .line 529
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #calls: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->delayedEnableButton()V
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$900(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)V

    .line 530
    return-void

    .line 521
    :cond_3e
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanNoResult:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$600(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanResult:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$700(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanning:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$800(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2c
.end method

.method protected onPreExecute()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 351
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 353
    .local v0, model:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 354
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    iget-object v3, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-virtual {v3}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "list_item_single_choice_holo_light"

    const-string v5, "layout"

    iget-object v6, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-virtual {v6}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->devices:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->adapter:Landroid/widget/ArrayAdapter;

    .line 358
    :goto_2d
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->lv:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$300(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->lv:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$300(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 360
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->lv:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$300(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 362
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->lv:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$300(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask$1;

    invoke-direct {v2, p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask$1;-><init>(Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 376
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPreExecute: setScanning(true)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    #calls: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setScanning(Z)V
    invoke-static {v8}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$000(Z)V

    .line 378
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanNoResult:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$600(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanResult:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$700(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanning:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$800(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #calls: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setEnableRefresh(Z)V
    invoke-static {v1, v7}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$200(Lcom/samsung/swift/applet/PopupEasyConnectActivity;Z)V

    .line 382
    return-void

    .line 356
    :cond_87
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    const v3, 0x1090012

    iget-object v4, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->devices:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->adapter:Landroid/widget/ArrayAdapter;

    goto :goto_2d
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 8
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 476
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 478
    .local v0, errorCode:I
    packed-switch v0, :pswitch_data_74

    .line 504
    :goto_c
    return-void

    .line 481
    :pswitch_d
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onProgressUpdate() : AsyncTask is cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 486
    :pswitch_17
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, friendlyName:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->devices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressUpdate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->devices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanResult:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$700(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_6e

    .line 493
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanning:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$800(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 494
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanNoResult:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$600(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 495
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    #getter for: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanResult:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$700(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    :cond_6e
    iget-object v2, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_c

    .line 478
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_d
        :pswitch_17
    .end packed-switch
.end method

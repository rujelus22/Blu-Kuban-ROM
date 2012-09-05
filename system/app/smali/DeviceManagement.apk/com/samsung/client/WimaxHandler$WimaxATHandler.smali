.class Lcom/samsung/client/WimaxHandler$WimaxATHandler;
.super Ljava/lang/Object;
.source "WimaxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/WimaxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WimaxATHandler"
.end annotation


# instance fields
.field private arr:[B

.field private id:B

.field private len:I

.field final synthetic this$0:Lcom/samsung/client/WimaxHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/client/WimaxHandler;B[B)V
    .registers 5
    .parameter
    .parameter "i"
    .parameter "ar"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p3, p0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->arr:[B

    .line 545
    iput-byte p2, p0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->id:B

    .line 546
    array-length v0, p3

    iput v0, p0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->len:I

    .line 547
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/client/WimaxHandler;B[BLcom/samsung/client/WimaxHandler$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 536
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;-><init>(Lcom/samsung/client/WimaxHandler;B[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/client/WimaxHandler$WimaxATHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->handleRequest()V

    return-void
.end method

.method private handleRequest()V
    .registers 39

    .prologue
    .line 551
    new-instance v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;

    invoke-direct {v12}, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;-><init>()V

    .line 552
    .local v12, gen:Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->arr:[B

    move-object/from16 v32, v0

    #calls: Lcom/samsung/client/WimaxHandler;->getUri([B)Ljava/lang/String;
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$700(Lcom/samsung/client/WimaxHandler;[B)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 553
    const-string v31, "WimaxHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "URI : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v31, "WimaxHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ID : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->id:B

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "4GSERVICE"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_138

    .line 557
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->id:B

    move/from16 v31, v0

    const/16 v32, 0x7f

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d6

    .line 558
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v32, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;
    invoke-static/range {v32 .. v32}, Lcom/samsung/client/WimaxHandler;->access$800(Lcom/samsung/client/WimaxHandler;)Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/fourG/wimax/Wimax4GManager;->getWorkModeState()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 559
    .local v29, value:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "WorkMode GET : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    if-eqz v29, :cond_b8

    const-string v31, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_ba

    .line 562
    :cond_b8
    const-string v29, "0"

    .line 565
    :cond_ba
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 566
    const/16 v18, 0xc8

    .line 567
    .local v18, ret:I
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    .line 947
    .end local v18           #ret:I
    .end local v29           #value:Ljava/lang/String;
    :cond_d5
    :goto_d5
    return-void

    .line 570
    :cond_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->arr:[B

    move-object/from16 v32, v0

    #calls: Lcom/samsung/client/WimaxHandler;->getData([B)[B
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$900(Lcom/samsung/client/WimaxHandler;[B)[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 571
    new-instance v29, Ljava/lang/String;

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 572
    .restart local v29       #value:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "WorkMode REPLACE : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$800(Lcom/samsung/client/WimaxHandler;)Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v31

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/net/fourG/wimax/Wimax4GManager;->setWorkModeState(I)Z

    .line 574
    const/16 v18, 0xc8

    .line 575
    .restart local v18       #ret:I
    const/16 v31, 0x26

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto :goto_d5

    .line 578
    .end local v18           #ret:I
    .end local v29           #value:Ljava/lang/String;
    :cond_138
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "4GMODE"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_20f

    .line 579
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->id:B

    move/from16 v31, v0

    const/16 v32, 0x7f

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1a1

    .line 580
    const-string v31, "NetworkMode"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 581
    .restart local v29       #value:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NetworkMode GET : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-eqz v29, :cond_182

    const-string v31, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_184

    .line 584
    :cond_182
    const-string v29, "2"

    .line 587
    :cond_184
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 588
    const/16 v18, 0xc8

    .line 589
    .restart local v18       #ret:I
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 592
    .end local v18           #ret:I
    .end local v29           #value:Ljava/lang/String;
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->arr:[B

    move-object/from16 v32, v0

    #calls: Lcom/samsung/client/WimaxHandler;->getData([B)[B
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$900(Lcom/samsung/client/WimaxHandler;[B)[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 593
    new-instance v29, Ljava/lang/String;

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 594
    .restart local v29       #value:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "NetworkMode REPLACE : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v31, "NetworkMode"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/16 v18, 0xc8

    .line 597
    .restart local v18       #ret:I
    const/16 v31, 0x26

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 600
    .end local v18           #ret:I
    .end local v29           #value:Ljava/lang/String;
    :cond_20f
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "4GUSERNAME"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_350

    .line 601
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->id:B

    move/from16 v31, v0

    const/16 v32, 0x7f

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2ac

    .line 602
    const-string v31, "./WiMAXSupp/Operator"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_ext_get_dynnode_names(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 604
    .restart local v18       #ret:I
    const/16 v31, 0xc8

    move/from16 v0, v18

    move/from16 v1, v31

    if-ne v0, v1, :cond_299

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/String;

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Ljava/lang/String;-><init>([B)V

    const/16 v33, 0x1

    #calls: Lcom/samsung/client/WimaxHandler;->getDynamicNodeName(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {v31 .. v33}, Lcom/samsung/client/WimaxHandler;->access$1000(Lcom/samsung/client/WimaxHandler;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 607
    .local v28, username:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Operator/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/SubscriptionParameters/PrimarySubscription/EAP/0/USER-IDENTITY"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 610
    const-string v31, "./WiMAXSupp"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 611
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_get_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 616
    .end local v28           #username:Ljava/lang/String;
    :cond_299
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 619
    .end local v18           #ret:I
    :cond_2ac
    const-string v31, "./WiMAXSupp/Operator"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_ext_get_dynnode_names(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 621
    .restart local v18       #ret:I
    const/16 v31, 0xc8

    move/from16 v0, v18

    move/from16 v1, v31

    if-ne v0, v1, :cond_33d

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/String;

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Ljava/lang/String;-><init>([B)V

    const/16 v33, 0x1

    #calls: Lcom/samsung/client/WimaxHandler;->getDynamicNodeName(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {v31 .. v33}, Lcom/samsung/client/WimaxHandler;->access$1000(Lcom/samsung/client/WimaxHandler;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 624
    .restart local v28       #username:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Operator/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/SubscriptionParameters/PrimarySubscription/EAP/0/USER-IDENTITY"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 627
    const-string v31, "./WiMAXSupp"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 628
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->arr:[B

    move-object/from16 v32, v0

    #calls: Lcom/samsung/client/WimaxHandler;->getData([B)[B
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$900(Lcom/samsung/client/WimaxHandler;[B)[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 630
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_replace_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 634
    .end local v28           #username:Ljava/lang/String;
    :cond_33d
    const/16 v31, 0x26

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 637
    .end local v18           #ret:I
    :cond_350
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "4GPWD"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4b2

    .line 638
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->id:B

    move/from16 v31, v0

    const/16 v32, 0x7f

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_40e

    .line 639
    const-string v31, "./WiMAXSupp/Operator"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_ext_get_dynnode_names(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 641
    .restart local v18       #ret:I
    const/16 v31, 0xc8

    move/from16 v0, v18

    move/from16 v1, v31

    if-ne v0, v1, :cond_3da

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/String;

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Ljava/lang/String;-><init>([B)V

    const/16 v33, 0x1

    #calls: Lcom/samsung/client/WimaxHandler;->getDynamicNodeName(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {v31 .. v33}, Lcom/samsung/client/WimaxHandler;->access$1000(Lcom/samsung/client/WimaxHandler;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 644
    .restart local v28       #username:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Operator/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/SubscriptionParameters/PrimarySubscription/EAP/0/PASSWORD"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 647
    const-string v31, "./WiMAXSupp"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 648
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_get_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 652
    .end local v28           #username:Ljava/lang/String;
    :cond_3da
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v31, v0

    if-eqz v31, :cond_3e6

    iget v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    move/from16 v31, v0

    if-nez v31, :cond_403

    .line 653
    :cond_3e6
    const-string v31, "Unset"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 658
    :goto_3f0
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 655
    :cond_403
    const-string v31, "Set"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    goto :goto_3f0

    .line 661
    .end local v18           #ret:I
    :cond_40e
    const-string v31, "./WiMAXSupp/Operator"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_ext_get_dynnode_names(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 663
    .restart local v18       #ret:I
    const/16 v31, 0xc8

    move/from16 v0, v18

    move/from16 v1, v31

    if-ne v0, v1, :cond_49f

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/String;

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Ljava/lang/String;-><init>([B)V

    const/16 v33, 0x1

    #calls: Lcom/samsung/client/WimaxHandler;->getDynamicNodeName(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {v31 .. v33}, Lcom/samsung/client/WimaxHandler;->access$1000(Lcom/samsung/client/WimaxHandler;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 666
    .restart local v28       #username:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Operator/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/SubscriptionParameters/PrimarySubscription/EAP/0/PASSWORD"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 669
    const-string v31, "./WiMAXSupp"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 670
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->arr:[B

    move-object/from16 v32, v0

    #calls: Lcom/samsung/client/WimaxHandler;->getData([B)[B
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$900(Lcom/samsung/client/WimaxHandler;[B)[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 672
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_replace_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 676
    .end local v28           #username:Ljava/lang/String;
    :cond_49f
    const/16 v31, 0x26

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 679
    .end local v18           #ret:I
    :cond_4b2
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "4GTEMP"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4ed

    .line 680
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->id:B

    move/from16 v31, v0

    const/16 v32, 0x7f

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d5

    .line 681
    const-string v31, "WimaxHandler"

    const-string v32, "Wimax RADIO Temperature GET "

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    #setter for: Lcom/samsung/client/WimaxHandler;->mGetRadioTemp:Z
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$202(Lcom/samsung/client/WimaxHandler;Z)Z

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$800(Lcom/samsung/client/WimaxHandler;)Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/net/fourG/wimax/Wimax4GManager;->getRadioInfo()V

    goto/16 :goto_d5

    .line 686
    :cond_4ed
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "4GNETWORK_ENTRY"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_87e

    .line 687
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->id:B

    move/from16 v31, v0

    const/16 v32, 0x7f

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_711

    .line 688
    const-string v31, "Ext/EntryRX"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 689
    const-string v31, "./WiMAX"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 690
    const/16 v31, 0x6

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_get_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 693
    .restart local v18       #ret:I
    const/16 v31, 0xc8

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_544

    .line 694
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 700
    :cond_544
    iget-object v5, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .local v5, arr$:[B
    array-length v15, v5

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_548
    if-ge v14, v15, :cond_56f

    aget-byte v6, v5, v14

    .line 701
    .local v6, b:B
    const-string v31, "WimaxHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "rssi bytes "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    and-int/lit16 v0, v6, 0xff

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    add-int/lit8 v14, v14, 0x1

    goto :goto_548

    .line 705
    .end local v6           #b:B
    :cond_56f
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v32, v0

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v33, v0

    const/16 v34, 0x3

    aget-byte v33, v33, v34

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v34, v0

    const/16 v35, 0x2

    aget-byte v34, v34, v35

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-byte v35, v35, v36

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-byte v36, v36, v37

    #calls: Lcom/samsung/client/WimaxHandler;->convertBytes2Int(BBBB)I
    invoke-static/range {v32 .. v36}, Lcom/samsung/client/WimaxHandler;->access$1100(Lcom/samsung/client/WimaxHandler;BBBB)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 708
    .local v19, rssi:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "rssi "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v31, "Ext/EntryCINR"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 711
    const-string v31, "./WiMAX"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 712
    const/16 v31, 0x6

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_get_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 715
    const/16 v31, 0xc8

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_605

    .line 716
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 722
    :cond_605
    iget-object v5, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    array-length v15, v5

    const/4 v14, 0x0

    :goto_609
    if-ge v14, v15, :cond_630

    aget-byte v6, v5, v14

    .line 723
    .restart local v6       #b:B
    const-string v31, "WimaxHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "cinr bytes "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    and-int/lit16 v0, v6, 0xff

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    add-int/lit8 v14, v14, 0x1

    goto :goto_609

    .line 727
    .end local v6           #b:B
    :cond_630
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v32, v0

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v33, v0

    const/16 v34, 0x3

    aget-byte v33, v33, v34

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v34, v0

    const/16 v35, 0x2

    aget-byte v34, v34, v35

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-byte v35, v35, v36

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-byte v36, v36, v37

    #calls: Lcom/samsung/client/WimaxHandler;->convertBytes2Int(BBBB)I
    invoke-static/range {v32 .. v36}, Lcom/samsung/client/WimaxHandler;->access$1100(Lcom/samsung/client/WimaxHandler;BBBB)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 730
    .local v7, cinr:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "cinr  "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    .line 733
    .local v20, rssi_bytes:[B
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v11, v0, [B

    .line 734
    .local v11, delimiter:[B
    const/16 v31, 0x0

    const/16 v32, 0x2c

    aput-byte v32, v11, v31

    .line 735
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 737
    .local v8, cinr_bytes:[B
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    array-length v0, v8

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 739
    const/16 v31, 0x0

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v20

    move/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    const/16 v31, 0x0

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    const/16 v31, 0x0

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    array-length v0, v8

    move/from16 v34, v0

    move/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 749
    .end local v5           #arr$:[B
    .end local v7           #cinr:Ljava/lang/String;
    .end local v8           #cinr_bytes:[B
    .end local v11           #delimiter:[B
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v18           #ret:I
    .end local v19           #rssi:Ljava/lang/String;
    .end local v20           #rssi_bytes:[B
    :cond_711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->arr:[B

    move-object/from16 v32, v0

    #calls: Lcom/samsung/client/WimaxHandler;->getData([B)[B
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$900(Lcom/samsung/client/WimaxHandler;[B)[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 750
    new-instance v9, Ljava/lang/String;

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 751
    .local v9, data:Ljava/lang/String;
    const-string v31, ","

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 752
    .local v10, data_arr:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 753
    .restart local v19       #rssi:Ljava/lang/String;
    const/4 v7, 0x0

    .line 754
    .restart local v7       #cinr:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_73c
    array-length v0, v10

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v13, v0, :cond_757

    .line 755
    if-nez v13, :cond_74c

    .line 756
    const/16 v31, 0x0

    aget-object v19, v10, v31

    .line 754
    :cond_749
    :goto_749
    add-int/lit8 v13, v13, 0x1

    goto :goto_73c

    .line 757
    :cond_74c
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v13, v0, :cond_749

    .line 758
    const/16 v31, 0x1

    aget-object v7, v10, v31

    goto :goto_749

    .line 762
    :cond_757
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    if-nez v19, :cond_77c

    .line 765
    const-string v31, "WimaxHandler"

    const-string v32, "RSSI is NULL return"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/16 v31, 0x25

    const/16 v32, 0x1f4

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 773
    :cond_77c
    const-string v31, "Ext/EntryRX"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 774
    const-string v31, "./WiMAX"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 775
    const/16 v31, 0x6

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v32, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    #calls: Lcom/samsung/client/WimaxHandler;->convertInt2Bytes(I)[B
    invoke-static/range {v32 .. v33}, Lcom/samsung/client/WimaxHandler;->access$1200(Lcom/samsung/client/WimaxHandler;I)[B

    move-result-object v32

    #calls: Lcom/samsung/client/WimaxHandler;->reverseBytes([B)[B
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$1300(Lcom/samsung/client/WimaxHandler;[B)[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 778
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_replace_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 781
    .restart local v18       #ret:I
    const/16 v31, 0xc8

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_7e2

    .line 782
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 788
    :cond_7e2
    if-nez v7, :cond_7fe

    .line 789
    const-string v31, "WimaxHandler"

    const-string v32, "CINR is NULL return"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/16 v31, 0x25

    const/16 v32, 0x1f4

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 797
    :cond_7fe
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v31, "Ext/EntryCINR"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 800
    const-string v31, "./WiMAX"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 801
    const/16 v31, 0x6

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v32, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    #calls: Lcom/samsung/client/WimaxHandler;->convertInt2Bytes(I)[B
    invoke-static/range {v32 .. v33}, Lcom/samsung/client/WimaxHandler;->access$1200(Lcom/samsung/client/WimaxHandler;I)[B

    move-result-object v32

    #calls: Lcom/samsung/client/WimaxHandler;->reverseBytes([B)[B
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$1300(Lcom/samsung/client/WimaxHandler;[B)[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 804
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_replace_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 807
    const/16 v31, 0xc8

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_86b

    .line 808
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 814
    :cond_86b
    const/16 v31, 0x26

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 818
    .end local v7           #cinr:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #data_arr:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v18           #ret:I
    .end local v19           #rssi:Ljava/lang/String;
    :cond_87e
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "4GNETWORK_EXIT"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_aac

    .line 819
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->id:B

    move/from16 v31, v0

    const/16 v32, 0x7f

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9a5

    .line 821
    const-string v19, ""

    .line 823
    .restart local v19       #rssi:Ljava/lang/String;
    const-string v31, "Ext/ExitCINR"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 824
    const-string v31, "./WiMAX"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 825
    const/16 v31, 0x6

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_get_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 828
    .restart local v18       #ret:I
    const/16 v31, 0xc8

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_8d7

    .line 829
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 835
    :cond_8d7
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v32, v0

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v33, v0

    const/16 v34, 0x3

    aget-byte v33, v33, v34

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v34, v0

    const/16 v35, 0x2

    aget-byte v34, v34, v35

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-byte v35, v35, v36

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-byte v36, v36, v37

    #calls: Lcom/samsung/client/WimaxHandler;->convertBytes2Int(BBBB)I
    invoke-static/range {v32 .. v36}, Lcom/samsung/client/WimaxHandler;->access$1100(Lcom/samsung/client/WimaxHandler;BBBB)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 838
    .restart local v7       #cinr:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    .line 841
    .restart local v20       #rssi_bytes:[B
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v11, v0, [B

    .line 842
    .restart local v11       #delimiter:[B
    const/16 v31, 0x0

    const/16 v32, 0x2c

    aput-byte v32, v11, v31

    .line 843
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 845
    .restart local v8       #cinr_bytes:[B
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    array-length v0, v8

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 847
    const/16 v31, 0x0

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v20

    move/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    const/16 v31, 0x0

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    const/16 v31, 0x0

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    array-length v0, v8

    move/from16 v34, v0

    move/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 857
    .end local v7           #cinr:Ljava/lang/String;
    .end local v8           #cinr_bytes:[B
    .end local v11           #delimiter:[B
    .end local v18           #ret:I
    .end local v19           #rssi:Ljava/lang/String;
    .end local v20           #rssi_bytes:[B
    :cond_9a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->arr:[B

    move-object/from16 v32, v0

    #calls: Lcom/samsung/client/WimaxHandler;->getData([B)[B
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$900(Lcom/samsung/client/WimaxHandler;[B)[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 858
    new-instance v9, Ljava/lang/String;

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 859
    .restart local v9       #data:Ljava/lang/String;
    const-string v31, ","

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 860
    .restart local v10       #data_arr:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 861
    .restart local v19       #rssi:Ljava/lang/String;
    const/4 v7, 0x0

    .line 862
    .restart local v7       #cinr:Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_9d0
    array-length v0, v10

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v13, v0, :cond_9eb

    .line 863
    if-nez v13, :cond_9e0

    .line 864
    const/16 v31, 0x0

    aget-object v19, v10, v31

    .line 862
    :cond_9dd
    :goto_9dd
    add-int/lit8 v13, v13, 0x1

    goto :goto_9d0

    .line 866
    :cond_9e0
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v13, v0, :cond_9dd

    .line 867
    const/16 v31, 0x1

    aget-object v7, v10, v31

    goto :goto_9dd

    .line 871
    :cond_9eb
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    if-nez v19, :cond_a10

    .line 874
    const-string v31, "WimaxHandler"

    const-string v32, "RSSI is NULL return"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/16 v31, 0x25

    const/16 v32, 0x1f4

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 884
    :cond_a10
    if-nez v7, :cond_a2c

    .line 885
    const-string v31, "WimaxHandler"

    const-string v32, "CINR is NULL return"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/16 v31, 0x25

    const/16 v32, 0x1f4

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 893
    :cond_a2c
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v31, "Ext/ExitCINR"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    .line 896
    const-string v31, "./WiMAX"

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 897
    const/16 v31, 0x6

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->fmt:I

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v32, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    #calls: Lcom/samsung/client/WimaxHandler;->convertInt2Bytes(I)[B
    invoke-static/range {v32 .. v33}, Lcom/samsung/client/WimaxHandler;->access$1200(Lcom/samsung/client/WimaxHandler;I)[B

    move-result-object v32

    #calls: Lcom/samsung/client/WimaxHandler;->reverseBytes([B)[B
    invoke-static/range {v31 .. v32}, Lcom/samsung/client/WimaxHandler;->access$1300(Lcom/samsung/client/WimaxHandler;[B)[B

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 900
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->len:I

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_replace_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    move-result v18

    .line 903
    .restart local v18       #ret:I
    const/16 v31, 0xc8

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_a99

    .line 904
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 910
    :cond_a99
    const/16 v31, 0x26

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5

    .line 914
    .end local v7           #cinr:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #data_arr:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v18           #ret:I
    .end local v19           #rssi:Ljava/lang/String;
    :cond_aac
    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "4GSYSTEM"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d5

    .line 915
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->id:B

    move/from16 v31, v0

    const/16 v32, 0x7f

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d5

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    move-object/from16 v31, v0

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;
    invoke-static/range {v31 .. v31}, Lcom/samsung/client/WimaxHandler;->access$800(Lcom/samsung/client/WimaxHandler;)Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v30

    .line 919
    .local v30, wimaxInfo:Landroid/net/fourG/wimax/Wimax4GInfo;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v30 .. v30}, Landroid/net/fourG/wimax/Wimax4GInfo;->getNSPID()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 920
    .local v25, sNSPID:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual/range {v30 .. v30}, Landroid/net/fourG/wimax/Wimax4GInfo;->getNAPID()Ljava/lang/String;

    move-result-object v24

    .line 922
    .local v24, sNAPID:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v30 .. v30}, Landroid/net/fourG/wimax/Wimax4GInfo;->getFREQ()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 924
    .local v22, sCF:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual/range {v30 .. v30}, Landroid/net/fourG/wimax/Wimax4GInfo;->getBSID()Ljava/lang/String;

    move-result-object v21

    .line 926
    .local v21, sBSID:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v30 .. v30}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 928
    .local v23, sCINR:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v30 .. v30}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 930
    .local v26, sRxPower:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v30 .. v30}, Landroid/net/fourG/wimax/Wimax4GInfo;->getTxPower()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 932
    .local v27, sTxPower:Ljava/lang/String;
    const-string v31, "WimaxHandler"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 938
    .local v16, result:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 940
    .local v17, result_bytes:[B
    move-object/from16 v0, v17

    iput-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 941
    const/16 v18, 0xc8

    .line 942
    .restart local v18       #ret:I
    const/16 v31, 0x25

    iget-object v0, v12, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->sendResponse(II[B)V

    goto/16 :goto_d5
.end method

.method private sendResponse(II[B)V
    .registers 7
    .parameter "id"
    .parameter "status"
    .parameter "gen_data"

    .prologue
    .line 950
    const-string v1, "WimaxHandler"

    const-string v2, "WimaxATHandler : sendResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/client/WimaxHandler;->isATMode:Z
    invoke-static {v1, v2}, Lcom/samsung/client/WimaxHandler;->access$1402(Lcom/samsung/client/WimaxHandler;Z)Z

    .line 952
    new-instance v0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;

    invoke-direct {v0}, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;-><init>()V

    .line 953
    .local v0, gen:Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;
    const-string v1, "./WiMAX"

    iput-object v1, v0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->ext_hdlr_path:Ljava/lang/String;

    .line 954
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    #getter for: Lcom/samsung/client/WimaxHandler;->mWimaxConn:Lsyncmlport/dm/Interface/SyncmlWimaxConnector;
    invoke-static {v1}, Lcom/samsung/client/WimaxHandler;->access$600(Lcom/samsung/client/WimaxHandler;)Lsyncmlport/dm/Interface/SyncmlWimaxConnector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsyncmlport/dm/Interface/SyncmlWimaxConnector;->tsldm_wimax_ext_ses_done_params(Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;)I

    .line 955
    iget-object v1, v0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    if-nez v1, :cond_2b

    .line 956
    const-string v1, "<NULL>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lsyncmlport/dm/tslDataStructures/Tsldm_generic_st;->data:[B

    .line 958
    :cond_2b
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    #calls: Lcom/samsung/client/WimaxHandler;->sendResponse(II[B)V
    invoke-static {v1, p1, p2, p3}, Lcom/samsung/client/WimaxHandler;->access$1500(Lcom/samsung/client/WimaxHandler;II[B)V

    .line 959
    iget-object v1, p0, Lcom/samsung/client/WimaxHandler$WimaxATHandler;->this$0:Lcom/samsung/client/WimaxHandler;

    invoke-virtual {v1}, Lcom/samsung/client/WimaxHandler;->enableJavaWimax()V

    .line 960
    return-void
.end method

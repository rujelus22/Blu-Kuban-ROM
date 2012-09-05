.class Lcom/sec/print/mobileprint/df/SmbDiscovery$1;
.super Ljava/lang/Object;
.source "SmbDiscovery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/print/mobileprint/df/SmbDiscovery;->startDiscovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/print/mobileprint/df/SmbDiscovery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    iput-object p2, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$domain:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$user:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$password:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 32

    .prologue
    .line 56
    const/4 v12, 0x0

    .line 58
    .local v12, handle:Ljcifs/dcerpc/DcerpcHandle;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v25 .. v25}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$000(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$host:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    .line 60
    .local v14, inetAddress:Ljava/net/InetAddress;
    new-instance v25, Ljcifs/smb/SmbFile;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "smb://"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$host:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$domain:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$user:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$password:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-direct/range {v27 .. v30}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {v25 .. v27}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    invoke-virtual/range {v25 .. v25}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object v21

    .line 61
    .local v21, shares:[Ljcifs/smb/SmbFile;
    move-object/from16 v3, v21

    .local v3, arr$:[Ljcifs/smb/SmbFile;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_59
    move/from16 v0, v16

    if-ge v13, v0, :cond_65

    aget-object v22, v3, v13

    .line 62
    .local v22, smbFile:Ljcifs/smb/SmbFile;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v25

    if-eqz v25, :cond_7a

    .line 148
    .end local v22           #smbFile:Ljcifs/smb/SmbFile;
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v25 .. v25}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$000(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_26d
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_74} :catch_22e
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_74} :catch_274
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_74} :catch_297
    .catch Ljcifs/dcerpc/DcerpcException; {:try_start_1 .. :try_end_74} :catch_2ba
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_74} :catch_2dd

    .line 174
    if-eqz v12, :cond_79

    .line 175
    :try_start_76
    invoke-virtual {v12}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_31c

    .line 180
    .end local v3           #arr$:[Ljcifs/smb/SmbFile;
    .end local v13           #i$:I
    .end local v14           #inetAddress:Ljava/net/InetAddress;
    .end local v16           #len$:I
    .end local v21           #shares:[Ljcifs/smb/SmbFile;
    :cond_79
    :goto_79
    return-void

    .line 64
    .restart local v3       #arr$:[Ljcifs/smb/SmbFile;
    .restart local v13       #i$:I
    .restart local v14       #inetAddress:Ljava/net/InetAddress;
    .restart local v16       #len$:I
    .restart local v21       #shares:[Ljcifs/smb/SmbFile;
    .restart local v22       #smbFile:Ljcifs/smb/SmbFile;
    :cond_7a
    :try_start_7a
    invoke-virtual/range {v22 .. v22}, Ljcifs/smb/SmbFile;->getType()I

    move-result v24

    .line 65
    .local v24, type:I
    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_22a

    .line 66
    new-instance v19, Ljcifs/dcerpc/msrpc/MsrpcOpenPrinter;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "\\\\"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\\"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Ljcifs/smb/SmbFile;->getShare()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljcifs/dcerpc/msrpc/MsrpcOpenPrinter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v19, openRpc:Ljcifs/dcerpc/msrpc/MsrpcOpenPrinter;
    if-nez v12, :cond_ee

    .line 68
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ncacn_np:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "[\\PIPE\\spoolss]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$domain:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$user:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->val$password:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v26 .. v29}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v25 .. v26}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v12

    .line 72
    :cond_ee
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 73
    move-object/from16 v0, v19

    iget v0, v0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;->returnCode:I

    move/from16 v25, v0

    if-nez v25, :cond_22a

    .line 74
    new-instance v15, Ljcifs/dcerpc/msrpc/MsrpcGetPrinter;

    move-object/from16 v0, v19

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;->handler:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Ljcifs/dcerpc/msrpc/MsrpcGetPrinter;-><init>([B)V

    .line 75
    .local v15, infoRpc:Ljcifs/dcerpc/msrpc/MsrpcGetPrinter;
    invoke-virtual {v12, v15}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 76
    iget v0, v15, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->returnCode:I

    move/from16 v25, v0

    const/16 v26, 0x7a

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_21a

    iget v0, v15, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->needed:I

    move/from16 v25, v0

    if-lez v25, :cond_21a

    .line 77
    new-instance v8, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    invoke-direct {v8}, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;-><init>()V

    .line 78
    .local v8, data:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;
    iget v0, v15, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->needed:I

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v8, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->data:[B

    .line 79
    new-instance v15, Ljcifs/dcerpc/msrpc/MsrpcGetPrinter;

    .end local v15           #infoRpc:Ljcifs/dcerpc/msrpc/MsrpcGetPrinter;
    move-object/from16 v0, v19

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;->handler:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v15, v0, v8}, Ljcifs/dcerpc/msrpc/MsrpcGetPrinter;-><init>([BLjcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;)V

    .line 80
    .restart local v15       #infoRpc:Ljcifs/dcerpc/msrpc/MsrpcGetPrinter;
    invoke-virtual {v12, v15}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 81
    iget v0, v15, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->returnCode:I

    move/from16 v25, v0

    if-nez v25, :cond_21a

    .line 82
    iget-object v0, v15, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->info:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v5, v0, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->data:[B

    .line 83
    .local v5, buffer:[B
    const/4 v6, 0x0

    .line 84
    .local v6, bufferIndex:I
    move/from16 v23, v6

    .line 87
    .local v23, start:I
    add-int/lit8 v6, v6, 0x4

    .line 89
    add-int/lit8 v6, v6, 0x4

    .line 91
    #calls: Lcom/sec/print/mobileprint/df/SmbDiscovery;->readInt4([BI)I
    invoke-static {v5, v6}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$100([BI)I

    move-result v18

    .line 92
    .local v18, offset:I
    add-int/lit8 v6, v6, 0x4

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    add-int/lit8 v26, v18, 0x0

    const/16 v27, 0x100

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    #calls: Lcom/sec/print/mobileprint/df/SmbDiscovery;->readString([BII)Ljava/lang/String;
    invoke-static {v0, v5, v1, v2}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$200(Lcom/sec/print/mobileprint/df/SmbDiscovery;[BII)Ljava/lang/String;

    move-result-object v20

    .line 95
    .local v20, sharename:Ljava/lang/String;
    add-int/lit8 v6, v6, 0x4

    .line 97
    #calls: Lcom/sec/print/mobileprint/df/SmbDiscovery;->readInt4([BI)I
    invoke-static {v5, v6}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$100([BI)I

    move-result v18

    .line 98
    add-int/lit8 v6, v6, 0x4

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    add-int/lit8 v26, v18, 0x0

    const/16 v27, 0x100

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    #calls: Lcom/sec/print/mobileprint/df/SmbDiscovery;->readString([BII)Ljava/lang/String;
    invoke-static {v0, v5, v1, v2}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$200(Lcom/sec/print/mobileprint/df/SmbDiscovery;[BII)Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, drivername:Ljava/lang/String;
    add-int/lit8 v6, v6, 0x4

    .line 103
    #calls: Lcom/sec/print/mobileprint/df/SmbDiscovery;->readInt4([BI)I
    invoke-static {v5, v6}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$100([BI)I

    move-result v18

    .line 104
    add-int/lit8 v6, v6, 0x4

    .line 105
    const-string v17, ""

    .line 106
    .local v17, location:Ljava/lang/String;
    if-eqz v18, :cond_1ab

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    add-int/lit8 v26, v18, 0x0

    const/16 v27, 0x200

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    #calls: Lcom/sec/print/mobileprint/df/SmbDiscovery;->readString([BII)Ljava/lang/String;
    invoke-static {v0, v5, v1, v2}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$200(Lcom/sec/print/mobileprint/df/SmbDiscovery;[BII)Ljava/lang/String;

    move-result-object v17

    .line 110
    :cond_1ab
    add-int/lit8 v6, v6, 0x4

    .line 112
    add-int/lit8 v6, v6, 0x4

    .line 114
    add-int/lit8 v6, v6, 0x4

    .line 116
    add-int/lit8 v6, v6, 0x4

    .line 118
    add-int/lit8 v6, v6, 0x4

    .line 120
    add-int/lit8 v6, v6, 0x4

    .line 122
    #calls: Lcom/sec/print/mobileprint/df/SmbDiscovery;->readInt4([BI)I
    invoke-static {v5, v6}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$100([BI)I

    move-result v4

    .line 123
    .local v4, attributes:I
    add-int/lit8 v6, v6, 0x4

    .line 131
    add-int/lit8 v6, v6, 0x1c

    .line 133
    and-int/lit8 v25, v4, 0x8

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_21a

    .line 134
    new-instance v9, Lcom/sec/print/mobileprint/df/MFPDevice;

    invoke-direct {v9}, Lcom/sec/print/mobileprint/df/MFPDevice;-><init>()V

    .line 135
    .local v9, device:Lcom/sec/print/mobileprint/df/MFPDevice;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/sec/print/mobileprint/df/MFPDevice;->setName(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/sec/print/mobileprint/df/MFPDevice;->setNote(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/sec/print/mobileprint/df/MFPDevice;->setHost(Ljava/lang/String;)V

    .line 138
    const/16 v25, 0x1bd

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/sec/print/mobileprint/df/MFPDevice;->setPort(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/print/mobileprint/df/SmbDiscovery;->devices:Ljava/util/List;
    invoke-static/range {v25 .. v25}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$300(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v4           #attributes:I
    .end local v5           #buffer:[B
    .end local v6           #bufferIndex:I
    .end local v8           #data:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;
    .end local v9           #device:Lcom/sec/print/mobileprint/df/MFPDevice;
    .end local v10           #drivername:Ljava/lang/String;
    .end local v17           #location:Ljava/lang/String;
    .end local v18           #offset:I
    .end local v20           #sharename:Ljava/lang/String;
    .end local v23           #start:I
    :cond_21a
    new-instance v7, Ljcifs/dcerpc/msrpc/MsrpcClosePrinter;

    move-object/from16 v0, v19

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;->handler:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljcifs/dcerpc/msrpc/MsrpcClosePrinter;-><init>([B)V

    .line 144
    .local v7, closeRpc:Ljcifs/dcerpc/msrpc/MsrpcClosePrinter;
    invoke-virtual {v12, v7}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    :try_end_22a
    .catchall {:try_start_7a .. :try_end_22a} :catchall_26d
    .catch Ljcifs/smb/SmbException; {:try_start_7a .. :try_end_22a} :catch_22e
    .catch Ljava/net/MalformedURLException; {:try_start_7a .. :try_end_22a} :catch_274
    .catch Ljava/net/UnknownHostException; {:try_start_7a .. :try_end_22a} :catch_297
    .catch Ljcifs/dcerpc/DcerpcException; {:try_start_7a .. :try_end_22a} :catch_2ba
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_22a} :catch_2dd

    .line 61
    .end local v7           #closeRpc:Ljcifs/dcerpc/msrpc/MsrpcClosePrinter;
    .end local v15           #infoRpc:Ljcifs/dcerpc/msrpc/MsrpcGetPrinter;
    .end local v19           #openRpc:Ljcifs/dcerpc/msrpc/MsrpcOpenPrinter;
    :cond_22a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_59

    .line 149
    .end local v3           #arr$:[Ljcifs/smb/SmbFile;
    .end local v13           #i$:I
    .end local v14           #inetAddress:Ljava/net/InetAddress;
    .end local v16           #len$:I
    .end local v21           #shares:[Ljcifs/smb/SmbFile;
    .end local v22           #smbFile:Ljcifs/smb/SmbFile;
    .end local v24           #type:I
    :catch_22e
    move-exception v11

    .line 150
    .local v11, e:Ljcifs/smb/SmbException;
    :try_start_22f
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-class v26, Ljcifs/smb/SmbAuthException;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_25d

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v25 .. v25}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$000(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v25

    const/16 v26, -0x3

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 155
    :goto_24a
    const-string v25, "SmbDiscovery"

    invoke-virtual {v11}, Ljcifs/smb/SmbException;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_253
    .catchall {:try_start_22f .. :try_end_253} :catchall_26d

    .line 174
    if-eqz v12, :cond_79

    .line 175
    :try_start_255
    invoke-virtual {v12}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_258
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_258} :catch_25a

    goto/16 :goto_79

    .line 177
    :catch_25a
    move-exception v25

    goto/16 :goto_79

    .line 153
    :cond_25d
    :try_start_25d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v25 .. v25}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$000(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v25

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_26c
    .catchall {:try_start_25d .. :try_end_26c} :catchall_26d

    goto :goto_24a

    .line 173
    .end local v11           #e:Ljcifs/smb/SmbException;
    :catchall_26d
    move-exception v25

    .line 174
    if-eqz v12, :cond_273

    .line 175
    :try_start_270
    invoke-virtual {v12}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_273
    .catch Ljava/io/IOException; {:try_start_270 .. :try_end_273} :catch_31f

    .line 178
    :cond_273
    :goto_273
    throw v25

    .line 156
    :catch_274
    move-exception v11

    .line 157
    .local v11, e:Ljava/net/MalformedURLException;
    :try_start_275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v25 .. v25}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$000(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v25

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 158
    const-string v25, "SmbDiscovery"

    invoke-virtual {v11}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28d
    .catchall {:try_start_275 .. :try_end_28d} :catchall_26d

    .line 174
    if-eqz v12, :cond_79

    .line 175
    :try_start_28f
    invoke-virtual {v12}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_292
    .catch Ljava/io/IOException; {:try_start_28f .. :try_end_292} :catch_294

    goto/16 :goto_79

    .line 177
    :catch_294
    move-exception v25

    goto/16 :goto_79

    .line 159
    .end local v11           #e:Ljava/net/MalformedURLException;
    :catch_297
    move-exception v11

    .line 160
    .local v11, e:Ljava/net/UnknownHostException;
    :try_start_298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v25 .. v25}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$000(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v25

    const/16 v26, -0x2

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 161
    const-string v25, "SmbDiscovery"

    invoke-virtual {v11}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b0
    .catchall {:try_start_298 .. :try_end_2b0} :catchall_26d

    .line 174
    if-eqz v12, :cond_79

    .line 175
    :try_start_2b2
    invoke-virtual {v12}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2b5} :catch_2b7

    goto/16 :goto_79

    .line 177
    :catch_2b7
    move-exception v25

    goto/16 :goto_79

    .line 162
    .end local v11           #e:Ljava/net/UnknownHostException;
    :catch_2ba
    move-exception v11

    .line 163
    .local v11, e:Ljcifs/dcerpc/DcerpcException;
    :try_start_2bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v25 .. v25}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$000(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v25

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 164
    const-string v25, "SmbDiscovery"

    invoke-virtual {v11}, Ljcifs/dcerpc/DcerpcException;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d3
    .catchall {:try_start_2bb .. :try_end_2d3} :catchall_26d

    .line 174
    if-eqz v12, :cond_79

    .line 175
    :try_start_2d5
    invoke-virtual {v12}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_2d8
    .catch Ljava/io/IOException; {:try_start_2d5 .. :try_end_2d8} :catch_2da

    goto/16 :goto_79

    .line 177
    :catch_2da
    move-exception v25

    goto/16 :goto_79

    .line 165
    .end local v11           #e:Ljcifs/dcerpc/DcerpcException;
    :catch_2dd
    move-exception v11

    .line 166
    .local v11, e:Ljava/io/IOException;
    :try_start_2de
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-class v26, Ljcifs/smb/SmbAuthException;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_30c

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v25 .. v25}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$000(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v25

    const/16 v26, -0x3

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 171
    :goto_2f9
    const-string v25, "SmbDiscovery"

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_302
    .catchall {:try_start_2de .. :try_end_302} :catchall_26d

    .line 174
    if-eqz v12, :cond_79

    .line 175
    :try_start_304
    invoke-virtual {v12}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_307
    .catch Ljava/io/IOException; {:try_start_304 .. :try_end_307} :catch_309

    goto/16 :goto_79

    .line 177
    :catch_309
    move-exception v25

    goto/16 :goto_79

    .line 169
    :cond_30c
    :try_start_30c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/print/mobileprint/df/SmbDiscovery$1;->this$0:Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/print/mobileprint/df/SmbDiscovery;->state:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v25 .. v25}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->access$000(Lcom/sec/print/mobileprint/df/SmbDiscovery;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v25

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_31b
    .catchall {:try_start_30c .. :try_end_31b} :catchall_26d

    goto :goto_2f9

    .line 177
    .end local v11           #e:Ljava/io/IOException;
    .restart local v3       #arr$:[Ljcifs/smb/SmbFile;
    .restart local v13       #i$:I
    .restart local v14       #inetAddress:Ljava/net/InetAddress;
    .restart local v16       #len$:I
    .restart local v21       #shares:[Ljcifs/smb/SmbFile;
    :catch_31c
    move-exception v25

    goto/16 :goto_79

    .end local v3           #arr$:[Ljcifs/smb/SmbFile;
    .end local v13           #i$:I
    .end local v14           #inetAddress:Ljava/net/InetAddress;
    .end local v16           #len$:I
    .end local v21           #shares:[Ljcifs/smb/SmbFile;
    :catch_31f
    move-exception v26

    goto/16 :goto_273
.end method

.class Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
.super Ljava/lang/Object;
.source "Svc_Dbg_Dump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# instance fields
.field final OEM_CP_ALL:I

.field final OEM_CP_CP_LOG:I

.field final OEM_CP_CP_LOG2:I

.field final OEM_CP_MSG:I

.field final OEM_CP_RAM_DUMP:I

.field final OEM_CP_STRING_DISABLE:I

.field final OEM_CP_STRING_LOG1:I

.field final OEM_CP_STRING_LOG2:I

.field final OEM_CP_STRING_LOOPBACK:I

.field final OEM_CP_STRING_MSG:I

.field final OEM_SVC_MODE_FUNCTAG:I

.field final OEM_SVC_MODE_SUB_FUNCTAG:I

.field final OEM_SVC_MODE_SUB_STRINGTAG:I

.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 261
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_SVC_MODE_FUNCTAG:I

    .line 269
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_SVC_MODE_SUB_FUNCTAG:I

    .line 271
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_SVC_MODE_SUB_STRINGTAG:I

    .line 277
    iput v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_CP_ALL:I

    .line 279
    iput v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_CP_MSG:I

    .line 281
    iput v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_CP_CP_LOG:I

    .line 283
    iput v4, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_CP_CP_LOG2:I

    .line 285
    iput v5, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_CP_RAM_DUMP:I

    .line 291
    iput v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_CP_STRING_DISABLE:I

    .line 293
    iput v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_CP_STRING_LOOPBACK:I

    .line 295
    iput v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_CP_STRING_MSG:I

    .line 297
    iput v4, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_CP_STRING_LOG1:I

    .line 299
    iput v5, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->OEM_CP_STRING_LOG2:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;-><init>(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)V

    return-void
.end method


# virtual methods
.method StartDumpData(I)[B
    .registers 9
    .parameter "cmd"

    .prologue
    .line 307
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 309
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 311
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 319
    .local v3, fileSize:I
    const/4 v4, 0x1

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 321
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 323
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 325
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_40
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_2a

    .line 350
    :try_start_19
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_21

    .line 357
    :goto_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_20
    return-object v4

    .line 351
    :catch_21
    move-exception v2

    .line 352
    .local v2, e:Ljava/io/IOException;
    const-string v4, "SvcDbgDump"

    const-string v5, "StartDumpData error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 339
    .end local v2           #e:Ljava/io/IOException;
    :catch_2a
    move-exception v2

    .line 343
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2b
    const-string v4, "SvcDbgDump"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_40

    .line 345
    const/4 v4, 0x0

    .line 350
    :try_start_33
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_20

    .line 351
    :catch_37
    move-exception v2

    .line 352
    const-string v5, "SvcDbgDump"

    const-string v6, "StartDumpData error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 349
    .end local v2           #e:Ljava/io/IOException;
    :catchall_40
    move-exception v4

    .line 350
    :try_start_41
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    .line 353
    :goto_44
    throw v4

    .line 351
    :catch_45
    move-exception v2

    .line 352
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "SvcDbgDump"

    const-string v6, "StartDumpData error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method StartStringData(I)[B
    .registers 9
    .parameter "cmd"

    .prologue
    .line 367
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 369
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 371
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 379
    .local v3, fileSize:I
    const/4 v4, 0x1

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 381
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 383
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 385
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_40
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_2a

    .line 399
    :try_start_19
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_21

    .line 406
    :goto_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_20
    return-object v4

    .line 400
    :catch_21
    move-exception v2

    .line 401
    .local v2, e:Ljava/io/IOException;
    const-string v4, "SvcDbgDump"

    const-string v5, "StartStringData error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 388
    .end local v2           #e:Ljava/io/IOException;
    :catch_2a
    move-exception v2

    .line 392
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2b
    const-string v4, "SvcDbgDump"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_40

    .line 394
    const/4 v4, 0x0

    .line 399
    :try_start_33
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_20

    .line 400
    :catch_37
    move-exception v2

    .line 401
    const-string v5, "SvcDbgDump"

    const-string v6, "StartStringData error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 398
    .end local v2           #e:Ljava/io/IOException;
    :catchall_40
    move-exception v4

    .line 399
    :try_start_41
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    .line 402
    :goto_44
    throw v4

    .line 400
    :catch_45
    move-exception v2

    .line 401
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "SvcDbgDump"

    const-string v6, "StartStringData error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

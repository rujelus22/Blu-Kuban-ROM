.class Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
.super Ljava/lang/Object;
.source "SysDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/SysDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# instance fields
.field final OEM_DBG_STATE_GET:I

.field final OEM_DEL_RIL_LOG:I

.field final OEM_DPRAM_DUMP:I

.field final OEM_DUMPSTATE:I

.field final OEM_DUMPSTATE_ALL:I

.field final OEM_ENABLE_LOG:I

.field final OEM_GCF_MODE_GET:I

.field final OEM_GCF_MODE_SET:I

.field final OEM_IPC_DUMP_BIN:I

.field final OEM_IPC_DUMP_LOG:I

.field final OEM_KERNEL_LOG:I

.field final OEM_LOGCAT_CLEAR:I

.field final OEM_LOGCAT_MAIN:I

.field final OEM_LOGCAT_RADIO:I

.field final OEM_MODEM_LOG:I

.field final OEM_NV_DATA_BACKUP:I

.field final OEM_OEM_DUMPSTATE_MODEM_LOG_AUTO_START:I

.field final OEM_RAMDUMP_MODE:I

.field final OEM_RAMDUMP_STATE_GET:I

.field final OEM_START_RIL_LOG:I

.field final OEM_SYSDUMP_FUNCTAG:I

.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/SysDump;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/servicemodeapp/SysDump;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x7

    .line 330
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_SYSDUMP_FUNCTAG:I

    .line 335
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_LOGCAT_MAIN:I

    .line 336
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_LOGCAT_RADIO:I

    .line 337
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_DUMPSTATE:I

    .line 338
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_KERNEL_LOG:I

    .line 339
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_LOGCAT_CLEAR:I

    .line 340
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_DBG_STATE_GET:I

    .line 341
    iput v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_ENABLE_LOG:I

    .line 342
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_IPC_DUMP_LOG:I

    .line 343
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_IPC_DUMP_BIN:I

    .line 344
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_RAMDUMP_MODE:I

    .line 345
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_RAMDUMP_STATE_GET:I

    .line 346
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_START_RIL_LOG:I

    .line 347
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_DEL_RIL_LOG:I

    .line 348
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_DPRAM_DUMP:I

    .line 349
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_GCF_MODE_GET:I

    .line 350
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_GCF_MODE_SET:I

    .line 351
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_NV_DATA_BACKUP:I

    .line 352
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_MODEM_LOG:I

    .line 353
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_OEM_DUMPSTATE_MODEM_LOG_AUTO_START:I

    .line 354
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->OEM_DUMPSTATE_ALL:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/servicemodeapp/SysDump;Lcom/sec/android/app/servicemodeapp/SysDump$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;-><init>(Lcom/sec/android/app/servicemodeapp/SysDump;)V

    return-void
.end method


# virtual methods
.method StartSysDumpData(I)[B
    .registers 8
    .parameter "cmd"

    .prologue
    .line 357
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 358
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 362
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x7

    :try_start_b
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 363
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 365
    const-string v3, "sysDump"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v3, 0x1

    if-eq p1, v3, :cond_36

    const/4 v3, 0x2

    if-eq p1, v3, :cond_36

    const/16 v3, 0x9

    if-eq p1, v3, :cond_36

    const/4 v3, 0x3

    if-ne p1, v3, :cond_73

    .line 372
    :cond_36
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 373
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v3, v3, Lcom/sec/android/app/servicemodeapp/SysDump;->month:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 374
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v3, v3, Lcom/sec/android/app/servicemodeapp/SysDump;->day:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 375
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v3, v3, Lcom/sec/android/app/servicemodeapp/SysDump;->hour:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 376
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v3, v3, Lcom/sec/android/app/servicemodeapp/SysDump;->min:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 377
    const-string v3, "sysDump"

    const-string v4, "dos.writeByte(8)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_6e} :catch_80

    .line 395
    :goto_6e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_72
    return-object v3

    .line 379
    :cond_73
    const/16 v3, 0x12

    if-ne p1, v3, :cond_8a

    .line 380
    const/4 v3, 0x5

    :try_start_78
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 381
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7f} :catch_80

    goto :goto_6e

    .line 389
    :catch_80
    move-exception v2

    .line 391
    .local v2, e:Ljava/io/IOException;
    const-string v3, "sysDump"

    const-string v4, "IOException in getServMQueryData!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v3, 0x0

    goto :goto_72

    .line 385
    .end local v2           #e:Ljava/io/IOException;
    :cond_8a
    :try_start_8a
    const-string v3, "sysDump"

    const-string v4, "dos.writeByte(4)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_95} :catch_80

    goto :goto_6e
.end method

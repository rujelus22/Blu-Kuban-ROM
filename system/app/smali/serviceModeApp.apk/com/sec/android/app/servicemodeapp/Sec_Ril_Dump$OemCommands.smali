.class Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;
.super Ljava/lang/Object;
.source "Sec_Ril_Dump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# instance fields
.field final NV_BACKUP:I

.field final NV_DELETE:I

.field final OEM_DBG_STATE_GET:I

.field final OEM_DPRAMDUMP_ON:I

.field final OEM_DUMPSTATE:I

.field final OEM_ENABLE_LOG:I

.field final OEM_IPC_DUMP_BIN:I

.field final OEM_IPC_DUMP_LOG:I

.field final OEM_KERNEL_LOG:I

.field final OEM_LOGCAT_CLEAR:I

.field final OEM_LOGCAT_MAIN:I

.field final OEM_LOGCAT_RADIO:I

.field final OEM_NV_BACKUP:I

.field final OEM_RAMDUMP_MODE:I

.field final OEM_RAMDUMP_STATE_GET:I

.field final OEM_SYSDUMP_FUNCTAG:I

.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x1

    .line 265
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_SYSDUMP_FUNCTAG:I

    .line 270
    iput v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_LOGCAT_MAIN:I

    .line 271
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_LOGCAT_RADIO:I

    .line 272
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_DUMPSTATE:I

    .line 273
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_KERNEL_LOG:I

    .line 274
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_LOGCAT_CLEAR:I

    .line 275
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_DBG_STATE_GET:I

    .line 276
    iput v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_ENABLE_LOG:I

    .line 277
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_IPC_DUMP_LOG:I

    .line 278
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_IPC_DUMP_BIN:I

    .line 279
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_RAMDUMP_MODE:I

    .line 280
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_RAMDUMP_STATE_GET:I

    .line 281
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_DPRAMDUMP_ON:I

    .line 282
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->OEM_NV_BACKUP:I

    .line 284
    iput v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->NV_BACKUP:I

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->NV_DELETE:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;-><init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    return-void
.end method


# virtual methods
.method StartNVBackupData(II)[B
    .registers 10
    .parameter "cmd"
    .parameter "sub"

    .prologue
    .line 320
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 321
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 322
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 326
    .local v3, fileSize:I
    const/4 v4, 0x7

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 327
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 328
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 329
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_3f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_29

    .line 338
    :try_start_18
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_20

    .line 344
    :goto_1b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_1f
    return-object v4

    .line 339
    :catch_20
    move-exception v2

    .line 340
    .local v2, e:Ljava/io/IOException;
    const-string v4, "RilDump"

    const-string v5, "StartNVBackupData error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 331
    .end local v2           #e:Ljava/io/IOException;
    :catch_29
    move-exception v2

    .line 333
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2a
    const-string v4, "RilDump"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_3f

    .line 334
    const/4 v4, 0x0

    .line 338
    :try_start_32
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_1f

    .line 339
    :catch_36
    move-exception v2

    .line 340
    const-string v5, "RilDump"

    const-string v6, "StartNVBackupData error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 337
    .end local v2           #e:Ljava/io/IOException;
    :catchall_3f
    move-exception v4

    .line 338
    :try_start_40
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 341
    :goto_43
    throw v4

    .line 339
    :catch_44
    move-exception v2

    .line 340
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "RilDump"

    const-string v6, "StartNVBackupData error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method StartSysDumpData(I)[B
    .registers 9
    .parameter "cmd"

    .prologue
    .line 289
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 290
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 291
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x8

    .line 295
    .local v3, fileSize:I
    const/4 v4, 0x7

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 296
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 297
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 298
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v4, v4, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->month:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 299
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v4, v4, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->day:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 300
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v4, v4, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->hour:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 301
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v4, v4, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->min:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_42
    .catchall {:try_start_d .. :try_end_42} :catchall_69
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_42} :catch_53

    .line 311
    :try_start_42
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_4a

    .line 316
    :goto_45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_49
    return-object v4

    .line 312
    :catch_4a
    move-exception v2

    .line 313
    .local v2, e:Ljava/io/IOException;
    const-string v4, "RilDump"

    const-string v5, "StartSysDumpData error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 304
    .end local v2           #e:Ljava/io/IOException;
    :catch_53
    move-exception v2

    .line 306
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_54
    const-string v4, "RilDump"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_69

    .line 307
    const/4 v4, 0x0

    .line 311
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_49

    .line 312
    :catch_60
    move-exception v2

    .line 313
    const-string v5, "RilDump"

    const-string v6, "StartSysDumpData error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 310
    .end local v2           #e:Ljava/io/IOException;
    :catchall_69
    move-exception v4

    .line 311
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 314
    :goto_6d
    throw v4

    .line 312
    :catch_6e
    move-exception v2

    .line 313
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "RilDump"

    const-string v6, "StartSysDumpData error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

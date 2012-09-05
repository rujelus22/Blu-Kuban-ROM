.class Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;
.super Ljava/lang/Object;
.source "GcfModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/GcfModeSettings;
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

.field final OEM_ENABLE_LOG:I

.field final OEM_GCF_DUMP_GET:I

.field final OEM_GCF_DUMP_SET:I

.field final OEM_IPC_DUMP_BIN:I

.field final OEM_IPC_DUMP_LOG:I

.field final OEM_KERNEL_LOG:I

.field final OEM_LOGCAT_CLEAR:I

.field final OEM_LOGCAT_MAIN:I

.field final OEM_LOGCAT_RADIO:I

.field final OEM_RAMDUMP_MODE:I

.field final OEM_RAMDUMP_STATE_GET:I

.field final OEM_START_RIL_LOG:I

.field final OEM_SYSDUMP_FUNCTAG:I

.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x7

    .line 111
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->this$0:Lcom/sec/android/app/servicemodeapp/GcfModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput v1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_SYSDUMP_FUNCTAG:I

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_LOGCAT_MAIN:I

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_LOGCAT_RADIO:I

    .line 118
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_DUMPSTATE:I

    .line 119
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_KERNEL_LOG:I

    .line 120
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_LOGCAT_CLEAR:I

    .line 121
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_DBG_STATE_GET:I

    .line 122
    iput v1, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_ENABLE_LOG:I

    .line 123
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_IPC_DUMP_LOG:I

    .line 124
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_IPC_DUMP_BIN:I

    .line 125
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_RAMDUMP_MODE:I

    .line 126
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_RAMDUMP_STATE_GET:I

    .line 127
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_START_RIL_LOG:I

    .line 128
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_DEL_RIL_LOG:I

    .line 129
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_DPRAM_DUMP:I

    .line 130
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_GCF_DUMP_GET:I

    .line 131
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;->OEM_GCF_DUMP_SET:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;Lcom/sec/android/app/servicemodeapp/GcfModeSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/GcfModeSettings$OemCommands;-><init>(Lcom/sec/android/app/servicemodeapp/GcfModeSettings;)V

    return-void
.end method


# virtual methods
.method StartSysDumpData(I)[B
    .registers 8
    .parameter "cmd"

    .prologue
    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 140
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x7

    :try_start_b
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 141
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 143
    const-string v3, "GcfModeSettings"

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

    .line 145
    const-string v3, "GcfModeSettings"

    const-string v4, "dos.writeByte(4)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 147
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_37} :catch_3f

    .line 158
    :try_start_37
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_53

    .line 167
    :goto_3a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_3e
    return-object v3

    .line 149
    :catch_3f
    move-exception v2

    .line 151
    .local v2, e:Ljava/io/IOException;
    :try_start_40
    const-string v3, "GcfModeSettings"

    const-string v4, "IOException in getServMQueryData!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4e

    .line 152
    const/4 v3, 0x0

    .line 158
    :try_start_48
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_3e

    .line 160
    :catch_4c
    move-exception v4

    goto :goto_3e

    .line 156
    .end local v2           #e:Ljava/io/IOException;
    :catchall_4e
    move-exception v3

    .line 158
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_55

    .line 163
    :goto_52
    throw v3

    .line 160
    :catch_53
    move-exception v3

    goto :goto_3a

    :catch_55
    move-exception v4

    goto :goto_52
.end method

.class public Landroid/app/IrdaService;
.super Landroid/app/IIrdaService$Stub;
.source "IrdaService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IrdaService"

.field private static bEnabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStr:Ljava/lang/String;

.field private read_ir_send:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/IIrdaService$Stub;-><init>()V

    .line 162
    new-instance v3, Landroid/app/IrdaService$1;

    invoke-direct {v3, p0}, Landroid/app/IrdaService$1;-><init>(Landroid/app/IrdaService;)V

    iput-object v3, p0, Landroid/app/IrdaService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    const-string v3, "IrdaService"

    const-string v4, "IrdaService : Create"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    .line 58
    const/4 v3, 0x1

    sput-boolean v3, Landroid/app/IrdaService;->bEnabled:Z

    .line 59
    invoke-direct {p0}, Landroid/app/IrdaService;->isEnalbed()V

    .line 61
    :try_start_19
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v2, filter:Landroid/content/IntentFilter;
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    const-string v4, "ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 63
    .local v1, field:Ljava/lang/reflect/Field;
    const-string v3, "IrdaService"

    const-string v4, "Field ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED found"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/app/IrdaService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_39
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_39} :catch_3a

    .line 69
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :goto_39
    return-void

    .line 66
    :catch_3a
    move-exception v0

    .line 67
    .local v0, ex:Ljava/lang/NoSuchFieldException;
    const-string v3, "IrdaService"

    const-string v4, "Field ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method static synthetic access$000(Landroid/app/IrdaService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/IrdaService;->isEnalbed()V

    return-void
.end method

.method private isEnalbed()V
    .registers 9

    .prologue
    .line 143
    :try_start_0
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    const-string v4, "getAllowIrDA"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 144
    .local v2, method:Ljava/lang/reflect/Method;
    const-string v3, "IrdaService"

    const-string v4, "Method getAllowIrDA found"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 146
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_49

    .line 147
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowIrDA(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 148
    const-string v3, "IrdaService"

    const-string v4, "Exchange IT Policy has disabled IRDA service. Cannot enable"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v3, 0x0

    sput-boolean v3, Landroid/app/IrdaService;->bEnabled:Z

    .line 161
    .end local v1           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_34
    return-void

    .line 152
    .restart local v1       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_35
    const-string v3, "IrdaService"

    const-string v4, "Exchange IT Policy has enabled IRDA service."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v3, 0x1

    sput-boolean v3, Landroid/app/IrdaService;->bEnabled:Z
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_34

    .line 158
    .end local v1           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_40
    move-exception v0

    .line 159
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    const-string v3, "IrdaService"

    const-string v4, "Method getAllowIrDA not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 156
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v1       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_49
    :try_start_49
    const-string v3, "IrdaService"

    const-string/jumbo v4, "mDPM is null. ignore next checking"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_49 .. :try_end_51} :catch_40

    goto :goto_34
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/IrdaService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    invoke-super {p0}, Landroid/app/IIrdaService$Stub;->finalize()V

    .line 179
    const-string v0, "IrdaService"

    const-string v1, "IrdaService : finalize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public read_irsend()Ljava/lang/String;
    .registers 9

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v1, irsend_value:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 107
    .local v2, reader:Ljava/io/BufferedReader;
    const-string v5, ""

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 109
    sget-boolean v5, Landroid/app/IrdaService;->bEnabled:Z

    if-nez v5, :cond_18

    .line 110
    const-string v5, "IrdaService"

    const-string v6, "IrdaService - read_irsend : bEnabled = false. Return empty string!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 138
    :goto_17
    return-object v5

    .line 113
    :cond_18
    monitor-enter p0

    .line 115
    :try_start_19
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/sec/sec_ir/ir_send"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x400

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_27} :catch_cc
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_8b

    .line 117
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 118
    .local v4, temp:Ljava/lang/String;
    :goto_28
    :try_start_28
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_50

    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_c3
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_31} :catch_c9
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_c6

    goto :goto_28

    .line 121
    :catch_32
    move-exception v0

    move-object v2, v3

    .line 122
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #temp:Ljava/lang/String;
    .local v0, ex:Ljava/io/FileNotFoundException;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_34
    :try_start_34
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_a7

    .line 128
    if-eqz v2, :cond_49

    .line 130
    :try_start_39
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 131
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 132
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_49} :catch_6a

    .line 138
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :cond_49
    :goto_49
    :try_start_49
    iget-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    monitor-exit p0

    goto :goto_17

    .line 139
    :catchall_4d
    move-exception v5

    :goto_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v5

    .line 128
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_50
    if-eqz v3, :cond_cf

    .line 130
    :try_start_52
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 131
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 132
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_c0
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_62} :catch_64

    move-object v2, v3

    .line 135
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_49

    .line 133
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_64
    move-exception v0

    .line 134
    .local v0, ex:Ljava/io/IOException;
    :try_start_65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_c0

    move-object v2, v3

    .line 135
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_49

    .line 133
    .end local v4           #temp:Ljava/lang/String;
    .local v0, ex:Ljava/io/FileNotFoundException;
    :catch_6a
    move-exception v0

    .line 134
    .local v0, ex:Ljava/io/IOException;
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_4d

    goto :goto_49

    .line 123
    .end local v0           #ex:Ljava/io/IOException;
    :catch_6f
    move-exception v0

    .line 124
    .restart local v0       #ex:Ljava/io/IOException;
    :goto_70
    :try_start_70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_a7

    .line 128
    if-eqz v2, :cond_49

    .line 130
    :try_start_75
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 131
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 132
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_85} :catch_86

    goto :goto_49

    .line 133
    :catch_86
    move-exception v0

    .line 134
    :try_start_87
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_4d

    goto :goto_49

    .line 125
    .end local v0           #ex:Ljava/io/IOException;
    :catch_8b
    move-exception v0

    .line 126
    .local v0, ex:Ljava/lang/Exception;
    :goto_8c
    :try_start_8c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_a7

    .line 128
    if-eqz v2, :cond_49

    .line 130
    :try_start_91
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 131
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 132
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_91 .. :try_end_a1} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a1} :catch_a2

    goto :goto_49

    .line 133
    :catch_a2
    move-exception v0

    .line 134
    .local v0, ex:Ljava/io/IOException;
    :try_start_a3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_4d

    goto :goto_49

    .line 128
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_a7
    move-exception v5

    :goto_a8
    if-eqz v2, :cond_ba

    .line 130
    :try_start_aa
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 131
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 132
    const-string v6, "IrdaService"

    const-string v7, "IrdaService READ COMPLETE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_aa .. :try_end_ba} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ba} :catch_bb

    .line 135
    :cond_ba
    :goto_ba
    :try_start_ba
    throw v5

    .line 133
    :catch_bb
    move-exception v0

    .line 134
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_4d

    goto :goto_ba

    .line 139
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :catchall_c0
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4e

    .line 128
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_c3
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_a8

    .line 125
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_c6
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_8c

    .line 123
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_c9
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_70

    .line 121
    .end local v4           #temp:Ljava/lang/String;
    :catch_cc
    move-exception v0

    goto/16 :goto_34

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_cf
    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_49
.end method

.method public write_irsend(Ljava/lang/String;)V
    .registers 8
    .parameter "data"

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, out:Ljava/io/FileWriter;
    sget-boolean v4, Landroid/app/IrdaService;->bEnabled:Z

    if-nez v4, :cond_d

    .line 74
    const-string v4, "IrdaService"

    const-string v5, "IrdaService - write_irsend : bEnabled = false. Return!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_c
    return-void

    .line 77
    :cond_d
    monitor-enter p0

    .line 79
    :try_start_e
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 80
    .local v3, utf8:[B
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Landroid/app/IrdaService;->mStr:Ljava/lang/String;

    .line 81
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/sys/class/sec/sec_ir/ir_send"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_65
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_24} :catch_41
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_24} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_59

    .line 82
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    :try_start_24
    iget-object v4, p0, Landroid/app/IrdaService;->mStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 84
    const-string v4, "IrdaService"

    const-string v5, "IrdaService WRITE COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_71
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_33} :catch_7a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_33} :catch_77
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_74

    .line 93
    if-eqz v2, :cond_7d

    .line 95
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_3e

    move-object v1, v2

    .line 101
    .end local v2           #out:Ljava/io/FileWriter;
    .end local v3           #utf8:[B
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_39
    :goto_39
    :try_start_39
    monitor-exit p0

    goto :goto_c

    :catchall_3b
    move-exception v4

    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3b

    throw v4

    .line 96
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    .restart local v3       #utf8:[B
    :catch_3e
    move-exception v4

    move-object v1, v2

    .line 98
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_39

    .line 86
    .end local v3           #utf8:[B
    :catch_41
    move-exception v0

    .line 87
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_42
    :try_start_42
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_65

    .line 93
    if-eqz v1, :cond_39

    .line 95
    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_3b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_39

    .line 96
    :catch_4b
    move-exception v4

    goto :goto_39

    .line 88
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_4d
    move-exception v0

    .line 89
    .local v0, ex:Ljava/io/IOException;
    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_65

    .line 93
    if-eqz v1, :cond_39

    .line 95
    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_3b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_39

    .line 96
    :catch_57
    move-exception v4

    goto :goto_39

    .line 90
    .end local v0           #ex:Ljava/io/IOException;
    :catch_59
    move-exception v0

    .line 91
    .local v0, ex:Ljava/lang/Exception;
    :goto_5a
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_65

    .line 93
    if-eqz v1, :cond_39

    .line 95
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_3b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_39

    .line 96
    :catch_63
    move-exception v4

    goto :goto_39

    .line 93
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_65
    move-exception v4

    :goto_66
    if-eqz v1, :cond_6b

    .line 95
    :try_start_68
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_3b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 98
    :cond_6b
    :goto_6b
    :try_start_6b
    throw v4
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_3b

    .line 96
    :catch_6c
    move-exception v5

    goto :goto_6b

    .line 101
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    .restart local v3       #utf8:[B
    :catchall_6e
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_3c

    .line 93
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_71
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_66

    .line 90
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_74
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_5a

    .line 88
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_77
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_4e

    .line 86
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_7a
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_42

    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_7d
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_39
.end method

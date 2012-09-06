.class public final Lt/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static volatile b:Z

.field private static volatile c:Z

.field private static volatile d:Lt/k;

.field private static volatile e:Lcom/google/android/maps/driveabout/vector/ei;

.field private static volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    new-instance v0, Lt/k;

    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->i:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    invoke-direct {v0, v1}, Lt/k;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, Lt/m;->d:Lt/k;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/ei;)Lcom/google/android/maps/driveabout/vector/ei;
    .registers 1
    .parameter

    .prologue
    .line 35
    sput-object p0, Lt/m;->e:Lcom/google/android/maps/driveabout/vector/ei;

    return-object p0
.end method

.method public static declared-synchronized a()Lt/k;
    .registers 2

    .prologue
    .line 79
    const-class v0, Lt/m;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lt/m;->d:Lt/k;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lt/k;)Lt/k;
    .registers 1
    .parameter

    .prologue
    .line 35
    sput-object p0, Lt/m;->d:Lt/k;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lac/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3, p4}, Lt/m;->b(Landroid/content/Context;Lac/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lac/h;Ljava/lang/Runnable;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    sget-boolean v0, Lt/m;->a:Z

    if-eqz v0, :cond_5

    .line 181
    :goto_4
    return-void

    .line 170
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lt/m;->a:Z

    .line 172
    new-instance v0, Lt/n;

    const-string v1, "ParameterManagerLoad"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lt/n;-><init>(Ljava/lang/String;Landroid/content/Context;Lac/h;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0}, Lt/n;->start()V

    goto :goto_4
.end method

.method static synthetic a(Z)Z
    .registers 1
    .parameter

    .prologue
    .line 35
    sput-boolean p0, Lt/m;->f:Z

    return p0
.end method

.method public static declared-synchronized b()Lt/k;
    .registers 2

    .prologue
    .line 89
    const-class v1, Lt/m;

    monitor-enter v1

    :goto_3
    :try_start_3
    sget-boolean v0, Lt/m;->b:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lt/m;->f:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    if-nez v0, :cond_13

    .line 91
    :try_start_b
    const-class v0, Lt/m;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1d
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_3

    .line 92
    :catch_11
    move-exception v0

    goto :goto_3

    .line 96
    :cond_13
    :try_start_13
    sget-boolean v0, Lt/m;->b:Z

    if-eqz v0, :cond_1b

    .line 97
    sget-object v0, Lt/m;->d:Lt/k;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    .line 99
    :goto_19
    monitor-exit v1

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    .line 89
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Lac/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 186
    const-class v7, Lt/m;

    monitor-enter v7

    :try_start_4
    const-string v0, "ParameterManager.initializeInternal"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {p0, p3, v0}, Lh/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBufType;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_9a

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 193
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 194
    const/4 v2, 0x1

    sput-boolean v2, Lt/m;->c:Z

    .line 199
    :goto_20
    new-instance v2, Lt/k;

    invoke-direct {v2, v0}, Lt/k;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v2, Lt/m;->d:Lt/k;

    .line 200
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 206
    :goto_37
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {p0, p4, v0}, Lh/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBufType;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_66

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 210
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 212
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/ei;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/android/maps/driveabout/vector/ei;

    move-result-object v1

    sput-object v1, Lt/m;->e:Lcom/google/android/maps/driveabout/vector/ei;

    .line 213
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 217
    :cond_61
    const-class v0, Lt/m;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 220
    :cond_66
    if-eqz p1, :cond_93

    .line 221
    sget-object v0, Lt/m;->e:Lcom/google/android/maps/driveabout/vector/ei;

    if-nez v0, :cond_7f

    invoke-virtual {p1}, Lac/h;->m()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 222
    if-eqz p2, :cond_77

    .line 223
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 225
    :cond_77
    const/4 v0, 0x1

    sput-boolean v0, Lt/m;->f:Z

    .line 226
    const-class v0, Lt/m;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 228
    :cond_7f
    new-instance v0, Lt/o;

    invoke-direct {v0, p1, p2}, Lt/o;-><init>(Lac/h;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lac/h;->a(Lac/q;)V

    .line 230
    new-instance v0, Lt/p;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lt/p;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lt/n;)V

    invoke-virtual {p1, v0}, Lac/h;->c(Lac/g;)V

    .line 233
    :cond_93
    const-string v0, "ParameterManager.initializeInternal"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_4 .. :try_end_98} :catchall_aa

    .line 234
    monitor-exit v7

    return-void

    .line 196
    :cond_9a
    :try_start_9a
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 197
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->i:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V
    :try_end_a8
    .catchall {:try_start_9a .. :try_end_a8} :catchall_aa

    goto/16 :goto_20

    .line 186
    :catchall_aa
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_ad
    move-object v2, v4

    .line 200
    goto :goto_37
.end method

.method static synthetic b(Z)Z
    .registers 1
    .parameter

    .prologue
    .line 35
    sput-boolean p0, Lt/m;->b:Z

    return p0
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 109
    sget-boolean v0, Lt/m;->b:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lt/m;->c:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static declared-synchronized d()Lcom/google/android/maps/driveabout/vector/ei;
    .registers 2

    .prologue
    .line 124
    const-class v1, Lt/m;

    monitor-enter v1

    :goto_3
    :try_start_3
    sget-object v0, Lt/m;->e:Lcom/google/android/maps/driveabout/vector/ei;

    if-nez v0, :cond_13

    sget-boolean v0, Lt/m;->f:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_17

    if-nez v0, :cond_13

    .line 126
    :try_start_b
    const-class v0, Lt/m;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_3

    .line 127
    :catch_11
    move-exception v0

    goto :goto_3

    .line 131
    :cond_13
    :try_start_13
    sget-object v0, Lt/m;->e:Lcom/google/android/maps/driveabout/vector/ei;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e()Z
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lt/m;->e:Lcom/google/android/maps/driveabout/vector/ei;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static f()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 149
    sput-boolean v0, Lt/m;->f:Z

    .line 150
    sput-boolean v0, Lt/m;->a:Z

    .line 151
    sput-boolean v0, Lt/m;->b:Z

    .line 152
    sput-boolean v0, Lt/m;->c:Z

    .line 153
    return-void
.end method

.method static synthetic g()Lcom/google/android/maps/driveabout/vector/ei;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lt/m;->e:Lcom/google/android/maps/driveabout/vector/ei;

    return-object v0
.end method

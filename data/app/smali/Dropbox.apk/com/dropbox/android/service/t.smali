.class public final Lcom/dropbox/android/service/t;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static b:Lcom/dropbox/android/service/t;


# instance fields
.field final a:Landroid/content/Context;

.field private final c:Landroid/net/ConnectivityManager;

.field private final d:Ljava/util/ArrayList;

.field private e:Lcom/dropbox/android/service/w;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/android/service/t;->b:Lcom/dropbox/android/service/t;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/service/t;->d:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/service/t;->e:Lcom/dropbox/android/service/w;

    .line 79
    iput-object p1, p0, Lcom/dropbox/android/service/t;->a:Landroid/content/Context;

    .line 80
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/dropbox/android/service/t;->c:Landroid/net/ConnectivityManager;

    .line 83
    iget-object v0, p0, Lcom/dropbox/android/service/t;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/service/DropboxNetworkReceiver;->a(Landroid/content/Context;Z)V

    .line 84
    return-void
.end method

.method public static a()Lcom/dropbox/android/service/t;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/dropbox/android/service/t;->b:Lcom/dropbox/android/service/t;

    if-nez v0, :cond_a

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 98
    :cond_a
    sget-object v0, Lcom/dropbox/android/service/t;->b:Lcom/dropbox/android/service/t;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    sget-object v0, Lcom/dropbox/android/service/t;->b:Lcom/dropbox/android/service/t;

    if-nez v0, :cond_c

    .line 88
    new-instance v0, Lcom/dropbox/android/service/t;

    invoke-direct {v0, p0}, Lcom/dropbox/android/service/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dropbox/android/service/t;->b:Lcom/dropbox/android/service/t;

    .line 92
    return-void

    .line 90
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 182
    packed-switch p0, :pswitch_data_8

    .line 189
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 187
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 182
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private d()V
    .registers 5

    .prologue
    .line 156
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    iget-object v0, p0, Lcom/dropbox/android/service/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/service/v;

    .line 159
    invoke-interface {v0}, Lcom/dropbox/android/service/v;->a()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 160
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 162
    :cond_22
    iget-object v3, p0, Lcom/dropbox/android/service/t;->e:Lcom/dropbox/android/service/w;

    invoke-interface {v0, v3}, Lcom/dropbox/android/service/v;->a(Lcom/dropbox/android/service/w;)V

    goto :goto_c

    .line 166
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 167
    iget-object v0, p0, Lcom/dropbox/android/service/t;->e:Lcom/dropbox/android/service/w;

    .line 168
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 169
    new-instance v3, Lcom/dropbox/android/service/u;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/dropbox/android/service/u;-><init>(Lcom/dropbox/android/service/t;Ljava/util/ArrayList;Lcom/dropbox/android/service/w;Ljava/util/Timer;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 179
    :cond_3f
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/dropbox/android/service/v;)V
    .registers 4
    .parameter

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/service/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/dropbox/android/service/t;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/service/DropboxNetworkReceiver;->a(Landroid/content/Context;Z)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 109
    monitor-exit p0

    return-void

    .line 107
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/dropbox/android/service/w;
    .registers 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/dropbox/android/service/t;->c()V

    .line 130
    iget-object v0, p0, Lcom/dropbox/android/service/t;->e:Lcom/dropbox/android/service/w;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 128
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/dropbox/android/service/v;)V
    .registers 4
    .parameter

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/service/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/dropbox/android/service/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 119
    iget-object v0, p0, Lcom/dropbox/android/service/t;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/service/DropboxNetworkReceiver;->a(Landroid/content/Context;Z)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 121
    :cond_14
    monitor-exit p0

    return-void

    .line 117
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 134
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/dropbox/android/service/t;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 135
    new-instance v0, Lcom/dropbox/android/service/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/service/w;-><init>(ZZZZLcom/dropbox/android/service/u;)V

    .line 136
    if-eqz v8, :cond_2f

    .line 137
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 138
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/service/w;->a(Lcom/dropbox/android/service/w;Z)Z

    .line 140
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v6, :cond_3e

    .line 141
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/service/w;->b(Lcom/dropbox/android/service/w;Z)Z

    .line 149
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/dropbox/android/service/t;->e:Lcom/dropbox/android/service/w;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/service/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 150
    iput-object v0, p0, Lcom/dropbox/android/service/t;->e:Lcom/dropbox/android/service/w;

    .line 151
    invoke-direct {p0}, Lcom/dropbox/android/service/t;->d()V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_54

    .line 153
    :cond_3c
    monitor-exit p0

    return-void

    .line 143
    :cond_3e
    :try_start_3e
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Lcom/dropbox/android/service/t;->a(I)Z

    move-result v1

    if-nez v1, :cond_57

    move v1, v6

    :goto_49
    invoke-static {v0, v1}, Lcom/dropbox/android/service/w;->c(Lcom/dropbox/android/service/w;Z)Z

    .line 144
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/dropbox/android/service/w;->d(Lcom/dropbox/android/service/w;Z)Z
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_54

    goto :goto_2f

    .line 134
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_57
    move v1, v7

    .line 143
    goto :goto_49
.end method

.class public final Lcom/dropbox/android/util/y;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static d:Lcom/dropbox/android/util/C;

.field private static e:J

.field private static final f:Ljava/lang/Object;

.field private static final g:Lcom/dropbox/android/util/A;


# instance fields
.field private a:Lcom/dropbox/android/util/C;

.field private final b:Lcom/dropbox/android/util/B;

.field private final c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 110
    new-instance v0, Lcom/dropbox/android/util/C;

    invoke-direct {v0, v1, v1}, Lcom/dropbox/android/util/C;-><init>(ZZ)V

    sput-object v0, Lcom/dropbox/android/util/y;->d:Lcom/dropbox/android/util/C;

    .line 111
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/dropbox/android/util/y;->e:J

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/android/util/y;->f:Ljava/lang/Object;

    .line 194
    new-instance v0, Lcom/dropbox/android/util/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/A;-><init>(Lcom/dropbox/android/util/z;)V

    sput-object v0, Lcom/dropbox/android/util/y;->g:Lcom/dropbox/android/util/A;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/util/B;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/dropbox/android/util/C;

    invoke-direct {v0, v1, v1}, Lcom/dropbox/android/util/C;-><init>(ZZ)V

    iput-object v0, p0, Lcom/dropbox/android/util/y;->a:Lcom/dropbox/android/util/C;

    .line 77
    iput-object p2, p0, Lcom/dropbox/android/util/y;->b:Lcom/dropbox/android/util/B;

    .line 78
    new-instance v0, Lcom/dropbox/android/util/z;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/z;-><init>(Lcom/dropbox/android/util/y;)V

    iput-object v0, p0, Lcom/dropbox/android/util/y;->c:Landroid/content/BroadcastReceiver;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/util/y;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_2e

    .line 95
    invoke-static {v0}, Lcom/dropbox/android/util/y;->b(Landroid/content/Intent;)Lcom/dropbox/android/util/C;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/android/util/y;->a(Lcom/dropbox/android/util/C;)V

    .line 97
    :cond_2e
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dropbox/android/util/C;
    .registers 10
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 123
    sget-object v3, Lcom/dropbox/android/util/y;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 124
    :try_start_8
    sget-wide v4, Lcom/dropbox/android/util/y;->e:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x64

    cmp-long v0, v4, v6

    if-gtz v0, :cond_16

    .line 125
    sget-object v0, Lcom/dropbox/android/util/y;->d:Lcom/dropbox/android/util/C;

    monitor-exit v3

    .line 140
    :goto_15
    return-object v0

    .line 127
    :cond_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_39

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_3c

    .line 132
    invoke-static {v0}, Lcom/dropbox/android/util/y;->b(Landroid/content/Intent;)Lcom/dropbox/android/util/C;

    move-result-object v0

    .line 136
    :goto_2d
    sget-object v3, Lcom/dropbox/android/util/y;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 137
    :try_start_30
    sput-object v0, Lcom/dropbox/android/util/y;->d:Lcom/dropbox/android/util/C;

    .line 138
    sput-wide v1, Lcom/dropbox/android/util/y;->e:J

    .line 139
    monitor-exit v3

    goto :goto_15

    :catchall_36
    move-exception v0

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_36

    throw v0

    .line 127
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    .line 134
    :cond_3c
    new-instance v0, Lcom/dropbox/android/util/C;

    invoke-direct {v0, v8, v8}, Lcom/dropbox/android/util/C;-><init>(ZZ)V

    goto :goto_2d
.end method

.method static synthetic a(Landroid/content/Intent;)Lcom/dropbox/android/util/C;
    .registers 2
    .parameter

    .prologue
    .line 14
    invoke-static {p0}, Lcom/dropbox/android/util/y;->b(Landroid/content/Intent;)Lcom/dropbox/android/util/C;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/util/y;)Lcom/dropbox/android/util/C;
    .registers 2
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dropbox/android/util/y;->a:Lcom/dropbox/android/util/C;

    return-object v0
.end method

.method private a(Lcom/dropbox/android/util/C;)V
    .registers 6
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/dropbox/android/util/y;->a:Lcom/dropbox/android/util/C;

    .line 145
    sget-object v1, Lcom/dropbox/android/util/y;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_5
    sput-object p1, Lcom/dropbox/android/util/y;->d:Lcom/dropbox/android/util/C;

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/dropbox/android/util/y;->e:J

    .line 148
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method static synthetic a(Lcom/dropbox/android/util/y;Lcom/dropbox/android/util/C;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/dropbox/android/util/y;->a(Lcom/dropbox/android/util/C;)V

    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/util/y;)Lcom/dropbox/android/util/B;
    .registers 2
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dropbox/android/util/y;->b:Lcom/dropbox/android/util/B;

    return-object v0
.end method

.method private static b(Landroid/content/Intent;)Lcom/dropbox/android/util/C;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 152
    const-string v0, "level"

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 153
    const-string v3, "scale"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 154
    if-eq v0, v4, :cond_13

    if-ne v3, v4, :cond_19

    .line 155
    :cond_13
    new-instance v0, Lcom/dropbox/android/util/C;

    invoke-direct {v0, v2, v2}, Lcom/dropbox/android/util/C;-><init>(ZZ)V

    .line 163
    :goto_18
    return-object v0

    .line 157
    :cond_19
    int-to-double v4, v0

    int-to-double v6, v3

    div-double v6, v4, v6

    .line 158
    const-string v0, "plugged"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v1

    .line 160
    :goto_26
    sget-object v3, Lcom/dropbox/android/util/y;->g:Lcom/dropbox/android/util/A;

    invoke-virtual {v3, v6, v7, v0}, Lcom/dropbox/android/util/A;->a(DZ)V

    .line 162
    if-eqz v0, :cond_3f

    const-wide v3, 0x3fb999999999999aL

    .line 163
    :goto_32
    new-instance v5, Lcom/dropbox/android/util/C;

    cmpg-double v3, v6, v3

    if-gtz v3, :cond_45

    :goto_38
    invoke-direct {v5, v1, v0}, Lcom/dropbox/android/util/C;-><init>(ZZ)V

    move-object v0, v5

    goto :goto_18

    :cond_3d
    move v0, v2

    .line 158
    goto :goto_26

    .line 162
    :cond_3f
    const-wide v3, 0x3fd3333333333333L

    goto :goto_32

    :cond_45
    move v1, v2

    .line 163
    goto :goto_38
.end method

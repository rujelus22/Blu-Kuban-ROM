.class public Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;
.super Ljava/lang/Object;
.source "ShortcutApplicationInfor.java"


# static fields
.field private static volatile mShortcutApplicationInfor:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->runnable:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mHandler:Landroid/os/Handler;

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public static getInstance()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;
    .registers 2

    .prologue
    .line 18
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mShortcutApplicationInfor:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    if-nez v0, :cond_13

    .line 19
    const-class v1, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    monitor-enter v1

    .line 20
    :try_start_7
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mShortcutApplicationInfor:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    if-nez v0, :cond_12

    .line 21
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mShortcutApplicationInfor:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    .line 23
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 25
    :cond_13
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mShortcutApplicationInfor:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;

    return-object v0

    .line 23
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method protected getApplicationInfor()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortcutApplicationInfor;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

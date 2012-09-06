.class public final Lcom/dropbox/android/util/bc;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:Lcom/dropbox/android/util/bc;


# instance fields
.field private final b:Lcom/dropbox/android/util/bd;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 41
    if-eqz v0, :cond_24

    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_22

    .line 45
    const/4 v1, 0x3

    .line 49
    :goto_14
    const-string v2, "Dropbox network manager wifi lock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/dropbox/android/util/bd;

    invoke-direct {v1, v0}, Lcom/dropbox/android/util/bd;-><init>(Landroid/net/wifi/WifiManager$WifiLock;)V

    iput-object v1, p0, Lcom/dropbox/android/util/bc;->b:Lcom/dropbox/android/util/bd;

    .line 54
    :goto_21
    return-void

    .line 47
    :cond_22
    const/4 v1, 0x1

    goto :goto_14

    .line 52
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/util/bc;->b:Lcom/dropbox/android/util/bd;

    goto :goto_21
.end method

.method public static declared-synchronized a()Lcom/dropbox/android/util/bc;
    .registers 3

    .prologue
    .line 14
    const-class v1, Lcom/dropbox/android/util/bc;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/dropbox/android/util/bc;->a:Lcom/dropbox/android/util/bc;

    if-nez v0, :cond_12

    .line 15
    new-instance v0, Lcom/dropbox/android/util/bc;

    invoke-static {}, Lcom/dropbox/android/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dropbox/android/util/bc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dropbox/android/util/bc;->a:Lcom/dropbox/android/util/bc;

    .line 17
    :cond_12
    sget-object v0, Lcom/dropbox/android/util/bc;->a:Lcom/dropbox/android/util/bc;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/android/util/bc;->b:Lcom/dropbox/android/util/bd;

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/dropbox/android/util/bc;->b:Lcom/dropbox/android/util/bd;

    invoke-virtual {v0}, Lcom/dropbox/android/util/bd;->a()V

    .line 29
    :cond_9
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/android/util/bc;->b:Lcom/dropbox/android/util/bd;

    if-eqz v0, :cond_9

    .line 34
    iget-object v0, p0, Lcom/dropbox/android/util/bc;->b:Lcom/dropbox/android/util/bd;

    invoke-virtual {v0}, Lcom/dropbox/android/util/bd;->b()V

    .line 36
    :cond_9
    return-void
.end method

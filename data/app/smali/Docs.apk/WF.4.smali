.class public LWF;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "Ljavax/crypto/KeyGenerator;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Ljavax/crypto/KeyGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 605
    const/4 v0, 0x0

    sput-boolean v0, LWF;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LanD;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanD",
            "<",
            "Ljavax/crypto/KeyGenerator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    sget-object v0, LWF;->a:LanD;

    if-nez v0, :cond_7

    .line 608
    invoke-static {}, LWF;->b()V

    .line 610
    :cond_7
    sget-object v0, LWF;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 637
    const-class v1, LWF;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LWF;->a:Z

    .line 638
    const/4 v0, 0x0

    sput-object v0, LWF;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 639
    monitor-exit v1

    return-void

    .line 637
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(LanD;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Ljavax/crypto/KeyGenerator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    const-class v1, LWF;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWF;->a:Z

    if-eqz v0, :cond_12

    .line 630
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_javax_crypto_KeyGenerator has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 629
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 633
    :cond_12
    :try_start_12
    invoke-static {p0}, LWa;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LWF;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 634
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 620
    const-class v1, LWF;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWF;->a:Z

    if-eqz v0, :cond_12

    .line 621
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_javax_crypto_KeyGenerator has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 620
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 624
    :cond_12
    :try_start_12
    const-class v0, Ljavax/crypto/KeyGenerator;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LWF;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LWF;->a:LanD;

    .line 625
    const/4 v0, 0x1

    sput-boolean v0, LWF;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 626
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 614
    const-class v1, LWF;

    monitor-enter v1

    :try_start_3
    sget-object v0, LWF;->a:LanD;

    if-nez v0, :cond_e

    .line 615
    new-instance v0, LWF;

    invoke-direct {v0}, LWF;-><init>()V

    sput-object v0, LWF;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 617
    :cond_e
    monitor-exit v1

    return-void

    .line 614
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 603
    invoke-virtual {p0}, LWF;->a()Ljavax/crypto/KeyGenerator;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljavax/crypto/KeyGenerator;
    .registers 3

    .prologue
    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

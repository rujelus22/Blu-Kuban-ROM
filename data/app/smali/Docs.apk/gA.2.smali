.class public LgA;
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
        "LdX;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LdX;",
            ">;"
        }
    .end annotation
.end field

.field private static a:LdX;

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 679
    const/4 v0, 0x0

    sput-boolean v0, LgA;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 677
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
            "LdX;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    sget-object v0, LgA;->a:LanD;

    if-nez v0, :cond_7

    .line 682
    invoke-static {}, LgA;->b()V

    .line 684
    :cond_7
    sget-object v0, LgA;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 711
    const-class v1, LgA;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LgA;->a:Z

    .line 712
    const/4 v0, 0x0

    sput-object v0, LgA;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 713
    monitor-exit v1

    return-void

    .line 711
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
            "LdX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    const-class v1, LgA;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgA;->a:Z

    if-eqz v0, :cond_12

    .line 704
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_ClientMode has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 703
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 707
    :cond_12
    :try_start_12
    invoke-static {p0}, Lfe;->z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LgA;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 708
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 694
    const-class v1, LgA;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgA;->a:Z

    if-eqz v0, :cond_12

    .line 695
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_ClientMode has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 694
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 698
    :cond_12
    :try_start_12
    const-class v0, LdX;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LgA;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LgA;->a:LanD;

    .line 699
    const/4 v0, 0x1

    sput-boolean v0, LgA;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 700
    monitor-exit v1

    return-void
.end method

.method public static a(LdX;)V
    .registers 2
    .parameter

    .prologue
    .line 723
    invoke-static {p0}, Lfe;->A(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdX;

    sput-object v0, LgA;->a:LdX;

    .line 724
    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 688
    const-class v1, LgA;

    monitor-enter v1

    :try_start_3
    sget-object v0, LgA;->a:LanD;

    if-nez v0, :cond_e

    .line 689
    new-instance v0, LgA;

    invoke-direct {v0}, LgA;-><init>()V

    sput-object v0, LgA;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 691
    :cond_e
    monitor-exit v1

    return-void

    .line 688
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LdX;
    .registers 2

    .prologue
    .line 719
    sget-object v0, LgA;->a:LdX;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 677
    invoke-virtual {p0}, LgA;->a()LdX;

    move-result-object v0

    return-object v0
.end method

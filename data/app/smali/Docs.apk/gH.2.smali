.class public LgH;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<[",
        "Lhq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<[",
            "Lhq;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 728
    const/4 v0, 0x0

    sput-boolean v0, LgH;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LanD;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanD",
            "<[",
            "Lhq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    sget-object v0, LgH;->a:LanD;

    if-nez v0, :cond_7

    .line 731
    invoke-static {}, LgH;->b()V

    .line 733
    :cond_7
    sget-object v0, LgH;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 760
    const-class v1, LgH;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LgH;->a:Z

    .line 761
    const/4 v0, 0x0

    sput-object v0, LgH;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 762
    monitor-exit v1

    return-void

    .line 760
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
            "<[",
            "Lhq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 752
    const-class v1, LgH;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgH;->a:Z

    if-eqz v0, :cond_12

    .line 753
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_ShortcutDefinition$91$93 has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 752
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 756
    :cond_12
    :try_start_12
    invoke-static {p0}, Lfe;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LgH;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 757
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 743
    const-class v1, LgH;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgH;->a:Z

    if-eqz v0, :cond_12

    .line 744
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_ShortcutDefinition$91$93 has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 743
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 747
    :cond_12
    :try_start_12
    const-class v0, [Lhq;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LgH;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LgH;->a:LanD;

    .line 748
    const/4 v0, 0x1

    sput-boolean v0, LgH;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 749
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 737
    const-class v1, LgH;

    monitor-enter v1

    :try_start_3
    sget-object v0, LgH;->a:LanD;

    if-nez v0, :cond_e

    .line 738
    new-instance v0, LgH;

    invoke-direct {v0}, LgH;-><init>()V

    sput-object v0, LgH;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 740
    :cond_e
    monitor-exit v1

    return-void

    .line 737
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, LgH;->a()[Lhq;

    move-result-object v0

    return-object v0
.end method

.method public a()[Lhq;
    .registers 3

    .prologue
    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

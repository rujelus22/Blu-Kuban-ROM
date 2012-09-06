.class public LZk;
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
        "LZJ;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LZJ;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 560
    const/4 v0, 0x0

    sput-boolean v0, LZk;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 558
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
            "LZJ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    sget-object v0, LZk;->a:LanD;

    if-nez v0, :cond_7

    .line 563
    invoke-static {}, LZk;->b()V

    .line 565
    :cond_7
    sget-object v0, LZk;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 592
    const-class v1, LZk;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZk;->a:Z

    .line 593
    const/4 v0, 0x0

    sput-object v0, LZk;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 594
    monitor-exit v1

    return-void

    .line 592
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
            "LZJ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    const-class v1, LZk;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZk;->a:Z

    if-eqz v0, :cond_12

    .line 585
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_PreferenceUtils has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 584
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 588
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZk;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 589
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 575
    const-class v1, LZk;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZk;->a:Z

    if-eqz v0, :cond_12

    .line 576
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_PreferenceUtils has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 575
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 579
    :cond_12
    :try_start_12
    const-class v0, LZJ;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZk;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZk;->a:LanD;

    .line 580
    const/4 v0, 0x1

    sput-boolean v0, LZk;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 581
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 569
    const-class v1, LZk;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZk;->a:LanD;

    if-nez v0, :cond_e

    .line 570
    new-instance v0, LZk;

    invoke-direct {v0}, LZk;-><init>()V

    sput-object v0, LZk;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 572
    :cond_e
    monitor-exit v1

    return-void

    .line 569
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LZJ;
    .registers 2

    .prologue
    .line 598
    invoke-static {}, LZl;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZJ;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 558
    invoke-virtual {p0}, LZk;->a()LZJ;

    move-result-object v0

    return-object v0
.end method

.class public LZg;
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
        "LZy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LZy;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1087
    const/4 v0, 0x0

    sput-boolean v0, LZg;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1085
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
            "LZy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1089
    sget-object v0, LZg;->a:LanD;

    if-nez v0, :cond_7

    .line 1090
    invoke-static {}, LZg;->b()V

    .line 1092
    :cond_7
    sget-object v0, LZg;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1119
    const-class v1, LZg;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZg;->a:Z

    .line 1120
    const/4 v0, 0x0

    sput-object v0, LZg;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1121
    monitor-exit v1

    return-void

    .line 1119
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
            "LZy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1111
    const-class v1, LZg;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZg;->a:Z

    if-eqz v0, :cond_12

    .line 1112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_ImageBlurProcessor has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1111
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1115
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->D(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZg;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1116
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1102
    const-class v1, LZg;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZg;->a:Z

    if-eqz v0, :cond_12

    .line 1103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_ImageBlurProcessor has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1102
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1106
    :cond_12
    :try_start_12
    const-class v0, LZy;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZg;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZg;->a:LanD;

    .line 1107
    const/4 v0, 0x1

    sput-boolean v0, LZg;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1108
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1096
    const-class v1, LZg;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZg;->a:LanD;

    if-nez v0, :cond_e

    .line 1097
    new-instance v0, LZg;

    invoke-direct {v0}, LZg;-><init>()V

    sput-object v0, LZg;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1099
    :cond_e
    monitor-exit v1

    return-void

    .line 1096
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LZy;
    .registers 2

    .prologue
    .line 1125
    new-instance v0, LZy;

    invoke-direct {v0}, LZy;-><init>()V

    .line 1127
    invoke-static {v0}, LYK;->a(LZy;)V

    .line 1129
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1085
    invoke-virtual {p0}, LZg;->a()LZy;

    move-result-object v0

    return-object v0
.end method

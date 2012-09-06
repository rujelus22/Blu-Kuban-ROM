.class public LZl;
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
        "LZL;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LZL;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1189
    const/4 v0, 0x0

    sput-boolean v0, LZl;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1187
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
            "LZL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1191
    sget-object v0, LZl;->a:LanD;

    if-nez v0, :cond_7

    .line 1192
    invoke-static {}, LZl;->b()V

    .line 1194
    :cond_7
    sget-object v0, LZl;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1221
    const-class v1, LZl;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZl;->a:Z

    .line 1222
    const/4 v0, 0x0

    sput-object v0, LZl;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1223
    monitor-exit v1

    return-void

    .line 1221
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
            "LZL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1213
    const-class v1, LZl;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZl;->a:Z

    if-eqz v0, :cond_12

    .line 1214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_PreferenceUtilsImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1213
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1217
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZl;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1218
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1204
    const-class v1, LZl;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZl;->a:Z

    if-eqz v0, :cond_12

    .line 1205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_PreferenceUtilsImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1204
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1208
    :cond_12
    :try_start_12
    const-class v0, LZL;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZl;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZl;->a:LanD;

    .line 1209
    const/4 v0, 0x1

    sput-boolean v0, LZl;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1210
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1198
    const-class v1, LZl;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZl;->a:LanD;

    if-nez v0, :cond_e

    .line 1199
    new-instance v0, LZl;

    invoke-direct {v0}, LZl;-><init>()V

    sput-object v0, LZl;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1201
    :cond_e
    monitor-exit v1

    return-void

    .line 1198
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LZL;
    .registers 5

    .prologue
    .line 1227
    new-instance v3, LZL;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LXU;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LXU;->J(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFX;

    invoke-static {}, LgE;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LXU;->K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LeZ;

    invoke-direct {v3, v0, v1, v2}, LZL;-><init>(LanD;LFX;LeZ;)V

    .line 1244
    return-object v3
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1187
    invoke-virtual {p0}, LZl;->a()LZL;

    move-result-object v0

    return-object v0
.end method

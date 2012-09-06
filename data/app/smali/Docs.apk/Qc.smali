.class public LQc;
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
        "LQp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LQp;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 211
    const/4 v0, 0x0

    sput-boolean v0, LQc;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 209
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
            "LQp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    sget-object v0, LQc;->a:LanD;

    if-nez v0, :cond_7

    .line 214
    invoke-static {}, LQc;->b()V

    .line 216
    :cond_7
    sget-object v0, LQc;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 243
    const-class v1, LQc;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LQc;->a:Z

    .line 244
    const/4 v0, 0x0

    sput-object v0, LQc;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 245
    monitor-exit v1

    return-void

    .line 243
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
            "LQp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    const-class v1, LQc;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LQc;->a:Z

    if-eqz v0, :cond_12

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sharingactivity_SharingInfoManagerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 235
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 239
    :cond_12
    :try_start_12
    invoke-static {p0}, LPr;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LQc;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 240
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 226
    const-class v1, LQc;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LQc;->a:Z

    if-eqz v0, :cond_12

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sharingactivity_SharingInfoManagerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 226
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 230
    :cond_12
    :try_start_12
    const-class v0, LQp;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LQc;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LQc;->a:LanD;

    .line 231
    const/4 v0, 0x1

    sput-boolean v0, LQc;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 232
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 220
    const-class v1, LQc;

    monitor-enter v1

    :try_start_3
    sget-object v0, LQc;->a:LanD;

    if-nez v0, :cond_e

    .line 221
    new-instance v0, LQc;

    invoke-direct {v0}, LQc;-><init>()V

    sput-object v0, LQc;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 223
    :cond_e
    monitor-exit v1

    return-void

    .line 220
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LQp;
    .registers 2

    .prologue
    .line 249
    new-instance v0, LQp;

    invoke-direct {v0}, LQp;-><init>()V

    .line 251
    invoke-static {v0}, LPT;->a(LQp;)V

    .line 253
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, LQc;->a()LQp;

    move-result-object v0

    return-object v0
.end method

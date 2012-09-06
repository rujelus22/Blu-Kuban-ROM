.class public LYM;
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
        "LXi;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXi;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1294
    const/4 v0, 0x0

    sput-boolean v0, LYM;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1292
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
            "LXi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1296
    sget-object v0, LYM;->a:LanD;

    if-nez v0, :cond_7

    .line 1297
    invoke-static {}, LYM;->b()V

    .line 1299
    :cond_7
    sget-object v0, LYM;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1326
    const-class v1, LYM;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYM;->a:Z

    .line 1327
    const/4 v0, 0x0

    sput-object v0, LYM;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1328
    monitor-exit v1

    return-void

    .line 1326
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
            "LXi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1318
    const-class v1, LYM;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYM;->a:Z

    if-eqz v0, :cond_12

    .line 1319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_AccountCapabilityFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1318
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1322
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYM;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1323
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1309
    const-class v1, LYM;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYM;->a:Z

    if-eqz v0, :cond_12

    .line 1310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_AccountCapabilityFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1309
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1313
    :cond_12
    :try_start_12
    const-class v0, LXi;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LYM;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYM;->a:LanD;

    .line 1314
    const/4 v0, 0x1

    sput-boolean v0, LYM;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1315
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1303
    const-class v1, LYM;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYM;->a:LanD;

    if-nez v0, :cond_e

    .line 1304
    new-instance v0, LYM;

    invoke-direct {v0}, LYM;-><init>()V

    sput-object v0, LYM;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1306
    :cond_e
    monitor-exit v1

    return-void

    .line 1303
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXi;
    .registers 2

    .prologue
    .line 1332
    new-instance v0, LXi;

    invoke-direct {v0}, LXi;-><init>()V

    .line 1334
    invoke-static {v0}, LYI;->a(LXi;)V

    .line 1336
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1292
    invoke-virtual {p0}, LYM;->a()LXi;

    move-result-object v0

    return-object v0
.end method

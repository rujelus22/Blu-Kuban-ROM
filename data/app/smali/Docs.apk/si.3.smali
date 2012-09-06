.class public Lsi;
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
        "LrU;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LrU;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 258
    const/4 v0, 0x0

    sput-boolean v0, Lsi;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 256
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
            "LrU;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lsi;->a:LanD;

    if-nez v0, :cond_7

    .line 261
    invoke-static {}, Lsi;->b()V

    .line 263
    :cond_7
    sget-object v0, Lsi;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 290
    const-class v1, Lsi;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lsi;->a:Z

    .line 291
    const/4 v0, 0x0

    sput-object v0, Lsi;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 292
    monitor-exit v1

    return-void

    .line 290
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
            "LrU;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    const-class v1, Lsi;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lsi;->a:Z

    if-eqz v0, :cond_12

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_driveapp_DriveAppSetImpl_ProviderImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 282
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 286
    :cond_12
    :try_start_12
    invoke-static {p0}, LrW;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lsi;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 287
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 273
    const-class v1, Lsi;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lsi;->a:Z

    if-eqz v0, :cond_12

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_driveapp_DriveAppSetImpl_ProviderImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 273
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 277
    :cond_12
    :try_start_12
    const-class v0, LrU;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lsi;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lsi;->a:LanD;

    .line 278
    const/4 v0, 0x1

    sput-boolean v0, Lsi;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 279
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 267
    const-class v1, Lsi;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lsi;->a:LanD;

    if-nez v0, :cond_e

    .line 268
    new-instance v0, Lsi;

    invoke-direct {v0}, Lsi;-><init>()V

    sput-object v0, Lsi;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 270
    :cond_e
    monitor-exit v1

    return-void

    .line 267
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lsi;->a()LrU;

    move-result-object v0

    return-object v0
.end method

.method public a()LrU;
    .registers 3

    .prologue
    .line 296
    new-instance v1, LrU;

    invoke-static {}, LYN;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LrW;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXh;

    invoke-direct {v1, v0}, LrU;-><init>(LXh;)V

    .line 303
    return-object v1
.end method

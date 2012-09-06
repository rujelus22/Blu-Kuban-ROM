.class public LqS;
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
        "LpY;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LpY;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 252
    const/4 v0, 0x0

    sput-boolean v0, LqS;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 250
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
            "LpY;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, LqS;->a:LanD;

    if-nez v0, :cond_7

    .line 255
    invoke-static {}, LqS;->b()V

    .line 257
    :cond_7
    sget-object v0, LqS;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 284
    const-class v1, LqS;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LqS;->a:Z

    .line 285
    const/4 v0, 0x0

    sput-object v0, LqS;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 286
    monitor-exit v1

    return-void

    .line 284
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
            "LpY;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    const-class v1, LqS;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqS;->a:Z

    if-eqz v0, :cond_12

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_ExportOpenerSelector has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 276
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 280
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LqS;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 281
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 267
    const-class v1, LqS;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqS;->a:Z

    if-eqz v0, :cond_12

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_ExportOpenerSelector has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 267
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 271
    :cond_12
    :try_start_12
    const-class v0, LpY;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LqS;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LqS;->a:LanD;

    .line 272
    const/4 v0, 0x1

    sput-boolean v0, LqS;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 273
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 261
    const-class v1, LqS;

    monitor-enter v1

    :try_start_3
    sget-object v0, LqS;->a:LanD;

    if-nez v0, :cond_e

    .line 262
    new-instance v0, LqS;

    invoke-direct {v0}, LqS;-><init>()V

    sput-object v0, LqS;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 264
    :cond_e
    monitor-exit v1

    return-void

    .line 261
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, LqS;->a()LpY;

    move-result-object v0

    return-object v0
.end method

.method public a()LpY;
    .registers 4

    .prologue
    .line 290
    new-instance v2, LpY;

    invoke-static {}, Lrd;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lqi;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-static {}, LqQ;->a()LanD;

    move-result-object v1

    invoke-static {v1}, Lqi;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    invoke-direct {v2, v0, v1}, LpY;-><init>(LanD;LanD;)V

    .line 302
    return-object v2
.end method

.class public LWD;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static a:Ljava/lang/String;

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 268
    const/4 v0, 0x0

    sput-boolean v0, LWD;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 266
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    sget-object v0, LWD;->a:LanD;

    if-nez v0, :cond_7

    .line 271
    invoke-static {}, LWD;->b()V

    .line 273
    :cond_7
    sget-object v0, LWD;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 300
    const-class v1, LWD;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LWD;->a:Z

    .line 301
    const/4 v0, 0x0

    sput-object v0, LWD;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 302
    monitor-exit v1

    return-void

    .line 300
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    const-class v1, LWD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWD;->a:Z

    if-eqz v0, :cond_12

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_String_Named_versionFlag has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 292
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 296
    :cond_12
    :try_start_12
    invoke-static {p0}, LWa;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LWD;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 297
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 283
    const-class v1, LWD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWD;->a:Z

    if-eqz v0, :cond_12

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_String_Named_versionFlag has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 283
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 287
    :cond_12
    :try_start_12
    const-class v0, Ljava/lang/String;

    const-string v2, "versionFlag"

    invoke-static {v2}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v2

    invoke-static {v0, v2}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    invoke-static {}, LWD;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LWD;->a:LanD;

    .line 288
    const/4 v0, 0x1

    sput-boolean v0, LWD;->a:Z
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    .line 289
    monitor-exit v1

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 312
    invoke-static {p0}, LWa;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, LWD;->a:Ljava/lang/String;

    .line 313
    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 277
    const-class v1, LWD;

    monitor-enter v1

    :try_start_3
    sget-object v0, LWD;->a:LanD;

    if-nez v0, :cond_e

    .line 278
    new-instance v0, LWD;

    invoke-direct {v0}, LWD;-><init>()V

    sput-object v0, LWD;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 280
    :cond_e
    monitor-exit v1

    return-void

    .line 277
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 266
    invoke-virtual {p0}, LWD;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 308
    sget-object v0, LWD;->a:Ljava/lang/String;

    return-object v0
.end method

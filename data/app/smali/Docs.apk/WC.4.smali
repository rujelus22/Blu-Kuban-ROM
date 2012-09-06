.class public LWC;
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
    .line 317
    const/4 v0, 0x0

    sput-boolean v0, LWC;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 315
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
    .line 319
    sget-object v0, LWC;->a:LanD;

    if-nez v0, :cond_7

    .line 320
    invoke-static {}, LWC;->b()V

    .line 322
    :cond_7
    sget-object v0, LWC;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 349
    const-class v1, LWC;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LWC;->a:Z

    .line 350
    const/4 v0, 0x0

    sput-object v0, LWC;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 351
    monitor-exit v1

    return-void

    .line 349
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
    .line 341
    const-class v1, LWC;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWC;->a:Z

    if-eqz v0, :cond_12

    .line 342
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_String_Named_marketFlag has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 341
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 345
    :cond_12
    :try_start_12
    invoke-static {p0}, LWa;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LWC;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 346
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 332
    const-class v1, LWC;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWC;->a:Z

    if-eqz v0, :cond_12

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_String_Named_marketFlag has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 332
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 336
    :cond_12
    :try_start_12
    const-class v0, Ljava/lang/String;

    const-string v2, "marketFlag"

    invoke-static {v2}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v2

    invoke-static {v0, v2}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    invoke-static {}, LWC;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LWC;->a:LanD;

    .line 337
    const/4 v0, 0x1

    sput-boolean v0, LWC;->a:Z
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    .line 338
    monitor-exit v1

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 361
    invoke-static {p0}, LWa;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, LWC;->a:Ljava/lang/String;

    .line 362
    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 326
    const-class v1, LWC;

    monitor-enter v1

    :try_start_3
    sget-object v0, LWC;->a:LanD;

    if-nez v0, :cond_e

    .line 327
    new-instance v0, LWC;

    invoke-direct {v0}, LWC;-><init>()V

    sput-object v0, LWC;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 329
    :cond_e
    monitor-exit v1

    return-void

    .line 326
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, LWC;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 357
    sget-object v0, LWC;->a:Ljava/lang/String;

    return-object v0
.end method

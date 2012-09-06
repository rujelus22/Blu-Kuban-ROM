.class public Ltx;
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
        "LtE;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LtE;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 269
    const/4 v0, 0x0

    sput-boolean v0, Ltx;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 267
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
            "LtE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Ltx;->a:LanD;

    if-nez v0, :cond_7

    .line 272
    invoke-static {}, Ltx;->b()V

    .line 274
    :cond_7
    sget-object v0, Ltx;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 301
    const-class v1, Ltx;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Ltx;->a:Z

    .line 302
    const/4 v0, 0x0

    sput-object v0, Ltx;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 303
    monitor-exit v1

    return-void

    .line 301
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
            "LtE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    const-class v1, Ltx;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Ltx;->a:Z

    if-eqz v0, :cond_12

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_docsuploader_OcrImageUploadFilter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 293
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 297
    :cond_12
    :try_start_12
    invoke-static {p0}, Ltf;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Ltx;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 298
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 284
    const-class v1, Ltx;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Ltx;->a:Z

    if-eqz v0, :cond_12

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_docsuploader_OcrImageUploadFilter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 284
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 288
    :cond_12
    :try_start_12
    const-class v0, LtE;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Ltx;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Ltx;->a:LanD;

    .line 289
    const/4 v0, 0x1

    sput-boolean v0, Ltx;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 290
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 278
    const-class v1, Ltx;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ltx;->a:LanD;

    if-nez v0, :cond_e

    .line 279
    new-instance v0, Ltx;

    invoke-direct {v0}, Ltx;-><init>()V

    sput-object v0, Ltx;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 281
    :cond_e
    monitor-exit v1

    return-void

    .line 278
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, Ltx;->a()LtE;

    move-result-object v0

    return-object v0
.end method

.method public a()LtE;
    .registers 2

    .prologue
    .line 307
    new-instance v0, LtE;

    invoke-direct {v0}, LtE;-><init>()V

    .line 309
    invoke-static {v0}, Lts;->a(LtE;)V

    .line 311
    return-object v0
.end method

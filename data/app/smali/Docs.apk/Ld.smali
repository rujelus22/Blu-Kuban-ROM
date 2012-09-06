.class public LLd;
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
        "LJq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LJq;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 196
    const/4 v0, 0x0

    sput-boolean v0, LLd;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 194
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
            "LJq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    sget-object v0, LLd;->a:LanD;

    if-nez v0, :cond_7

    .line 199
    invoke-static {}, LLd;->b()V

    .line 201
    :cond_7
    sget-object v0, LLd;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 228
    const-class v1, LLd;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LLd;->a:Z

    .line 229
    const/4 v0, 0x0

    sput-object v0, LLd;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 230
    monitor-exit v1

    return-void

    .line 228
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
            "LJq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    const-class v1, LLd;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LLd;->a:Z

    if-eqz v0, :cond_12

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_notification_DocsNotificationManager has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 220
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 224
    :cond_12
    :try_start_12
    invoke-static {p0}, LKT;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LLd;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 225
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 211
    const-class v1, LLd;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LLd;->a:Z

    if-eqz v0, :cond_12

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_notification_DocsNotificationManager has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 211
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 215
    :cond_12
    :try_start_12
    const-class v0, LKR;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LLd;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LLd;->a:LanD;

    .line 216
    const/4 v0, 0x1

    sput-boolean v0, LLd;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 217
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 205
    const-class v1, LLd;

    monitor-enter v1

    :try_start_3
    sget-object v0, LLd;->a:LanD;

    if-nez v0, :cond_e

    .line 206
    new-instance v0, LLd;

    invoke-direct {v0}, LLd;-><init>()V

    sput-object v0, LLd;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 208
    :cond_e
    monitor-exit v1

    return-void

    .line 205
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LKR;
    .registers 2

    .prologue
    .line 234
    new-instance v0, LKR;

    invoke-direct {v0}, LKR;-><init>()V

    .line 236
    invoke-static {v0}, LLb;->a(LKR;)V

    .line 238
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 194
    invoke-virtual {p0}, LLd;->a()LKR;

    move-result-object v0

    return-object v0
.end method

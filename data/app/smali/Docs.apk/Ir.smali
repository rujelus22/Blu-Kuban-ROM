.class public LIr;
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
        "LIi;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LIi;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 133
    const/4 v0, 0x0

    sput-boolean v0, LIr;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 131
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
            "LIi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    sget-object v0, LIr;->a:LanD;

    if-nez v0, :cond_7

    .line 136
    invoke-static {}, LIr;->b()V

    .line 138
    :cond_7
    sget-object v0, LIr;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 165
    const-class v1, LIr;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LIr;->a:Z

    .line 166
    const/4 v0, 0x0

    sput-object v0, LIr;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 167
    monitor-exit v1

    return-void

    .line 165
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
            "LIi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    const-class v1, LIr;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LIr;->a:Z

    if-eqz v0, :cond_12

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_honeycomb_ActionBarHelper has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 157
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 161
    :cond_12
    :try_start_12
    invoke-static {p0}, LIm;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LIr;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 162
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 148
    const-class v1, LIr;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LIr;->a:Z

    if-eqz v0, :cond_12

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_honeycomb_ActionBarHelper has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 148
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 152
    :cond_12
    :try_start_12
    const-class v0, LIi;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LIr;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LIr;->a:LanD;

    .line 153
    const/4 v0, 0x1

    sput-boolean v0, LIr;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 154
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 142
    const-class v1, LIr;

    monitor-enter v1

    :try_start_3
    sget-object v0, LIr;->a:LanD;

    if-nez v0, :cond_e

    .line 143
    new-instance v0, LIr;

    invoke-direct {v0}, LIr;-><init>()V

    sput-object v0, LIr;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 145
    :cond_e
    monitor-exit v1

    return-void

    .line 142
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LIi;
    .registers 3

    .prologue
    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, LIr;->a()LIi;

    move-result-object v0

    return-object v0
.end method

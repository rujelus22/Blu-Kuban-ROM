.class public LcD;
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
        "Lcj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcj;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    const/4 v0, 0x0

    sput-boolean v0, LcD;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 124
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
            "Lcj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, LcD;->a:LanD;

    if-nez v0, :cond_7

    .line 129
    invoke-static {}, LcD;->b()V

    .line 131
    :cond_7
    sget-object v0, LcD;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 158
    const-class v1, LcD;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LcD;->a:Z

    .line 159
    const/4 v0, 0x0

    sput-object v0, LcD;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 160
    monitor-exit v1

    return-void

    .line 158
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
            "Lcj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    const-class v1, LcD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LcD;->a:Z

    if-eqz v0, :cond_12

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_ContextModule_ActiveOrApplicationContextProvider has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 150
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 154
    :cond_12
    :try_start_12
    invoke-static {p0}, Lcq;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LcD;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 155
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 141
    const-class v1, LcD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LcD;->a:Z

    if-eqz v0, :cond_12

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_ContextModule_ActiveOrApplicationContextProvider has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 141
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 145
    :cond_12
    :try_start_12
    const-class v0, Lcj;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LcD;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LcD;->a:LanD;

    .line 146
    const/4 v0, 0x1

    sput-boolean v0, LcD;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 147
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 135
    const-class v1, LcD;

    monitor-enter v1

    :try_start_3
    sget-object v0, LcD;->a:LanD;

    if-nez v0, :cond_e

    .line 136
    new-instance v0, LcD;

    invoke-direct {v0}, LcD;-><init>()V

    sput-object v0, LcD;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 138
    :cond_e
    monitor-exit v1

    return-void

    .line 135
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcj;
    .registers 2

    .prologue
    .line 164
    new-instance v0, Lcj;

    invoke-direct {v0}, Lcj;-><init>()V

    .line 166
    invoke-static {v0}, Lcz;->a(Lcj;)V

    .line 168
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    invoke-virtual {p0}, LcD;->a()Lcj;

    move-result-object v0

    return-object v0
.end method

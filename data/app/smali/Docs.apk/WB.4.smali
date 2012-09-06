.class public LWB;
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

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, LWB;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
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
    .line 80
    sget-object v0, LWB;->a:LanD;

    if-nez v0, :cond_7

    .line 81
    invoke-static {}, LWB;->b()V

    .line 83
    :cond_7
    sget-object v0, LWB;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 110
    const-class v1, LWB;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LWB;->a:Z

    .line 111
    const/4 v0, 0x0

    sput-object v0, LWB;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 112
    monitor-exit v1

    return-void

    .line 110
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
    .line 102
    const-class v1, LWB;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWB;->a:Z

    if-eqz v0, :cond_12

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_String_Named_DiscussionTrackerLabel has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 102
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 106
    :cond_12
    :try_start_12
    invoke-static {p0}, LWa;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LWB;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 107
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 93
    const-class v1, LWB;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWB;->a:Z

    if-eqz v0, :cond_12

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_String_Named_DiscussionTrackerLabel has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 93
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 97
    :cond_12
    :try_start_12
    const-class v0, Ljava/lang/String;

    const-string v2, "DiscussionTrackerLabel"

    invoke-static {v2}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v2

    invoke-static {v0, v2}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    invoke-static {}, LWB;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LWB;->a:LanD;

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, LWB;->a:Z
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    .line 99
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 87
    const-class v1, LWB;

    monitor-enter v1

    :try_start_3
    sget-object v0, LWB;->a:LanD;

    if-nez v0, :cond_e

    .line 88
    new-instance v0, LWB;

    invoke-direct {v0}, LWB;-><init>()V

    sput-object v0, LWB;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 90
    :cond_e
    monitor-exit v1

    return-void

    .line 87
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, LWB;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    invoke-static {}, LmW;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    .line 119
    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

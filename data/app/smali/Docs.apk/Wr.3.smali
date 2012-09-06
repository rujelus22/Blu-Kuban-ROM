.class public LWr;
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
        "Ljava/lang/Class",
        "<+",
        "Landroid/app/Activity;",
        ">;>;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 124
    const/4 v0, 0x0

    sput-boolean v0, LWr;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 122
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
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, LWr;->a:LanD;

    if-nez v0, :cond_7

    .line 127
    invoke-static {}, LWr;->b()V

    .line 129
    :cond_7
    sget-object v0, LWr;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 156
    const-class v1, LWr;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LWr;->a:Z

    .line 157
    const/4 v0, 0x0

    sput-object v0, LWr;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 158
    monitor-exit v1

    return-void

    .line 156
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
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 148
    const-class v1, LWr;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWr;->a:Z

    if-eqz v0, :cond_12

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_Class$60$63$32extends$32android_app_Activity$62_Named_DocListActivity has already been scoped."

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
    invoke-static {p0}, LWa;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LWr;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 153
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 139
    const-class v1, LWr;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWr;->a:Z

    if-eqz v0, :cond_12

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_Class$60$63$32extends$32android_app_Activity$62_Named_DocListActivity has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 139
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 143
    :cond_12
    :try_start_12
    new-instance v0, LWs;

    invoke-direct {v0}, LWs;-><init>()V

    const-string v2, "DocListActivity"

    invoke-static {v2}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v2

    invoke-static {v0, v2}, Lant;->a(LanP;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    invoke-static {}, LWr;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LWr;->a:LanD;

    .line 144
    const/4 v0, 0x1

    sput-boolean v0, LWr;->a:Z
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_f

    .line 145
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 133
    const-class v1, LWr;

    monitor-enter v1

    :try_start_3
    sget-object v0, LWr;->a:LanD;

    if-nez v0, :cond_e

    .line 134
    new-instance v0, LWr;

    invoke-direct {v0}, LWr;-><init>()V

    sput-object v0, LWr;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 136
    :cond_e
    monitor-exit v1

    return-void

    .line 133
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, LcB;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    .line 165
    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, LWr;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

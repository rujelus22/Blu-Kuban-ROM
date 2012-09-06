.class public LZq;
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
        "Laae;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Laae;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1134
    const/4 v0, 0x0

    sput-boolean v0, LZq;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1132
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
            "Laae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1136
    sget-object v0, LZq;->a:LanD;

    if-nez v0, :cond_7

    .line 1137
    invoke-static {}, LZq;->b()V

    .line 1139
    :cond_7
    sget-object v0, LZq;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1166
    const-class v1, LZq;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZq;->a:Z

    .line 1167
    const/4 v0, 0x0

    sput-object v0, LZq;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1168
    monitor-exit v1

    return-void

    .line 1166
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
            "Laae;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1158
    const-class v1, LZq;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZq;->a:Z

    if-eqz v0, :cond_12

    .line 1159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_ThumbnailFetcherImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1158
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1162
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZq;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1163
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1149
    const-class v1, LZq;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZq;->a:Z

    if-eqz v0, :cond_12

    .line 1150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_ThumbnailFetcherImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1149
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1153
    :cond_12
    :try_start_12
    const-class v0, Laae;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZq;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZq;->a:LanD;

    .line 1154
    const/4 v0, 0x1

    sput-boolean v0, LZq;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1155
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1143
    const-class v1, LZq;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZq;->a:LanD;

    if-nez v0, :cond_e

    .line 1144
    new-instance v0, LZq;

    invoke-direct {v0}, LZq;-><init>()V

    sput-object v0, LZq;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1146
    :cond_e
    monitor-exit v1

    return-void

    .line 1143
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Laae;
    .registers 4

    .prologue
    .line 1172
    new-instance v2, Laae;

    invoke-static {}, LSl;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LXU;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-static {}, LJc;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LXU;->G(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIL;

    invoke-direct {v2, v0, v1}, Laae;-><init>(LanD;LIL;)V

    .line 1184
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1132
    invoke-virtual {p0}, LZq;->a()Laae;

    move-result-object v0

    return-object v0
.end method

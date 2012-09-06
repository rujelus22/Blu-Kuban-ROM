.class public LSM;
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
        "LRa;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LRa;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-boolean v0, LSM;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 135
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
            "LRa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, LSM;->a:LanD;

    if-nez v0, :cond_7

    .line 140
    invoke-static {}, LSM;->b()V

    .line 142
    :cond_7
    sget-object v0, LSM;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 169
    const-class v1, LSM;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LSM;->a:Z

    .line 170
    const/4 v0, 0x0

    sput-object v0, LSM;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 171
    monitor-exit v1

    return-void

    .line 169
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
            "LRa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    const-class v1, LSM;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LSM;->a:Z

    if-eqz v0, :cond_12

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_gdata2_parser_xml_DocsListGDataParserFactory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 161
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 165
    :cond_12
    :try_start_12
    invoke-static {p0}, LSF;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LSM;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 166
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 152
    const-class v1, LSM;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LSM;->a:Z

    if-eqz v0, :cond_12

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_gdata2_parser_xml_DocsListGDataParserFactory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 152
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 156
    :cond_12
    :try_start_12
    const-class v0, LSB;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LSM;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LSM;->a:LanD;

    .line 157
    const/4 v0, 0x1

    sput-boolean v0, LSM;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 158
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 146
    const-class v1, LSM;

    monitor-enter v1

    :try_start_3
    sget-object v0, LSM;->a:LanD;

    if-nez v0, :cond_e

    .line 147
    new-instance v0, LSM;

    invoke-direct {v0}, LSM;-><init>()V

    sput-object v0, LSM;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 149
    :cond_e
    monitor-exit v1

    return-void

    .line 146
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LSB;
    .registers 3

    .prologue
    .line 175
    new-instance v1, LSB;

    invoke-static {}, Lass;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LSF;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasu;

    invoke-direct {v1, v0}, LSB;-><init>(Lasu;)V

    .line 182
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 135
    invoke-virtual {p0}, LSM;->a()LSB;

    move-result-object v0

    return-object v0
.end method

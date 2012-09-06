.class public LarW;
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
        "LarP;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LarP;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-boolean v0, LarW;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 118
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
            "LarP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, LarW;->a:LanD;

    if-nez v0, :cond_7

    .line 123
    invoke-static {}, LarW;->b()V

    .line 125
    :cond_7
    sget-object v0, LarW;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 152
    const-class v1, LarW;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LarW;->a:Z

    .line 153
    const/4 v0, 0x0

    sput-object v0, LarW;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 154
    monitor-exit v1

    return-void

    .line 152
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
            "LarP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    const-class v1, LarW;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LarW;->a:Z

    if-eqz v0, :cond_12

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_wireless_gdata2_client_GDataParserFactory_Named_AccountMetadata has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 144
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 148
    :cond_12
    :try_start_12
    invoke-static {p0}, LarR;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LarW;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 149
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 135
    const-class v1, LarW;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LarW;->a:Z

    if-eqz v0, :cond_12

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_wireless_gdata2_client_GDataParserFactory_Named_AccountMetadata has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 135
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 139
    :cond_12
    :try_start_12
    const-class v0, LarP;

    const-string v2, "AccountMetadata"

    invoke-static {v2}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v2

    invoke-static {v0, v2}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    invoke-static {}, LarW;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LarW;->a:LanD;

    .line 140
    const/4 v0, 0x1

    sput-boolean v0, LarW;->a:Z
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    .line 141
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 129
    const-class v1, LarW;

    monitor-enter v1

    :try_start_3
    sget-object v0, LarW;->a:LanD;

    if-nez v0, :cond_e

    .line 130
    new-instance v0, LarW;

    invoke-direct {v0}, LarW;-><init>()V

    sput-object v0, LarW;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 132
    :cond_e
    monitor-exit v1

    return-void

    .line 129
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LarP;
    .registers 2

    .prologue
    .line 158
    invoke-static {}, LSK;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LarP;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, LarW;->a()LarP;

    move-result-object v0

    return-object v0
.end method

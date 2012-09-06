.class public LWz;
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
    .line 170
    const/4 v0, 0x0

    sput-boolean v0, LWz;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 168
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
    .line 172
    sget-object v0, LWz;->a:LanD;

    if-nez v0, :cond_7

    .line 173
    invoke-static {}, LWz;->b()V

    .line 175
    :cond_7
    sget-object v0, LWz;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 202
    const-class v1, LWz;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LWz;->a:Z

    .line 203
    const/4 v0, 0x0

    sput-object v0, LWz;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 204
    monitor-exit v1

    return-void

    .line 202
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
    .line 194
    const-class v1, LWz;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWz;->a:Z

    if-eqz v0, :cond_12

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_String_Annotation_com_google_android_apps_docs_analytics_Tracker_AnalyticsPropertyId has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 194
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 198
    :cond_12
    :try_start_12
    invoke-static {p0}, LWa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LWz;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 199
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 185
    const-class v1, LWz;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWz;->a:Z

    if-eqz v0, :cond_12

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_String_Annotation_com_google_android_apps_docs_analytics_Tracker_AnalyticsPropertyId has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 185
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 189
    :cond_12
    :try_start_12
    const-class v0, Ljava/lang/String;

    const-class v2, LdF;

    invoke-static {v0, v2}, Lant;->a(Ljava/lang/Class;Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LWz;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LWz;->a:LanD;

    .line 190
    const/4 v0, 0x1

    sput-boolean v0, LWz;->a:Z
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_f

    .line 191
    monitor-exit v1

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 214
    invoke-static {p0}, LWa;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, LWz;->a:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 179
    const-class v1, LWz;

    monitor-enter v1

    :try_start_3
    sget-object v0, LWz;->a:LanD;

    if-nez v0, :cond_e

    .line 180
    new-instance v0, LWz;

    invoke-direct {v0}, LWz;-><init>()V

    sput-object v0, LWz;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 182
    :cond_e
    monitor-exit v1

    return-void

    .line 179
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, LWz;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    sget-object v0, LWz;->a:Ljava/lang/String;

    return-object v0
.end method

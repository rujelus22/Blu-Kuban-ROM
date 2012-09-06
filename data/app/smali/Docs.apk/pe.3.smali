.class public Lpe;
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
        "Low;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Low;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lpe;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 128
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
            "Low;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lpe;->a:LanD;

    if-nez v0, :cond_7

    .line 133
    invoke-static {}, Lpe;->b()V

    .line 135
    :cond_7
    sget-object v0, Lpe;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 162
    const-class v1, Lpe;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lpe;->a:Z

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lpe;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 164
    monitor-exit v1

    return-void

    .line 162
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
            "Low;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    const-class v1, Lpe;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lpe;->a:Z

    if-eqz v0, :cond_12

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_dialogs_DocumentOpenerErrorDialogFragment_OnRetryButtonClickedListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 154
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 158
    :cond_12
    :try_start_12
    invoke-static {p0}, LoC;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lpe;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 159
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 145
    const-class v1, Lpe;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lpe;->a:Z

    if-eqz v0, :cond_12

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_dialogs_DocumentOpenerErrorDialogFragment_OnRetryButtonClickedListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 145
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 149
    :cond_12
    :try_start_12
    const-class v0, Low;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lpe;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lpe;->a:LanD;

    .line 150
    const/4 v0, 0x1

    sput-boolean v0, Lpe;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 151
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 139
    const-class v1, Lpe;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lpe;->a:LanD;

    if-nez v0, :cond_e

    .line 140
    new-instance v0, Lpe;

    invoke-direct {v0}, Lpe;-><init>()V

    sput-object v0, Lpe;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 142
    :cond_e
    monitor-exit v1

    return-void

    .line 139
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lpe;->a()Low;

    move-result-object v0

    return-object v0
.end method

.method public a()Low;
    .registers 3

    .prologue
    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

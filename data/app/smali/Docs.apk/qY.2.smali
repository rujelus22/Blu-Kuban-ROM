.class public LqY;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1597
    const/4 v0, 0x0

    sput-boolean v0, LqY;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1595
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
            "Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1599
    sget-object v0, LqY;->a:LanD;

    if-nez v0, :cond_7

    .line 1600
    invoke-static {}, LqY;->b()V

    .line 1602
    :cond_7
    sget-object v0, LqY;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1629
    const-class v1, LqY;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LqY;->a:Z

    .line 1630
    const/4 v0, 0x0

    sput-object v0, LqY;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1631
    monitor-exit v1

    return-void

    .line 1629
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
            "Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1621
    const-class v1, LqY;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqY;->a:Z

    if-eqz v0, :cond_12

    .line 1622
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_KixDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1621
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1625
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->bk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LqY;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1626
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1612
    const-class v1, LqY;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqY;->a:Z

    if-eqz v0, :cond_12

    .line 1613
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_KixDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1612
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1616
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LqY;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LqY;->a:LanD;

    .line 1617
    const/4 v0, 0x1

    sput-boolean v0, LqY;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1618
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1606
    const-class v1, LqY;

    monitor-enter v1

    :try_start_3
    sget-object v0, LqY;->a:LanD;

    if-nez v0, :cond_e

    .line 1607
    new-instance v0, LqY;

    invoke-direct {v0}, LqY;-><init>()V

    sput-object v0, LqY;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1609
    :cond_e
    monitor-exit v1

    return-void

    .line 1606
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;
    .registers 4

    .prologue
    .line 1635
    new-instance v2, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lqi;->bl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqi;->bm(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFX;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;-><init>(Landroid/content/Context;LFX;)V

    .line 1647
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1595
    invoke-virtual {p0}, LqY;->a()Lcom/google/android/apps/docs/doclist/documentopener/KixDocumentOpener;

    move-result-object v0

    return-object v0
.end method

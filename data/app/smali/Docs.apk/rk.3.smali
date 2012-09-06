.class public Lrk;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 607
    const/4 v0, 0x0

    sput-boolean v0, Lrk;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 605
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
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    sget-object v0, Lrk;->a:LanD;

    if-nez v0, :cond_7

    .line 610
    invoke-static {}, Lrk;->b()V

    .line 612
    :cond_7
    sget-object v0, Lrk;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 639
    const-class v1, Lrk;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lrk;->a:Z

    .line 640
    const/4 v0, 0x0

    sput-object v0, Lrk;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 641
    monitor-exit v1

    return-void

    .line 639
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
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    const-class v1, Lrk;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrk;->a:Z

    if-eqz v0, :cond_12

    .line 632
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_ZippedKixDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 631
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 635
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lrk;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 636
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 622
    const-class v1, Lrk;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrk;->a:Z

    if-eqz v0, :cond_12

    .line 623
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_ZippedKixDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 622
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 626
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lrk;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lrk;->a:LanD;

    .line 627
    const/4 v0, 0x1

    sput-boolean v0, Lrk;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 628
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 616
    const-class v1, Lrk;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lrk;->a:LanD;

    if-nez v0, :cond_e

    .line 617
    new-instance v0, Lrk;

    invoke-direct {v0}, Lrk;-><init>()V

    sput-object v0, Lrk;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 619
    :cond_e
    monitor-exit v1

    return-void

    .line 616
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;
    .registers 3

    .prologue
    .line 645
    new-instance v1, Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lqi;->D(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;-><init>(Landroid/content/Context;)V

    .line 652
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 605
    invoke-virtual {p0}, Lrk;->a()Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/sdgtl/mediahub/spr/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/am;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/ah;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

.field private final synthetic c:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/ah;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/ai;->a:Lcom/sdgtl/mediahub/spr/ah;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/ai;->b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/ai;->c:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ai;->a:Lcom/sdgtl/mediahub/spr/ah;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/ah;->a(Lcom/sdgtl/mediahub/spr/ah;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->o(Lcom/sdgtl/mediahub/spr/Main;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1e

    move-result v0

    if-nez v0, :cond_f

    if-nez p1, :cond_11

    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ai;->a:Lcom/sdgtl/mediahub/spr/ah;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/ai;->b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/ai;->c:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/ah;->a(Lcom/sdgtl/mediahub/spr/ah;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1e

    goto :goto_f

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

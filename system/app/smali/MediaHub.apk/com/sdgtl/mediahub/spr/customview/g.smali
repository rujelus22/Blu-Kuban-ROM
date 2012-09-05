.class final Lcom/sdgtl/mediahub/spr/customview/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/e;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/e;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/g;->a:Lcom/sdgtl/mediahub/spr/customview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bitmapReady(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/g;->a:Lcom/sdgtl/mediahub/spr/customview/e;

    iput-object p1, v0, Lcom/sdgtl/mediahub/spr/customview/e;->c:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$1()Lcom/sdgtl/mediahub/spr/customview/j;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Lcom/sdgtl/mediahub/spr/customview/j;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/g;->a:Lcom/sdgtl/mediahub/spr/customview/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/g;->a:Lcom/sdgtl/mediahub/spr/customview/e;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->requestRender()V

    return-void
.end method

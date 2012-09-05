.class final Lcom/sdgtl/mediahub/spr/customview/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/a;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/a;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    const/4 v1, 0x0

    #setter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$0(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;Z)V

    return-void
.end method

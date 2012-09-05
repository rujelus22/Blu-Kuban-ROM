.class final Lcom/sdgtl/mediahub/spr/screen/hx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/hx;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemPlayClick(Lcom/sdgtl/mediahub/spr/common/di;I)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hx;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/common/di;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hx;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->d()V

    return-void
.end method

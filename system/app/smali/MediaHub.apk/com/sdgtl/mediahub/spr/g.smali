.class final Lcom/sdgtl/mediahub/spr/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/f;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/f;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/g;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/g;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/g;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->B(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/g;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->E(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setContantsList(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/g;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->F(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/g;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->E(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/g;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/g;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->w(Lcom/sdgtl/mediahub/spr/Main;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->pointToProduct(I)V

    :cond_52
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/g;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Z)V

    :cond_5c
    return-void
.end method

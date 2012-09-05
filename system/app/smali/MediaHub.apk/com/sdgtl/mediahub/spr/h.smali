.class final Lcom/sdgtl/mediahub/spr/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/f;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/dj;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/f;Lcom/sdgtl/mediahub/spr/common/dj;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/h;->a:Lcom/sdgtl/mediahub/spr/f;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/h;->b:Lcom/sdgtl/mediahub/spr/common/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/h;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/h;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/h;->a:Lcom/sdgtl/mediahub/spr/f;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/f;->a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->g(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/download/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/h;->b:Lcom/sdgtl/mediahub/spr/common/dj;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

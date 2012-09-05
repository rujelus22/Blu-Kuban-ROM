.class final Lcom/sdgtl/mediahub/spr/screen/gc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/gb;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/dj;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/gb;Lcom/sdgtl/mediahub/spr/common/dj;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/gc;->a:Lcom/sdgtl/mediahub/spr/screen/gb;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/gc;->b:Lcom/sdgtl/mediahub/spr/common/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gc;->a:Lcom/sdgtl/mediahub/spr/screen/gb;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/gb;->a(Lcom/sdgtl/mediahub/spr/screen/gb;)Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->A(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gc;->a:Lcom/sdgtl/mediahub/spr/screen/gb;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/gb;->a(Lcom/sdgtl/mediahub/spr/screen/gb;)Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gc;->a:Lcom/sdgtl/mediahub/spr/screen/gb;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/gb;->a(Lcom/sdgtl/mediahub/spr/screen/gb;)Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->j(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/download/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gc;->b:Lcom/sdgtl/mediahub/spr/common/dj;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gc;->a:Lcom/sdgtl/mediahub/spr/screen/gb;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/gb;->a(Lcom/sdgtl/mediahub/spr/screen/gb;)Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->y()V

    return-void
.end method

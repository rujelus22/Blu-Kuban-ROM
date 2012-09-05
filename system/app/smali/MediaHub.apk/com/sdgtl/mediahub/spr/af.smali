.class final Lcom/sdgtl/mediahub/spr/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/am;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/ae;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/ae;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/af;->a:Lcom/sdgtl/mediahub/spr/ae;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/af;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/af;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/af;->a:Lcom/sdgtl/mediahub/spr/ae;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/ae;->a(Lcom/sdgtl/mediahub/spr/ae;)Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->o(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p1, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/af;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/ag;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/af;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/af;->c:Landroid/widget/ImageView;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/sdgtl/mediahub/spr/ag;-><init>(Lcom/sdgtl/mediahub/spr/af;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method

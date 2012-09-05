.class final Lcom/sdgtl/mediahub/spr/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/af;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/widget/ImageView;

.field private final synthetic d:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/af;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/ag;->a:Lcom/sdgtl/mediahub/spr/af;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/ag;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/ag;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/sdgtl/mediahub/spr/ag;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ag;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/ag;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/ag;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/ag;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ag;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1f
    return-void
.end method

.class final Lcom/mobfox/video/sdk/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/cb;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/cb;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iput-object p1, p0, Lcom/mobfox/video/sdk/cc;->a:Lcom/mobfox/video/sdk/cb;

    iput-object p2, p0, Lcom/mobfox/video/sdk/cc;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/mobfox/video/sdk/cc;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/cc;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobfox/video/sdk/cc;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/cc;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/cc;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

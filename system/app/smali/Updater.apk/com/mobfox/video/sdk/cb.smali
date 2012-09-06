.class final Lcom/mobfox/video/sdk/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/ca;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/ca;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/mobfox/video/sdk/cb;->a:Lcom/mobfox/video/sdk/ca;

    iput-object p2, p0, Lcom/mobfox/video/sdk/cb;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobfox/video/sdk/cb;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/mobfox/video/sdk/cb;->a:Lcom/mobfox/video/sdk/ca;

    iget-object v1, p0, Lcom/mobfox/video/sdk/cb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mobfox/video/sdk/ca;->a(Lcom/mobfox/video/sdk/ca;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/mobfox/video/sdk/cb;->a:Lcom/mobfox/video/sdk/ca;

    invoke-static {v1}, Lcom/mobfox/video/sdk/ca;->a(Lcom/mobfox/video/sdk/ca;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mobfox/video/sdk/cc;

    iget-object v3, p0, Lcom/mobfox/video/sdk/cb;->c:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3, v0}, Lcom/mobfox/video/sdk/cc;-><init>(Lcom/mobfox/video/sdk/cb;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method

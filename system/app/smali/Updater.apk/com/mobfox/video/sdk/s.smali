.class final Lcom/mobfox/video/sdk/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/q;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/q;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/s;->a:Lcom/mobfox/video/sdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/mobfox/video/sdk/s;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->l(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mobfox/video/sdk/s;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v0}, Lcom/mobfox/video/sdk/q;->l(Lcom/mobfox/video/sdk/q;)Lcom/mobfox/video/sdk/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobfox/video/sdk/w;->d()V

    :cond_11
    iget-object v0, p0, Lcom/mobfox/video/sdk/s;->a:Lcom/mobfox/video/sdk/q;

    iget-object v1, p0, Lcom/mobfox/video/sdk/s;->a:Lcom/mobfox/video/sdk/q;

    invoke-static {v1}, Lcom/mobfox/video/sdk/q;->m(Lcom/mobfox/video/sdk/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/q;->a(I)V

    return-void
.end method

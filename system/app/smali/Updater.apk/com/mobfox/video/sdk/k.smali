.class final Lcom/mobfox/video/sdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/j;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/j;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/k;->a:Lcom/mobfox/video/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/k;->a:Lcom/mobfox/video/sdk/j;

    iget-object v0, v0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->c(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/h;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/k;->a:Lcom/mobfox/video/sdk/j;

    iget-object v1, v1, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v1}, Lcom/mobfox/video/sdk/i;->b(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/cl;

    invoke-interface {v0}, Lcom/mobfox/video/sdk/h;->c()V

    return-void
.end method

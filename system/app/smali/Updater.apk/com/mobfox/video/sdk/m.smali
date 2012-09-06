.class final Lcom/mobfox/video/sdk/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/j;

.field private final synthetic b:Lcom/mobfox/video/sdk/cg;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/j;Lcom/mobfox/video/sdk/cg;)V
    .registers 3

    iput-object p1, p0, Lcom/mobfox/video/sdk/m;->a:Lcom/mobfox/video/sdk/j;

    iput-object p2, p0, Lcom/mobfox/video/sdk/m;->b:Lcom/mobfox/video/sdk/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/m;->a:Lcom/mobfox/video/sdk/j;

    iget-object v0, v0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->c(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/h;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/m;->b:Lcom/mobfox/video/sdk/cg;

    invoke-interface {v0, v1}, Lcom/mobfox/video/sdk/h;->a(Lcom/mobfox/video/sdk/cg;)V

    return-void
.end method

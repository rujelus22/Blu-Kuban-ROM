.class final Lcom/mobfox/video/sdk/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/i;

.field private final synthetic b:Lcom/mobfox/video/sdk/cl;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/i;Lcom/mobfox/video/sdk/cl;Z)V
    .registers 4

    iput-object p1, p0, Lcom/mobfox/video/sdk/o;->a:Lcom/mobfox/video/sdk/i;

    iput-object p2, p0, Lcom/mobfox/video/sdk/o;->b:Lcom/mobfox/video/sdk/cl;

    iput-boolean p3, p0, Lcom/mobfox/video/sdk/o;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/o;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->c(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/h;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/o;->b:Lcom/mobfox/video/sdk/cl;

    iget-boolean v1, p0, Lcom/mobfox/video/sdk/o;->c:Z

    invoke-interface {v0}, Lcom/mobfox/video/sdk/h;->b()V

    return-void
.end method

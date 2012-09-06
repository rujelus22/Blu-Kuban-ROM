.class final Lcom/mobfox/video/sdk/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/i;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/i;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/n;->a:Lcom/mobfox/video/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/mobfox/video/sdk/n;->a:Lcom/mobfox/video/sdk/i;

    new-instance v1, Lcom/mobfox/video/sdk/cl;

    invoke-direct {v1}, Lcom/mobfox/video/sdk/cl;-><init>()V

    invoke-static {v0, v1}, Lcom/mobfox/video/sdk/i;->a(Lcom/mobfox/video/sdk/i;Lcom/mobfox/video/sdk/cl;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/n;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->b(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/cl;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cl;->a(I)V

    const-string v0, "MOBFOX"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "MOBFOX"

    const-string v1, "Handling Uncaught exception in ad request thread"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    iget-object v0, p0, Lcom/mobfox/video/sdk/n;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->e(Lcom/mobfox/video/sdk/i;)V

    return-void
.end method

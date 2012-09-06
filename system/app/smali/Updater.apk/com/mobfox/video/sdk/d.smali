.class final Lcom/mobfox/video/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/c;

.field private final synthetic b:Lcom/mobfox/video/sdk/cf;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/c;Lcom/mobfox/video/sdk/cf;)V
    .registers 3

    iput-object p1, p0, Lcom/mobfox/video/sdk/d;->a:Lcom/mobfox/video/sdk/c;

    iput-object p2, p0, Lcom/mobfox/video/sdk/d;->b:Lcom/mobfox/video/sdk/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/d;->a:Lcom/mobfox/video/sdk/c;

    iget-object v0, v0, Lcom/mobfox/video/sdk/c;->a:Lcom/mobfox/video/sdk/b;

    iget-object v1, p0, Lcom/mobfox/video/sdk/d;->b:Lcom/mobfox/video/sdk/cf;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/b;->a(Lcom/mobfox/video/sdk/cf;)V

    return-void
.end method

.class final Lcom/mobfox/video/sdk/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bh;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bi;->a:Lcom/mobfox/video/sdk/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bi;->a:Lcom/mobfox/video/sdk/bh;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bh;->a(Lcom/mobfox/video/sdk/bh;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.class Lq/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:I

.field final synthetic c:Lq/M;


# direct methods
.method constructor <init>(Lq/M;Landroid/os/Handler;I)V
    .registers 4

    iput-object p1, p0, Lq/N;->c:Lq/M;

    iput-object p2, p0, Lq/N;->a:Landroid/os/Handler;

    iput p3, p0, Lq/N;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lq/N;->c:Lq/M;

    iget-object v1, p0, Lq/N;->c:Lq/M;

    invoke-static {v1}, Lq/M;->a(Lq/M;)I

    move-result v1

    invoke-static {v0, v1}, Lq/M;->a(Lq/M;I)V

    iget-object v0, p0, Lq/N;->a:Landroid/os/Handler;

    iget-object v1, p0, Lq/N;->c:Lq/M;

    invoke-static {v1}, Lq/M;->b(Lq/M;)Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lq/N;->b:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

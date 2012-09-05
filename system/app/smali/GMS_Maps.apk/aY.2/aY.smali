.class LaY/aY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaY/aX;


# direct methods
.method constructor <init>(LaY/aX;)V
    .registers 2

    iput-object p1, p0, LaY/aY;->a:LaY/aX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, LaY/aY;->a:LaY/aX;

    invoke-static {v0}, LaY/aX;->b(LaY/aX;)Lcom/google/googlenav/ui/bo;

    move-result-object v0

    iget-object v1, p0, LaY/aY;->a:LaY/aX;

    invoke-static {v1}, LaY/aX;->a(LaY/aX;)Lcom/google/googlenav/ui/bl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/bo;->a(Lcom/google/googlenav/ui/bl;)V

    return-void
.end method

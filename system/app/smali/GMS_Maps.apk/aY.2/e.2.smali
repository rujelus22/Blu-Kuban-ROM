.class LaY/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaY/f;

.field final synthetic b:Lcom/google/googlenav/E;

.field final synthetic c:LaY/a;


# direct methods
.method constructor <init>(LaY/a;LaY/f;Lcom/google/googlenav/E;)V
    .registers 4

    iput-object p1, p0, LaY/e;->c:LaY/a;

    iput-object p2, p0, LaY/e;->a:LaY/f;

    iput-object p3, p0, LaY/e;->b:Lcom/google/googlenav/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, LaY/e;->a:LaY/f;

    iget-object v1, p0, LaY/e;->b:Lcom/google/googlenav/E;

    invoke-interface {v0, v1}, LaY/f;->a(Lcom/google/googlenav/E;)V

    return-void
.end method

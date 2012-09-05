.class LaX/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaX/f;

.field final synthetic b:Lax/bz;

.field final synthetic c:LaX/a;


# direct methods
.method constructor <init>(LaX/a;LaX/f;Lax/bz;)V
    .registers 4

    iput-object p1, p0, LaX/e;->c:LaX/a;

    iput-object p2, p0, LaX/e;->a:LaX/f;

    iput-object p3, p0, LaX/e;->b:Lax/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, LaX/e;->a:LaX/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, LaX/e;->a:LaX/f;

    iget-object v1, p0, LaX/e;->b:Lax/bz;

    invoke-interface {v0, v1}, LaX/f;->a(Lax/bz;)V

    :cond_b
    return-void
.end method

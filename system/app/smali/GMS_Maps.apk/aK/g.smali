.class LaK/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:LaK/f;


# direct methods
.method constructor <init>(LaK/f;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, LaK/g;->b:LaK/f;

    iput-object p2, p0, LaK/g;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, LaK/g;->b:LaK/f;

    iget-object v0, v0, LaK/f;->a:LaK/e;

    invoke-static {v0}, LaK/e;->a(LaK/e;)LaK/a;

    move-result-object v0

    iget-object v1, p0, LaK/g;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, LaK/a;->a(Ljava/util/List;)V

    iget-object v0, p0, LaK/g;->b:LaK/f;

    iget-object v0, v0, LaK/f;->a:LaK/e;

    invoke-static {v0}, LaK/e;->b(LaK/e;)V

    iget-object v0, p0, LaK/g;->b:LaK/f;

    iget-object v0, v0, LaK/f;->a:LaK/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaK/e;->a(LaK/e;LaK/i;)LaK/i;

    return-void
.end method

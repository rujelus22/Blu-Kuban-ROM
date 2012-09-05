.class Law/r;
.super Ljava/lang/Object;

# interfaces
.implements Law/f;


# instance fields
.field final synthetic a:Law/a;

.field final synthetic b:Law/f;

.field final synthetic c:Law/q;


# direct methods
.method constructor <init>(Law/q;Law/a;Law/f;)V
    .registers 4

    iput-object p1, p0, Law/r;->c:Law/q;

    iput-object p2, p0, Law/r;->a:Law/a;

    iput-object p3, p0, Law/r;->b:Law/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Law/c;)V
    .registers 3

    iget-object v0, p0, Law/r;->c:Law/q;

    invoke-static {v0}, Law/q;->a(Law/q;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->a()V

    iget-object v0, p0, Law/r;->a:Law/a;

    invoke-interface {v0}, Law/a;->c()V

    iget-object v0, p0, Law/r;->b:Law/f;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Law/r;->b:Law/f;

    invoke-interface {v0, p1}, Law/f;->a(Law/c;)V

    :cond_1b
    return-void
.end method

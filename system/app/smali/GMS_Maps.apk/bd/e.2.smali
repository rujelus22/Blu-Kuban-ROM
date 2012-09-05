.class Lbd/e;
.super Ljava/lang/Object;

# interfaces
.implements Law/f;


# instance fields
.field final synthetic a:Lbd/a;


# direct methods
.method constructor <init>(Lbd/a;)V
    .registers 2

    iput-object p1, p0, Lbd/e;->a:Lbd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Law/c;)V
    .registers 3

    sget-object v0, Law/b;->k:Law/c;

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lbd/e;->a:Lbd/a;

    invoke-static {v0}, Lbd/a;->a(Lbd/a;)Lcom/google/googlenav/ui/wizard/bO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bO;->a()V

    :cond_d
    return-void
.end method

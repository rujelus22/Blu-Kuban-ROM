.class Lcom/google/googlenav/ui/g;
.super Lbb/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/g;->a:Lcom/google/googlenav/ui/f;

    invoke-direct {p0}, Lbb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/g;->a:Lcom/google/googlenav/ui/f;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/f;->c()V

    const/4 v0, 0x1

    return v0
.end method

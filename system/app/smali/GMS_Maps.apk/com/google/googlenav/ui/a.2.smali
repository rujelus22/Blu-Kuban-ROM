.class public Lcom/google/googlenav/ui/a;
.super Lbb/b;


# instance fields
.field private a:Lcom/google/googlenav/ui/p;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;)V
    .registers 2

    invoke-direct {p0}, Lbb/b;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/a;->a:Lcom/google/googlenav/ui/p;

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 6

    instance-of v0, p1, Lbb/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lbb/a;

    iget-object v0, p0, Lcom/google/googlenav/ui/a;->a:Lcom/google/googlenav/ui/p;

    invoke-virtual {p1}, Lbb/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lbb/a;->b()I

    move-result v2

    invoke-virtual {p1}, Lbb/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

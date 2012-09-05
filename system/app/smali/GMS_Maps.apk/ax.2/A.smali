.class Lax/A;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bw;


# instance fields
.field final synthetic a:Lax/x;


# direct methods
.method constructor <init>(Lax/x;)V
    .registers 2

    iput-object p1, p0, Lax/A;->a:Lax/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lax/A;->a:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaY/K;->i(Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/bx;)V
    .registers 5

    if-nez p1, :cond_12

    iget-object v0, p0, Lax/A;->a:Lax/x;

    invoke-static {v0}, Lax/x;->c(Lax/x;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x19b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lax/A;->a:Lax/x;

    const/16 v1, 0x139

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lax/x;->a(IILjava/lang/Object;)Z

    goto :goto_11
.end method

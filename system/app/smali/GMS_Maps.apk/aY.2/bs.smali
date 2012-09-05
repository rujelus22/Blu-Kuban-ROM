.class LaY/bs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aW;


# instance fields
.field final synthetic a:LaY/br;


# direct methods
.method constructor <init>(LaY/br;)V
    .registers 2

    iput-object p1, p0, LaY/bs;->a:LaY/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ah;Lcom/google/googlenav/aV;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->Q()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->R()I

    move-result v1

    invoke-static {p1, v0, v1}, Lau/x;->a(Lcom/google/googlenav/ah;II)Lau/x;

    move-result-object v0

    iget-object v1, p0, LaY/bs;->a:LaY/br;

    invoke-virtual {v1, v0, v2, v2, v2}, LaY/br;->a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V

    return-void
.end method

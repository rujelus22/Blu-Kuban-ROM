.class Lax/J;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/eU;


# instance fields
.field final synthetic a:Lax/I;


# direct methods
.method constructor <init>(Lax/I;)V
    .registers 2

    iput-object p1, p0, Lax/J;->a:Lax/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 5

    if-eqz p1, :cond_13

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bg;

    new-instance v2, Lax/K;

    invoke-direct {v2, p0}, Lax/K;-><init>(Lax/J;)V

    invoke-direct {v1, p1, v2}, Lcom/google/googlenav/bg;-><init>(Ljava/util/List;Lcom/google/googlenav/bh;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    :cond_13
    return-void
.end method

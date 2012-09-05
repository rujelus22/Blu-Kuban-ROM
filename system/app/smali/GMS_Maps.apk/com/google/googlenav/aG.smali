.class abstract Lcom/google/googlenav/aG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/g;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/aE;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/aG;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/googlenav/h;)V
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/f;

    invoke-static {p1}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lam/b;)V
    .registers 5

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/google/googlenav/h;

    new-instance v1, Lcom/google/googlenav/ah;

    invoke-direct {v1, p2}, Lcom/google/googlenav/ah;-><init>(Lam/b;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/ah;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aG;->a(Lcom/google/googlenav/h;)V

    goto :goto_2
.end method

.class Lcom/google/googlenav/ui/am;
.super Lcom/google/googlenav/ui/ar;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/at;

.field final synthetic b:Lcom/google/googlenav/ui/ak;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ak;Ljava/lang/String;Lcom/google/googlenav/ui/at;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/am;->b:Lcom/google/googlenav/ui/ak;

    iput-object p3, p0, Lcom/google/googlenav/ui/am;->a:Lcom/google/googlenav/ui/at;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/ar;-><init>(Lcom/google/googlenav/ui/ak;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/am;->a:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->F()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x21b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

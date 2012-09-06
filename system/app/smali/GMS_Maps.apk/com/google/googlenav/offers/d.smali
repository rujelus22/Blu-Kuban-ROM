.class Lcom/google/googlenav/offers/d;
.super LY/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/offers/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/offers/a;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/googlenav/offers/d;->a:Lcom/google/googlenav/offers/a;

    invoke-direct {p0, p2}, LY/d;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/offers/d;->a:Lcom/google/googlenav/offers/a;

    invoke-static {v0}, Lcom/google/googlenav/offers/a;->a(Lcom/google/googlenav/offers/a;)Lat/u;

    move-result-object v0

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/google/googlenav/offers/d;->a:Lcom/google/googlenav/offers/a;

    invoke-virtual {v1}, Lcom/google/googlenav/offers/a;->d()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 152
    iget-object v1, p0, Lcom/google/googlenav/offers/d;->a:Lcom/google/googlenav/offers/a;

    const-string v2, "br"

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/offers/a;->a(Lcom/google/googlenav/offers/a;Lat/B;Ljava/lang/String;)V

    .line 154
    :cond_19
    return-void
.end method

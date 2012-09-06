.class Lcom/google/googlenav/friend/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/be;


# instance fields
.field final synthetic a:Lat/B;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lcom/google/googlenav/friend/ai;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/ai;Lat/B;Ljava/lang/Long;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/googlenav/friend/ak;->c:Lcom/google/googlenav/friend/ai;

    iput-object p2, p0, Lcom/google/googlenav/friend/ak;->a:Lat/B;

    iput-object p3, p0, Lcom/google/googlenav/friend/ak;->b:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/googlenav/friend/ak;->c:Lcom/google/googlenav/friend/ai;

    invoke-static {v0}, Lcom/google/googlenav/friend/ai;->a(Lcom/google/googlenav/friend/ai;)Lcom/google/googlenav/friend/ap;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/friend/ak;->c:Lcom/google/googlenav/friend/ai;

    invoke-static {v0}, Lcom/google/googlenav/friend/ai;->a(Lcom/google/googlenav/friend/ai;)Lcom/google/googlenav/friend/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/ak;->a:Lat/B;

    iget-object v2, p0, Lcom/google/googlenav/friend/ak;->b:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/friend/ap;->a(Lat/B;Ljava/lang/Long;)V

    .line 159
    :goto_15
    return-void

    .line 156
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/friend/ak;->c:Lcom/google/googlenav/friend/ai;

    iget-object v1, p0, Lcom/google/googlenav/friend/ak;->a:Lat/B;

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/ai;->a(Lcom/google/googlenav/friend/ai;Lat/B;)Lat/B;

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/friend/ak;->c:Lcom/google/googlenav/friend/ai;

    iget-object v1, p0, Lcom/google/googlenav/friend/ak;->b:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/ai;->a(Lcom/google/googlenav/friend/ai;Ljava/lang/Long;)Ljava/lang/Long;

    goto :goto_15
.end method

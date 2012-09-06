.class Lcom/google/googlenav/offers/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/o;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/googlenav/offers/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/offers/a;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/googlenav/offers/h;->b:Lcom/google/googlenav/offers/a;

    iput-wide p2, p0, Lcom/google/googlenav/offers/h;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    .line 514
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/offers/h;->a:J

    sub-long/2addr v0, v2

    .line 516
    const/16 v2, 0x58

    const-string v3, "och"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

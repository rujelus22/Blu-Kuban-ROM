.class public abstract Lbc/n;
.super Lbc/s;


# direct methods
.method public constructor <init>(Lau/v;Lau/s;ILjava/util/List;)V
    .registers 11

    sget-object v1, Lbc/q;->d:Lbc/q;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbc/s;-><init>(Lbc/q;Lau/v;Lau/s;ILjava/util/List;)V

    invoke-virtual {p2}, Lau/s;->b()Lau/u;

    move-result-object v0

    iput-object v0, p0, Lbc/n;->d:Lau/u;

    return-void
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lbc/n;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/n;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/n;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()LaJ/B;
    .registers 2

    iget-object v0, p0, Lbc/n;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->k()LaJ/B;

    move-result-object v0

    return-object v0
.end method

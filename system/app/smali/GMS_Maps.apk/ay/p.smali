.class public Lay/p;
.super Ljava/lang/Object;

# interfaces
.implements Lar/m;


# instance fields
.field private final a:Lcom/google/googlenav/android/ac;

.field private final b:Lap/c;

.field private c:Lay/a;

.field private d:Lay/r;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ac;Lap/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lay/p;->a:Lcom/google/googlenav/android/ac;

    iput-object p2, p0, Lay/p;->b:Lap/c;

    return-void
.end method


# virtual methods
.method public a()Lay/a;
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_14
    iget-object v0, p0, Lay/p;->c:Lay/a;

    if-nez v0, :cond_23

    new-instance v0, Lay/a;

    iget-object v1, p0, Lay/p;->a:Lcom/google/googlenav/android/ac;

    iget-object v2, p0, Lay/p;->b:Lap/c;

    invoke-direct {v0, v1, v2}, Lay/a;-><init>(Lcom/google/googlenav/android/ac;Lap/c;)V

    iput-object v0, p0, Lay/p;->c:Lay/a;

    :cond_23
    iget-object v0, p0, Lay/p;->c:Lay/a;

    return-object v0
.end method

.method public b()Lay/r;
    .registers 4

    iget-object v0, p0, Lay/p;->d:Lay/r;

    if-nez v0, :cond_f

    new-instance v0, Lay/r;

    const/16 v1, 0x64

    iget-object v2, p0, Lay/p;->a:Lcom/google/googlenav/android/ac;

    invoke-direct {v0, v1, v2}, Lay/r;-><init>(ILcom/google/googlenav/android/ac;)V

    iput-object v0, p0, Lay/p;->d:Lay/r;

    :cond_f
    iget-object v0, p0, Lay/p;->d:Lay/r;

    return-object v0
.end method

.method public g()Lar/k;
    .registers 5

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lay/p;->c:Lay/a;

    if-eqz v1, :cond_18

    new-instance v1, Lar/k;

    const-string v2, "friend photos"

    iget-object v3, p0, Lay/p;->c:Lay/a;

    invoke-virtual {v3}, Lay/a;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v1, p0, Lay/p;->d:Lay/r;

    if-eqz v1, :cond_2c

    new-instance v1, Lar/k;

    const-string v2, "media photos"

    iget-object v3, p0, Lay/p;->d:Lay/r;

    invoke-virtual {v3}, Lay/r;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    const/4 v1, 0x0

    new-instance v2, Lar/k;

    const-string v3, "PhotoManager"

    invoke-direct {v2, v3, v1, v0}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v2
.end method

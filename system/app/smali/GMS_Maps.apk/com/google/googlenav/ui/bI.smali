.class public Lcom/google/googlenav/ui/bI;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bI;->a:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bI;->b:Ljava/util/List;

    iput p1, p0, Lcom/google/googlenav/ui/bI;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/bH;
    .registers 5

    const/4 v3, 0x0

    new-instance v2, Lcom/google/googlenav/ui/bH;

    iget-object v0, p0, Lcom/google/googlenav/ui/bI;->a:Ljava/util/List;

    new-array v1, v3, [Lah/g;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lah/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/bI;->b:Ljava/util/List;

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/bH;-><init>([Lah/g;[Ljava/lang/String;)V

    return-object v2
.end method

.method public a(I)Lcom/google/googlenav/ui/bI;
    .registers 4

    iget v0, p0, Lcom/google/googlenav/ui/bI;->c:I

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->c(II)Lah/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bI;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/googlenav/ui/bI;->b:Ljava/util/List;

    invoke-interface {v0}, Lah/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

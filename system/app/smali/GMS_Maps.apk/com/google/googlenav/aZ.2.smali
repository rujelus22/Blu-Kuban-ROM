.class public Lcom/google/googlenav/aZ;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/aZ;->a:I

    iput-object p2, p0, Lcom/google/googlenav/aZ;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/aZ;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/aZ;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aZ;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aZ;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aZ;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aZ;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/aZ;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    sget-char v2, Lcom/google/googlenav/ui/bw;->bj:C

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Las/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/googlenav/aZ;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lcom/google/googlenav/aZ;->a:I

    check-cast p1, Lcom/google/googlenav/aZ;

    invoke-virtual {p1}, Lcom/google/googlenav/aZ;->a()I

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

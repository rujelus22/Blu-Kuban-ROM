.class Lcom/google/googlenav/ui/bz;
.super Ljava/lang/Object;


# instance fields
.field private final a:B

.field private final b:C

.field private final c:Lah/f;


# direct methods
.method constructor <init>(BCLah/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/google/googlenav/ui/bz;->a:B

    iput-char p2, p0, Lcom/google/googlenav/ui/bz;->b:C

    iput-object p3, p0, Lcom/google/googlenav/ui/bz;->c:Lah/f;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/googlenav/ui/bz;

    if-eqz v0, :cond_20

    iget-byte v1, p0, Lcom/google/googlenav/ui/bz;->a:B

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/bz;

    iget-byte v0, v0, Lcom/google/googlenav/ui/bz;->a:B

    if-ne v1, v0, :cond_20

    iget-char v1, p0, Lcom/google/googlenav/ui/bz;->b:C

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/bz;

    iget-char v0, v0, Lcom/google/googlenav/ui/bz;->b:C

    if-ne v1, v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/bz;->c:Lah/f;

    check-cast p1, Lcom/google/googlenav/ui/bz;

    iget-object v1, p1, Lcom/google/googlenav/ui/bz;->c:Lah/f;

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public hashCode()I
    .registers 3

    iget-byte v0, p0, Lcom/google/googlenav/ui/bz;->a:B

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-char v1, p0, Lcom/google/googlenav/ui/bz;->b:C

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/bz;->c:Lah/f;

    if-eqz v1, :cond_16

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlenav/ui/bz;->c:Lah/f;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    return v0
.end method

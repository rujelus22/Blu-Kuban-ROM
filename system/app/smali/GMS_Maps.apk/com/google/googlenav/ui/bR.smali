.class Lcom/google/googlenav/ui/br;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:B

.field private final b:C

.field private final c:LS/f;


# direct methods
.method constructor <init>(BCLS/f;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2841
    iput-byte p1, p0, Lcom/google/googlenav/ui/br;->a:B

    .line 2842
    iput-char p2, p0, Lcom/google/googlenav/ui/br;->b:C

    .line 2843
    iput-object p3, p0, Lcom/google/googlenav/ui/br;->c:LS/f;

    .line 2844
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 2858
    instance-of v0, p1, Lcom/google/googlenav/ui/br;

    if-eqz v0, :cond_20

    iget-byte v1, p0, Lcom/google/googlenav/ui/br;->a:B

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/br;

    iget-byte v0, v0, Lcom/google/googlenav/ui/br;->a:B

    if-ne v1, v0, :cond_20

    iget-char v1, p0, Lcom/google/googlenav/ui/br;->b:C

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/br;

    iget-char v0, v0, Lcom/google/googlenav/ui/br;->b:C

    if-ne v1, v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/br;->c:LS/f;

    check-cast p1, Lcom/google/googlenav/ui/br;

    iget-object v1, p1, Lcom/google/googlenav/ui/br;->c:LS/f;

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

    .prologue
    .line 2848
    iget-byte v0, p0, Lcom/google/googlenav/ui/br;->a:B

    add-int/lit8 v0, v0, 0x1f

    .line 2849
    mul-int/lit8 v0, v0, 0x1f

    iget-char v1, p0, Lcom/google/googlenav/ui/br;->b:C

    add-int/2addr v0, v1

    .line 2850
    iget-object v1, p0, Lcom/google/googlenav/ui/br;->c:LS/f;

    if-eqz v1, :cond_16

    .line 2851
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlenav/ui/br;->c:LS/f;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2853
    :cond_16
    return v0
.end method

.class Lcom/google/googlenav/wallpaper/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field final synthetic e:Lcom/google/googlenav/wallpaper/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/wallpaper/b;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/d;->e:Lcom/google/googlenav/wallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput p2, p0, Lcom/google/googlenav/wallpaper/d;->a:I

    .line 645
    iput p3, p0, Lcom/google/googlenav/wallpaper/d;->b:I

    .line 651
    const/16 v0, 0x500

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/d;->a(I)V

    .line 652
    return-void
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 663
    iget v0, p0, Lcom/google/googlenav/wallpaper/d;->a:I

    if-gt v0, p1, :cond_11

    iget v0, p0, Lcom/google/googlenav/wallpaper/d;->b:I

    if-gt v0, p1, :cond_11

    .line 664
    iget v0, p0, Lcom/google/googlenav/wallpaper/d;->a:I

    iput v0, p0, Lcom/google/googlenav/wallpaper/d;->c:I

    .line 665
    iget v0, p0, Lcom/google/googlenav/wallpaper/d;->b:I

    iput v0, p0, Lcom/google/googlenav/wallpaper/d;->d:I

    .line 673
    :goto_10
    return-void

    .line 666
    :cond_11
    iget v0, p0, Lcom/google/googlenav/wallpaper/d;->a:I

    iget v1, p0, Lcom/google/googlenav/wallpaper/d;->b:I

    if-le v0, v1, :cond_22

    .line 667
    iget v0, p0, Lcom/google/googlenav/wallpaper/d;->b:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/google/googlenav/wallpaper/d;->a:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/wallpaper/d;->d:I

    .line 668
    iput p1, p0, Lcom/google/googlenav/wallpaper/d;->c:I

    goto :goto_10

    .line 670
    :cond_22
    iget v0, p0, Lcom/google/googlenav/wallpaper/d;->a:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/google/googlenav/wallpaper/d;->b:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/wallpaper/d;->c:I

    .line 671
    iput p1, p0, Lcom/google/googlenav/wallpaper/d;->d:I

    goto :goto_10
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/googlenav/wallpaper/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/wallpaper/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 677
    if-ne p1, p0, :cond_5

    .line 687
    :cond_4
    :goto_4
    return v0

    .line 681
    :cond_5
    if-eqz p1, :cond_b

    instance-of v2, p1, Lcom/google/googlenav/wallpaper/d;

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    .line 682
    goto :goto_4

    .line 685
    :cond_d
    check-cast p1, Lcom/google/googlenav/wallpaper/d;

    .line 687
    iget v2, p0, Lcom/google/googlenav/wallpaper/d;->a:I

    iget v3, p1, Lcom/google/googlenav/wallpaper/d;->a:I

    if-ne v2, v3, :cond_1b

    iget v2, p0, Lcom/google/googlenav/wallpaper/d;->b:I

    iget v3, p1, Lcom/google/googlenav/wallpaper/d;->b:I

    if-eq v2, v3, :cond_4

    :cond_1b
    move v0, v1

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[desktopWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/wallpaper/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desktopHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/wallpaper/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",[imageWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/wallpaper/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/wallpaper/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

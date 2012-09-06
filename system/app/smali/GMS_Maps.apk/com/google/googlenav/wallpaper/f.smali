.class Lcom/google/googlenav/wallpaper/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:D

.field final synthetic c:Lcom/google/googlenav/wallpaper/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/wallpaper/b;DD)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/f;->c:Lcom/google/googlenav/wallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-wide p2, p0, Lcom/google/googlenav/wallpaper/f;->a:D

    .line 558
    iput-wide p4, p0, Lcom/google/googlenav/wallpaper/f;->b:D

    .line 559
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/googlenav/wallpaper/f;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/googlenav/wallpaper/f;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 572
    if-ne p1, p0, :cond_5

    .line 581
    :cond_4
    :goto_4
    return v0

    .line 576
    :cond_5
    if-eqz p1, :cond_b

    instance-of v2, p1, Lcom/google/googlenav/wallpaper/f;

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    .line 577
    goto :goto_4

    .line 580
    :cond_d
    check-cast p1, Lcom/google/googlenav/wallpaper/f;

    .line 581
    iget-wide v2, p0, Lcom/google/googlenav/wallpaper/f;->a:D

    iget-wide v4, p1, Lcom/google/googlenav/wallpaper/f;->a:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1f

    iget-wide v2, p0, Lcom/google/googlenav/wallpaper/f;->b:D

    iget-wide v4, p1, Lcom/google/googlenav/wallpaper/f;->b:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4
.end method

.class Lcom/google/googlenav/wallpaper/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/googlenav/wallpaper/d;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/googlenav/wallpaper/f;

.field final synthetic e:Lcom/google/googlenav/wallpaper/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/d;ILjava/lang/String;Lcom/google/googlenav/wallpaper/f;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/h;->e:Lcom/google/googlenav/wallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p2, p0, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    .line 597
    iput p3, p0, Lcom/google/googlenav/wallpaper/h;->b:I

    .line 598
    iput-object p4, p0, Lcom/google/googlenav/wallpaper/h;->c:Ljava/lang/String;

    .line 599
    iput-object p5, p0, Lcom/google/googlenav/wallpaper/h;->d:Lcom/google/googlenav/wallpaper/f;

    .line 600
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/h;->e:Lcom/google/googlenav/wallpaper/b;

    invoke-static {v1}, Lcom/google/googlenav/wallpaper/b;->a(Lcom/google/googlenav/wallpaper/b;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/wallpaper/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/h;->d:Lcom/google/googlenav/wallpaper/f;

    invoke-virtual {v1}, Lcom/google/googlenav/wallpaper/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    invoke-virtual {v1}, Lcom/google/googlenav/wallpaper/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 612
    if-ne p1, p0, :cond_5

    .line 621
    :cond_4
    :goto_4
    return v0

    .line 616
    :cond_5
    if-eqz p1, :cond_b

    instance-of v2, p1, Lcom/google/googlenav/wallpaper/h;

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    .line 617
    goto :goto_4

    .line 620
    :cond_d
    check-cast p1, Lcom/google/googlenav/wallpaper/h;

    .line 621
    iget-object v2, p0, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    iget-object v3, p1, Lcom/google/googlenav/wallpaper/h;->a:Lcom/google/googlenav/wallpaper/d;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/wallpaper/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget v2, p0, Lcom/google/googlenav/wallpaper/h;->b:I

    iget v3, p1, Lcom/google/googlenav/wallpaper/h;->b:I

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/h;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlenav/wallpaper/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/h;->d:Lcom/google/googlenav/wallpaper/f;

    iget-object v3, p1, Lcom/google/googlenav/wallpaper/h;->d:Lcom/google/googlenav/wallpaper/f;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/wallpaper/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_33
    move v0, v1

    goto :goto_4
.end method

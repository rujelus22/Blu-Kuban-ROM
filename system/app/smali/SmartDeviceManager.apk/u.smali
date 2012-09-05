.class public final Lu;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lu;->a:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lu;->b:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, Lu;->c:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    if-ne p0, p1, :cond_6

    move v0, v3

    .line 42
    :goto_5
    return v0

    .line 32
    :cond_6
    instance-of v0, p1, Lu;

    if-nez v0, :cond_c

    move v0, v2

    .line 33
    goto :goto_5

    .line 38
    :cond_c
    check-cast p1, Lu;

    .line 42
    iget-object v0, p0, Lu;->a:Ljava/lang/Object;

    if-nez v0, :cond_28

    iget-object v0, p1, Lu;->a:Ljava/lang/Object;

    if-nez v0, :cond_32

    :cond_16
    iget-object v0, p0, Lu;->b:Ljava/lang/Object;

    if-nez v0, :cond_34

    iget-object v0, p1, Lu;->b:Ljava/lang/Object;

    if-nez v0, :cond_32

    :goto_1e
    iget-object v0, p0, Lu;->c:Ljava/lang/Object;

    if-nez v0, :cond_3f

    iget-object v0, p1, Lu;->c:Ljava/lang/Object;

    if-nez v0, :cond_32

    :goto_26
    move v0, v3

    goto :goto_5

    :cond_28
    iget-object v0, p0, Lu;->a:Ljava/lang/Object;

    iget-object v1, p1, Lu;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_32
    move v0, v2

    goto :goto_5

    :cond_34
    iget-object v0, p0, Lu;->b:Ljava/lang/Object;

    iget-object v1, p1, Lu;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_1e

    :cond_3f
    iget-object v0, p0, Lu;->c:Ljava/lang/Object;

    iget-object v1, p1, Lu;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_26
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lu;->a:Ljava/lang/Object;

    if-nez v0, :cond_19

    move v0, v2

    :goto_6
    add-int/lit16 v0, v0, 0x20f

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu;->b:Ljava/lang/Object;

    if-nez v1, :cond_20

    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu;->c:Ljava/lang/Object;

    if-nez v1, :cond_27

    move v1, v2

    :goto_17
    add-int/2addr v0, v1

    .line 63
    return v0

    .line 53
    :cond_19
    iget-object v0, p0, Lu;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    .line 58
    :cond_20
    iget-object v1, p0, Lu;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_f

    .line 60
    :cond_27
    iget-object v1, p0, Lu;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_17
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v1, "Triple("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lu;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lu;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lu;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lgf;
.super Lgm;
.source "a"


# direct methods
.method public constructor <init>(Lgm;)V
    .registers 3
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lgm;-><init>(ILgm;)V

    .line 154
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x4

    return v0
.end method

.method protected final a(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter

    .prologue
    .line 176
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Lgf;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    return-void
.end method

.method public final g()I
    .registers 3

    .prologue
    .line 168
    iget v0, p0, Lgf;->b:I

    .line 169
    iget v1, p0, Lgf;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgf;->b:I

    .line 170
    if-gez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

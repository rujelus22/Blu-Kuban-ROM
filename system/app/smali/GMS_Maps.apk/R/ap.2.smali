.class Lr/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ln/ac;

.field public b:Z


# direct methods
.method public constructor <init>(Ln/ac;F)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lr/ap;->a:Ln/ac;

    .line 177
    iget-object v1, p0, Lr/ap;->a:Ln/ac;

    invoke-virtual {v1}, Ln/ac;->b()Ln/U;

    move-result-object v1

    .line 178
    invoke-virtual {v1, v0}, Ln/U;->d(I)F

    move-result v1

    invoke-static {v1, p2}, Ln/S;->a(FF)F

    move-result v1

    const/high16 v2, 0x42b4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    iput-boolean v0, p0, Lr/ap;->b:Z

    .line 181
    return-void
.end method


# virtual methods
.method public a()Ln/Q;
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lr/ap;->a:Ln/ac;

    invoke-virtual {v0}, Ln/ac;->b()Ln/U;

    move-result-object v0

    .line 185
    iget-boolean v1, p0, Lr/ap;->b:Z

    if-eqz v1, :cond_f

    .line 186
    invoke-virtual {v0}, Ln/U;->c()Ln/Q;

    move-result-object v0

    .line 188
    :goto_e
    return-object v0

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    goto :goto_e
.end method

.method public a(Ln/ac;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 202
    move v0, v1

    :goto_2
    iget-object v2, p0, Lr/ap;->a:Ln/ac;

    invoke-virtual {v2}, Ln/ac;->c()I

    move-result v2

    if-ge v0, v2, :cond_22

    move v2, v1

    .line 203
    :goto_b
    invoke-virtual {p1}, Ln/ac;->c()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 204
    iget-object v3, p0, Lr/ap;->a:Ln/ac;

    invoke-virtual {v3, v0}, Ln/ac;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ln/ac;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 205
    const/4 v1, 0x1

    .line 209
    :cond_22
    return v1

    .line 203
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 202
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public b()F
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lr/ap;->a:Ln/ac;

    invoke-virtual {v0}, Ln/ac;->b()Ln/U;

    move-result-object v0

    .line 194
    iget-boolean v1, p0, Lr/ap;->b:Z

    if-eqz v1, :cond_15

    .line 195
    invoke-virtual {v0}, Ln/U;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ln/U;->d(I)F

    move-result v0

    .line 197
    :goto_14
    return v0

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln/U;->d(I)F

    move-result v0

    invoke-static {v0}, Lr/ao;->a(F)F

    move-result v0

    goto :goto_14
.end method

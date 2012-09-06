.class public Ln/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/Q;

.field private final b:I

.field private final c:F

.field private final d:Ln/Q;

.field private final e:F

.field private final f:F

.field private final g:F


# direct methods
.method public constructor <init>(Ln/Q;IFLn/Q;FFF)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ln/a;->a:Ln/Q;

    .line 43
    iput p2, p0, Ln/a;->b:I

    .line 44
    iput p3, p0, Ln/a;->c:F

    .line 45
    iput-object p4, p0, Ln/a;->d:Ln/Q;

    .line 46
    iput p5, p0, Ln/a;->e:F

    .line 47
    iput p6, p0, Ln/a;->f:F

    .line 48
    iput p7, p0, Ln/a;->g:F

    .line 49
    return-void
.end method

.method public static a(Ljava/io/DataInput;Ln/am;I)Ln/a;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x7fc0

    .line 62
    invoke-static {p0, p1}, Ln/Q;->a(Ljava/io/DataInput;Ln/am;)Ln/Q;

    move-result-object v1

    .line 63
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 67
    invoke-static {v2}, Ln/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 70
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v3

    invoke-static {v3}, Ln/L;->d(I)F

    move-result v3

    .line 74
    :goto_18
    const/4 v4, 0x0

    .line 78
    invoke-static {v2}, Ln/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 79
    invoke-static {p0, p1}, Ln/Q;->a(Ljava/io/DataInput;Ln/am;)Ln/Q;

    move-result-object v4

    .line 82
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Ln/L;->d(I)F

    move-result v5

    .line 83
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Ln/L;->a(I)F

    move-result v6

    .line 84
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Ln/L;->a(I)F

    move-result v7

    .line 87
    :goto_3b
    new-instance v0, Ln/a;

    invoke-direct/range {v0 .. v7}, Ln/a;-><init>(Ln/Q;IFLn/Q;FFF)V

    return-object v0

    :cond_41
    move v7, v0

    move v6, v0

    move v5, v0

    goto :goto_3b

    :cond_45
    move v3, v0

    goto :goto_18
.end method

.method private static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .registers 2
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Ln/a;->b:I

    invoke-static {v0}, Ln/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()Ln/Q;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Ln/a;->a:Ln/Q;

    return-object v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Ln/a;->c:F

    return v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Ln/a;->a:Ln/Q;

    invoke-static {v0}, Ln/L;->a(Ln/Q;)I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    iget-object v1, p0, Ln/a;->d:Ln/Q;

    invoke-static {v1}, Ln/L;->a(Ln/Q;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    if-ne p0, p1, :cond_6

    move v1, v0

    .line 208
    :cond_5
    :goto_5
    return v1

    .line 175
    :cond_6
    if-eqz p1, :cond_5

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 181
    check-cast p1, Ln/a;

    .line 182
    iget-object v2, p0, Ln/a;->d:Ln/Q;

    if-nez v2, :cond_64

    .line 183
    iget-object v2, p1, Ln/a;->d:Ln/Q;

    if-nez v2, :cond_5

    .line 189
    :cond_1c
    iget v2, p0, Ln/a;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Ln/a;->f:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 192
    iget v2, p0, Ln/a;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Ln/a;->e:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 195
    iget v2, p0, Ln/a;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Ln/a;->g:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 198
    iget v2, p0, Ln/a;->b:I

    iget v3, p1, Ln/a;->b:I

    if-ne v2, v3, :cond_5

    .line 201
    iget-object v2, p0, Ln/a;->a:Ln/Q;

    if-nez v2, :cond_6f

    .line 202
    iget-object v2, p1, Ln/a;->a:Ln/Q;

    if-nez v2, :cond_5

    .line 208
    :cond_54
    iget v2, p0, Ln/a;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Ln/a;->c:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_7a

    :goto_62
    move v1, v0

    goto :goto_5

    .line 186
    :cond_64
    iget-object v2, p0, Ln/a;->d:Ln/Q;

    iget-object v3, p1, Ln/a;->d:Ln/Q;

    invoke-virtual {v2, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    .line 205
    :cond_6f
    iget-object v2, p0, Ln/a;->a:Ln/Q;

    iget-object v3, p1, Ln/a;->a:Ln/Q;

    invoke-virtual {v2, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    goto :goto_5

    :cond_7a
    move v0, v1

    .line 208
    goto :goto_62
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 158
    .line 160
    iget-object v0, p0, Ln/a;->d:Ln/Q;

    if-nez v0, :cond_39

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ln/a;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ln/a;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ln/a;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ln/a;->b:I

    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ln/a;->a:Ln/Q;

    if-nez v2, :cond_40

    :goto_2e
    add-int/2addr v0, v1

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/a;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    return v0

    .line 160
    :cond_39
    iget-object v0, p0, Ln/a;->d:Ln/Q;

    invoke-virtual {v0}, Ln/Q;->hashCode()I

    move-result v0

    goto :goto_6

    .line 165
    :cond_40
    iget-object v1, p0, Ln/a;->a:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->hashCode()I

    move-result v1

    goto :goto_2e
.end method

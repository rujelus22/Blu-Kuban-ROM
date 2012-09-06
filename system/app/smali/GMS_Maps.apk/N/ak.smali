.class public Ln/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Ln/ak;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:F

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 41
    new-instance v0, Ln/ak;

    const/16 v3, 0xc

    move v2, v1

    move v5, v4

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ln/ak;-><init>(IIIFFI)V

    sput-object v0, Ln/ak;->g:Ln/ak;

    return-void
.end method

.method public constructor <init>(IIIFFI)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Ln/ak;->a:I

    .line 56
    iput p2, p0, Ln/ak;->b:I

    .line 57
    iput p3, p0, Ln/ak;->c:I

    .line 58
    iput p4, p0, Ln/ak;->d:F

    .line 59
    iput p5, p0, Ln/ak;->e:F

    .line 60
    iput p6, p0, Ln/ak;->f:I

    .line 61
    return-void
.end method

.method public static a()Ln/ak;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Ln/ak;->g:Ln/ak;

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;I)Ln/ak;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 68
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 71
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 74
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Ln/L;->b(I)F

    move-result v4

    .line 77
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Ln/L;->b(I)F

    move-result v5

    .line 80
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 82
    new-instance v0, Ln/ak;

    invoke-direct/range {v0 .. v6}, Ln/ak;-><init>(IIIFFI)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .registers 3

    .prologue
    .line 99
    const/4 v0, 0x1

    iget v1, p0, Ln/ak;->f:I

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 103
    const/4 v0, 0x2

    iget v1, p0, Ln/ak;->f:I

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Ln/ak;->a:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Ln/ak;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    if-ne p0, p1, :cond_6

    move v1, v0

    .line 175
    :cond_5
    :goto_5
    return v1

    .line 153
    :cond_6
    if-eqz p1, :cond_5

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 159
    check-cast p1, Ln/ak;

    .line 160
    iget v2, p0, Ln/ak;->f:I

    iget v3, p1, Ln/ak;->f:I

    if-ne v2, v3, :cond_5

    .line 163
    iget v2, p0, Ln/ak;->a:I

    iget v3, p1, Ln/ak;->a:I

    if-ne v2, v3, :cond_5

    .line 166
    iget v2, p0, Ln/ak;->d:F

    iget v3, p1, Ln/ak;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    .line 169
    iget v2, p0, Ln/ak;->b:I

    iget v3, p1, Ln/ak;->b:I

    if-ne v2, v3, :cond_5

    .line 172
    iget v2, p0, Ln/ak;->c:I

    iget v3, p1, Ln/ak;->c:I

    if-ne v2, v3, :cond_5

    .line 175
    iget v2, p0, Ln/ak;->e:F

    iget v3, p1, Ln/ak;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3e

    :goto_3c
    move v1, v0

    goto :goto_5

    :cond_3e
    move v0, v1

    goto :goto_3c
.end method

.method public f()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Ln/ak;->c:I

    return v0
.end method

.method public g()F
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Ln/ak;->d:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 137
    .line 139
    iget v0, p0, Ln/ak;->f:I

    add-int/lit8 v0, v0, 0x1f

    .line 140
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/ak;->a:I

    add-int/2addr v0, v1

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/ak;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/ak;->b:I

    add-int/2addr v0, v1

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/ak;->c:I

    add-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/ak;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    const-string v1, "TextStyle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ln/ak;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outlineColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ln/ak;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ln/ak;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leadingRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ln/ak;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trackingRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ln/ak;->e:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ln/ak;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

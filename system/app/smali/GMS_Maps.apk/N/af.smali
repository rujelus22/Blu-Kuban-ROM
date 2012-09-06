.class public Ln/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Ln/af;


# instance fields
.field private final a:I

.field private final b:F

.field private final c:[I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 36
    new-instance v0, Ln/af;

    const/high16 v1, 0x3f80

    new-array v2, v3, [I

    invoke-direct {v0, v3, v1, v2, v3}, Ln/af;-><init>(IF[II)V

    sput-object v0, Ln/af;->e:Ln/af;

    return-void
.end method

.method public constructor <init>(IF[II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Ln/af;->a:I

    .line 41
    iput p2, p0, Ln/af;->b:F

    .line 42
    iput-object p3, p0, Ln/af;->c:[I

    .line 43
    iput p4, p0, Ln/af;->d:I

    .line 44
    return-void
.end method

.method public static a()Ln/af;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Ln/af;->e:Ln/af;

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;I)Ln/af;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 51
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Ln/L;->a(I)F

    move-result v4

    .line 54
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v5

    .line 55
    new-array v0, v5, [I

    move v1, v2

    .line 56
    :goto_14
    if-ge v1, v5, :cond_1f

    .line 57
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v6

    aput v6, v0, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 59
    :cond_1f
    sget-boolean v1, Lcom/google/googlenav/android/E;->c:Z

    if-eqz v1, :cond_25

    .line 60
    new-array v0, v2, [I

    .line 64
    :cond_25
    array-length v5, v0

    move v1, v2

    :goto_27
    if-ge v1, v5, :cond_2f

    aget v6, v0, v1

    .line 65
    if-nez v6, :cond_39

    .line 66
    new-array v0, v2, [I

    .line 71
    :cond_2f
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 73
    new-instance v2, Ln/af;

    invoke-direct {v2, v3, v4, v0, v1}, Ln/af;-><init>(IF[II)V

    return-object v2

    .line 64
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_27
.end method


# virtual methods
.method public b()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Ln/af;->a:I

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Ln/af;->b:F

    return v0
.end method

.method public d()[I
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Ln/af;->c:[I

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Ln/af;->c:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Ln/af;->c:[I

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    if-ne p0, p1, :cond_6

    move v1, v0

    .line 151
    :cond_5
    :goto_5
    return v1

    .line 135
    :cond_6
    if-eqz p1, :cond_5

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 141
    check-cast p1, Ln/af;

    .line 142
    iget v2, p0, Ln/af;->a:I

    iget v3, p1, Ln/af;->a:I

    if-ne v2, v3, :cond_5

    .line 145
    iget-object v2, p0, Ln/af;->c:[I

    iget-object v3, p1, Ln/af;->c:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 148
    iget v2, p0, Ln/af;->d:I

    iget v3, p1, Ln/af;->d:I

    if-ne v2, v3, :cond_5

    .line 151
    iget v2, p0, Ln/af;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Ln/af;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3a

    :goto_38
    move v1, v0

    goto :goto_5

    :cond_3a
    move v0, v1

    goto :goto_38
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Ln/af;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Ln/af;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public h()I
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Ln/af;->c:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 121
    .line 123
    iget v0, p0, Ln/af;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 124
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln/af;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/af;->d:I

    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/af;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    const-string v1, "Stroke{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ln/af;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ln/af;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dashes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ln/af;->c:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endCaps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Ln/af;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_47

    .line 167
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_47
    iget v1, p0, Ln/af;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_52

    .line 170
    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_52
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Ln/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/al;


# instance fields
.field private final a:Ln/am;

.field private final b:Lcom/google/android/maps/driveabout/vector/dg;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:[B

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Ln/am;III[BLcom/google/android/maps/driveabout/vector/dg;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Ln/v;->i:I

    .line 34
    iput-object p1, p0, Ln/v;->a:Ln/am;

    .line 35
    iput-object p6, p0, Ln/v;->b:Lcom/google/android/maps/driveabout/vector/dg;

    .line 36
    iput p2, p0, Ln/v;->c:I

    .line 37
    iput p3, p0, Ln/v;->d:I

    .line 38
    iput p4, p0, Ln/v;->e:I

    .line 43
    if-eqz p5, :cond_41

    array-length v0, p5

    if-eqz v0, :cond_41

    .line 44
    new-instance v0, Lat/J;

    invoke-direct {v0}, Lat/J;-><init>()V

    .line 45
    invoke-virtual {v0, p5}, Lat/J;->a([B)[B

    move-result-object p5

    .line 46
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->a()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 47
    invoke-virtual {v0}, Lat/J;->b()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ln/v;->g:[Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Lat/J;->c()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ln/v;->h:[Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lat/J;->d()I

    move-result v0

    iput v0, p0, Ln/v;->i:I

    .line 51
    :cond_37
    aget-byte v0, p5, v2

    const/16 v1, 0x43

    if-ne v0, v1, :cond_41

    .line 57
    :try_start_3d
    invoke-static {p5}, LU/c;->a([B)[B
    :try_end_40
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3d .. :try_end_40} :catch_54

    move-result-object p5

    .line 63
    :cond_41
    iget-object v0, p0, Ln/v;->g:[Ljava/lang/String;

    if-nez v0, :cond_49

    .line 64
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Ln/v;->g:[Ljava/lang/String;

    .line 66
    :cond_49
    iget-object v0, p0, Ln/v;->h:[Ljava/lang/String;

    if-nez v0, :cond_51

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Ln/v;->h:[Ljava/lang/String;

    .line 69
    :cond_51
    iput-object p5, p0, Ln/v;->f:[B

    .line 70
    return-void

    .line 58
    :catch_54
    move-exception v0

    .line 59
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input image is not Compact JPEG"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ln/am;Ljava/io/DataInput;Lcom/google/android/maps/driveabout/vector/dg;)Ln/v;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 84
    const v1, 0x44524154

    if-eq v0, v1, :cond_22

    .line 85
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TILE_MAGIC expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_22
    invoke-static {p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 89
    const/4 v1, 0x7

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4c

    .line 90
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version mismatch: 7 or 8 expected, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_4c
    invoke-static {p1}, Ln/am;->a(Ljava/io/DataInput;)Ln/am;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ln/am;->c()I

    move-result v1

    invoke-virtual {p0}, Ln/am;->c()I

    move-result v2

    if-ne v1, v2, :cond_6e

    invoke-virtual {v0}, Ln/am;->d()I

    move-result v1

    invoke-virtual {p0}, Ln/am;->d()I

    move-result v2

    if-ne v1, v2, :cond_6e

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v1

    invoke-virtual {p0}, Ln/am;->b()I

    move-result v2

    if-eq v1, v2, :cond_91

    .line 101
    :cond_6e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected tile coords: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_91
    invoke-static {p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 106
    invoke-static {p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 107
    invoke-static {p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v4

    .line 108
    invoke-static {p1}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 109
    new-array v5, v0, [B

    .line 110
    invoke-interface {p1, v5}, Ljava/io/DataInput;->readFully([B)V

    .line 112
    new-instance v0, Ln/v;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ln/v;-><init>(Ln/am;III[BLcom/google/android/maps/driveabout/vector/dg;)V

    return-object v0
.end method

.method public static a(Ln/am;III[BLjava/io/DataOutput;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    const v0, 0x44524154

    invoke-interface {p5, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 150
    const/16 v0, 0x8

    invoke-static {p5, v0}, Ln/aA;->a(Ljava/io/DataOutput;I)V

    .line 151
    invoke-virtual {p0, p5}, Ln/am;->a(Ljava/io/DataOutput;)V

    .line 152
    invoke-static {p5, p1}, Ln/aA;->a(Ljava/io/DataOutput;I)V

    .line 153
    invoke-static {p5, p2}, Ln/aA;->a(Ljava/io/DataOutput;I)V

    .line 154
    invoke-static {p5, p3}, Ln/aA;->a(Ljava/io/DataOutput;I)V

    .line 155
    array-length v0, p4

    invoke-static {p5, v0}, Ln/aA;->a(Ljava/io/DataOutput;I)V

    .line 156
    invoke-interface {p5, p4}, Ljava/io/DataOutput;->write([B)V

    .line 157
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/common/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public a()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Ln/v;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/google/googlenav/common/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public b()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Ln/v;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Ln/v;->i:I

    return v0
.end method

.method public c(Lcom/google/googlenav/common/a;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    return-void
.end method

.method public d()Ln/am;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Ln/v;->a:Ln/am;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Ln/v;->c:I

    return v0
.end method

.method public f()[B
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Ln/v;->f:[B

    return-object v0
.end method

.method public g()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Ln/v;->b:Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 208
    const/4 v0, -0x1

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

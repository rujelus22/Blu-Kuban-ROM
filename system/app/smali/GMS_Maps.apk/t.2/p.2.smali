.class public Lt/p;
.super Ljava/lang/Object;

# interfaces
.implements Lt/ae;


# instance fields
.field private final a:Lt/af;

.field private final b:Lcom/google/android/maps/driveabout/vector/cU;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:[B

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Lt/af;III[BLcom/google/android/maps/driveabout/vector/cU;)V
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt/p;->i:I

    iput-object p1, p0, Lt/p;->a:Lt/af;

    iput-object p6, p0, Lt/p;->b:Lcom/google/android/maps/driveabout/vector/cU;

    iput p2, p0, Lt/p;->c:I

    iput p3, p0, Lt/p;->d:I

    iput p4, p0, Lt/p;->e:I

    if-eqz p5, :cond_41

    array-length v0, p5

    if-eqz v0, :cond_41

    new-instance v0, LaJ/J;

    invoke-direct {v0}, LaJ/J;-><init>()V

    invoke-virtual {v0, p5}, LaJ/J;->a([B)[B

    move-result-object p5

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->a()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, LaJ/J;->b()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt/p;->g:[Ljava/lang/String;

    invoke-virtual {v0}, LaJ/J;->c()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt/p;->h:[Ljava/lang/String;

    invoke-virtual {v0}, LaJ/J;->d()I

    move-result v0

    iput v0, p0, Lt/p;->i:I

    :cond_37
    aget-byte v0, p5, v2

    const/16 v1, 0x43

    if-ne v0, v1, :cond_41

    :try_start_3d
    invoke-static {p5}, Laj/c;->a([B)[B
    :try_end_40
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3d .. :try_end_40} :catch_54

    move-result-object p5

    :cond_41
    iget-object v0, p0, Lt/p;->g:[Ljava/lang/String;

    if-nez v0, :cond_49

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lt/p;->g:[Ljava/lang/String;

    :cond_49
    iget-object v0, p0, Lt/p;->h:[Ljava/lang/String;

    if-nez v0, :cond_51

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lt/p;->h:[Ljava/lang/String;

    :cond_51
    iput-object p5, p0, Lt/p;->f:[B

    return-void

    :catch_54
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input image is not Compact JPEG"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lt/af;Ljava/io/DataInput;Lcom/google/android/maps/driveabout/vector/cU;)Lt/p;
    .registers 10

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x44524154

    if-eq v0, v1, :cond_22

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

    :cond_22
    invoke-static {p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4c

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

    :cond_4c
    invoke-static {p1}, Lt/af;->a(Ljava/io/DataInput;)Lt/af;

    move-result-object v0

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v1

    invoke-virtual {p0}, Lt/af;->c()I

    move-result v2

    if-ne v1, v2, :cond_6e

    invoke-virtual {v0}, Lt/af;->d()I

    move-result v1

    invoke-virtual {p0}, Lt/af;->d()I

    move-result v2

    if-ne v1, v2, :cond_6e

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v1

    invoke-virtual {p0}, Lt/af;->b()I

    move-result v2

    if-eq v1, v2, :cond_91

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

    :cond_91
    invoke-static {p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v3

    invoke-static {p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v4

    invoke-static {p1}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    new-array v5, v0, [B

    invoke-interface {p1, v5}, Ljava/io/DataInput;->readFully([B)V

    new-instance v0, Lt/p;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lt/p;-><init>(Lt/af;III[BLcom/google/android/maps/driveabout/vector/cU;)V

    return-object v0
.end method

.method public static a(Lt/af;III[BLjava/io/DataOutput;)V
    .registers 7

    const v0, 0x44524154

    invoke-interface {p5, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/16 v0, 0x8

    invoke-static {p5, v0}, Lt/aj;->a(Ljava/io/DataOutput;I)V

    invoke-virtual {p0, p5}, Lt/af;->a(Ljava/io/DataOutput;)V

    invoke-static {p5, p1}, Lt/aj;->a(Ljava/io/DataOutput;I)V

    invoke-static {p5, p2}, Lt/aj;->a(Ljava/io/DataOutput;I)V

    invoke-static {p5, p3}, Lt/aj;->a(Ljava/io/DataOutput;I)V

    array-length v0, p4

    invoke-static {p5, v0}, Lt/aj;->a(Ljava/io/DataOutput;I)V

    invoke-interface {p5, p4}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method


# virtual methods
.method public a(Laf/a;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public a()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/p;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Laf/a;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/p;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lt/p;->i:I

    return v0
.end method

.method public c(Laf/a;)V
    .registers 2

    return-void
.end method

.method public d()Lt/af;
    .registers 2

    iget-object v0, p0, Lt/p;->a:Lt/af;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lt/p;->c:I

    return v0
.end method

.method public f()[B
    .registers 2

    iget-object v0, p0, Lt/p;->f:[B

    return-object v0
.end method

.method public g()Lcom/google/android/maps/driveabout/vector/cU;
    .registers 2

    iget-object v0, p0, Lt/p;->b:Lcom/google/android/maps/driveabout/vector/cU;

    return-object v0
.end method

.method public h()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

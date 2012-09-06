.class Lr/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 2919
    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lr/E;-><init>(I[B)V

    .line 2920
    return-void
.end method

.method constructor <init>(I[B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2915
    iput v0, p0, Lr/E;->d:I

    .line 2916
    iput v0, p0, Lr/E;->e:I

    .line 2923
    iput-object p2, p0, Lr/E;->a:[B

    .line 2924
    iput p1, p0, Lr/E;->b:I

    .line 2925
    const/4 v0, 0x0

    iput v0, p0, Lr/E;->c:I

    .line 2926
    return-void
.end method

.method constructor <init>([B)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2915
    iput v0, p0, Lr/E;->d:I

    .line 2916
    iput v0, p0, Lr/E;->e:I

    .line 2929
    iput-object p1, p0, Lr/E;->a:[B

    .line 2930
    iget-object v0, p0, Lr/E;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr/w;->a([BI)I

    move-result v0

    iput v0, p0, Lr/E;->b:I

    .line 2931
    iget-object v0, p0, Lr/E;->a:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lr/w;->a([BI)I

    move-result v0

    iput v0, p0, Lr/E;->c:I

    .line 2932
    return-void
.end method

.method static synthetic a(Lr/E;)I
    .registers 2
    .parameter

    .prologue
    .line 2898
    iget v0, p0, Lr/E;->b:I

    return v0
.end method

.method static a(Lr/X;)Lr/E;
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x1ffc

    .line 2935
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2936
    invoke-interface {p0, v0}, Lr/X;->a([B)V

    .line 2939
    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lr/w;->c([BII)I

    move-result v1

    .line 2940
    invoke-static {v0, v2}, Lr/w;->a([BI)I

    move-result v2

    .line 2941
    if-eq v1, v2, :cond_37

    .line 2942
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected checksum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2945
    :cond_37
    new-instance v1, Lr/E;

    invoke-direct {v1, v0}, Lr/E;-><init>([B)V

    return-object v1
.end method

.method static synthetic b(Lr/E;)I
    .registers 2
    .parameter

    .prologue
    .line 2898
    iget v0, p0, Lr/E;->c:I

    return v0
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 2957
    iget v0, p0, Lr/E;->b:I

    return v0
.end method

.method a(I)V
    .registers 6
    .parameter

    .prologue
    .line 2966
    iget-object v0, p0, Lr/E;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lr/w;->a([BIJ)V

    .line 2967
    return-void
.end method

.method a(Lr/D;)V
    .registers 4
    .parameter

    .prologue
    .line 2990
    iget v0, p0, Lr/E;->c:I

    invoke-virtual {p0, p1, v0}, Lr/E;->a(Lr/D;I)V

    .line 2991
    iget v0, p0, Lr/E;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/E;->c:I

    .line 2992
    iget v0, p1, Lr/D;->b:I

    iget v1, p1, Lr/D;->d:I

    add-int/2addr v0, v1

    iget v1, p1, Lr/D;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lr/E;->d:I

    .line 2993
    const/4 v0, -0x1

    iput v0, p0, Lr/E;->e:I

    .line 2994
    return-void
.end method

.method a(Lr/D;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2997
    iget-object v0, p0, Lr/E;->a:[B

    mul-int/lit8 v1, p2, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v0, v1}, Lr/D;->a([BI)V

    .line 2998
    return-void
.end method

.method b()I
    .registers 2

    .prologue
    .line 2961
    iget v0, p0, Lr/E;->c:I

    return v0
.end method

.method b(I)J
    .registers 4
    .parameter

    .prologue
    .line 2970
    iget-object v0, p0, Lr/E;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lr/D;->b([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method b(Lr/X;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x1ffc

    const/4 v3, 0x0

    .line 2949
    iget-object v0, p0, Lr/E;->a:[B

    iget v1, p0, Lr/E;->b:I

    invoke-static {v0, v3, v1}, Lr/w;->a([BII)V

    .line 2950
    iget-object v0, p0, Lr/E;->a:[B

    const/4 v1, 0x4

    iget v2, p0, Lr/E;->c:I

    invoke-static {v0, v1, v2}, Lr/w;->a([BII)V

    .line 2951
    iget-object v0, p0, Lr/E;->a:[B

    invoke-static {v0, v3, v4}, Lr/w;->c([BII)I

    move-result v0

    .line 2952
    iget-object v1, p0, Lr/E;->a:[B

    invoke-static {v1, v4, v0}, Lr/w;->a([BII)V

    .line 2953
    iget-object v0, p0, Lr/E;->a:[B

    invoke-interface {p1, v0}, Lr/X;->b([B)V

    .line 2954
    return-void
.end method

.method c()I
    .registers 4

    .prologue
    .line 3001
    iget v0, p0, Lr/E;->c:I

    if-nez v0, :cond_6

    .line 3002
    const/4 v0, 0x0

    .line 3008
    :goto_5
    return v0

    .line 3004
    :cond_6
    iget v0, p0, Lr/E;->d:I

    if-gez v0, :cond_1c

    .line 3005
    iget v0, p0, Lr/E;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lr/E;->f(I)Lr/D;

    move-result-object v0

    .line 3006
    iget v1, v0, Lr/D;->b:I

    iget v2, v0, Lr/D;->d:I

    add-int/2addr v1, v2

    iget v0, v0, Lr/D;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lr/E;->d:I

    .line 3008
    :cond_1c
    iget v0, p0, Lr/E;->d:I

    goto :goto_5
.end method

.method c(I)I
    .registers 4
    .parameter

    .prologue
    .line 2974
    iget-object v0, p0, Lr/E;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lr/D;->c([BI)I

    move-result v0

    return v0
.end method

.method d()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3012
    iget v1, p0, Lr/E;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    .line 3013
    iput v0, p0, Lr/E;->e:I

    .line 3014
    :goto_8
    iget v1, p0, Lr/E;->c:I

    if-ge v0, v1, :cond_23

    .line 3015
    invoke-virtual {p0, v0}, Lr/E;->e(I)I

    move-result v1

    if-lez v1, :cond_20

    .line 3016
    iget v1, p0, Lr/E;->e:I

    invoke-virtual {p0, v0}, Lr/E;->c(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lr/E;->d(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lr/E;->e:I

    .line 3014
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3020
    :cond_23
    iget v0, p0, Lr/E;->e:I

    return v0
.end method

.method d(I)I
    .registers 4
    .parameter

    .prologue
    .line 2978
    iget-object v0, p0, Lr/E;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lr/D;->d([BI)I

    move-result v0

    return v0
.end method

.method e(I)I
    .registers 4
    .parameter

    .prologue
    .line 2982
    iget-object v0, p0, Lr/E;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lr/D;->e([BI)I

    move-result v0

    return v0
.end method

.method f(I)Lr/D;
    .registers 5
    .parameter

    .prologue
    .line 2986
    iget-object v0, p0, Lr/E;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lr/E;->b:I

    invoke-static {v0, v1, v2, p1}, Lr/D;->a([BIII)Lr/D;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/E;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr/E;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

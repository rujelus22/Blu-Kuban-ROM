.class public Lt/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lt/Y;


# direct methods
.method public constructor <init>(ILt/Y;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/ac;->a:I

    iput-object p2, p0, Lt/ac;->b:Lt/Y;

    return-void
.end method

.method public static a(Ljava/io/DataInput;I)Lt/ac;
    .registers 5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {p0, p1}, Lt/Y;->a(Ljava/io/DataInput;I)Lt/Y;

    move-result-object v1

    new-instance v2, Lt/ac;

    invoke-direct {v2, v0, v1}, Lt/ac;-><init>(ILt/Y;)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lt/ac;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lt/ac;

    iget v2, p0, Lt/ac;->a:I

    iget v3, p1, Lt/ac;->a:I

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v2, p0, Lt/ac;->b:Lt/Y;

    if-nez v2, :cond_29

    iget-object v2, p1, Lt/ac;->b:Lt/Y;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_29
    iget-object v2, p0, Lt/ac;->b:Lt/Y;

    iget-object v3, p1, Lt/ac;->b:Lt/Y;

    invoke-virtual {v2, v3}, Lt/Y;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lt/ac;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lt/ac;->b:Lt/Y;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    iget-object v0, p0, Lt/ac;->b:Lt/Y;

    invoke-virtual {v0}, Lt/Y;->hashCode()I

    move-result v0

    goto :goto_b
.end method

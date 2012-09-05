.class Lt/g;
.super Ljava/lang/Object;


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lt/g;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lt/g;->a:[I

    const/4 v0, 0x0

    iput v0, p0, Lt/g;->b:I

    return-void
.end method


# virtual methods
.method a(I)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lt/g;->b:I

    iget-object v1, p0, Lt/g;->a:[I

    array-length v1, v1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lt/g;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lt/g;->a:[I

    iget-object v2, p0, Lt/g;->a:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lt/g;->a:[I

    :cond_19
    iget-object v0, p0, Lt/g;->a:[I

    iget v1, p0, Lt/g;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt/g;->b:I

    aput p1, v0, v1

    return-void
.end method

.method a()[I
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lt/g;->b:I

    new-array v0, v0, [I

    iget-object v1, p0, Lt/g;->a:[I

    iget v2, p0, Lt/g;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method b()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lt/g;->b:I

    return-void
.end method

.method c()I
    .registers 2

    iget v0, p0, Lt/g;->b:I

    return v0
.end method

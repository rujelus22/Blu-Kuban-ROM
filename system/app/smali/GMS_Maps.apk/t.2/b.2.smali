.class public Lt/b;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lt/b;


# instance fields
.field protected final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lt/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lt/b;-><init>(I)V

    sput-object v0, Lt/b;->b:Lt/b;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/b;->a:I

    return-void
.end method

.method public static a(Ljava/io/DataInput;I)Lt/b;
    .registers 4

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    new-instance v1, Lt/b;

    invoke-direct {v1, v0}, Lt/b;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lt/b;->a:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lt/b;->a:I

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public c()I
    .registers 2

    const/16 v0, 0x10

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
    check-cast p1, Lt/b;

    iget v2, p0, Lt/b;->a:I

    iget v3, p1, Lt/b;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lt/b;->a:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

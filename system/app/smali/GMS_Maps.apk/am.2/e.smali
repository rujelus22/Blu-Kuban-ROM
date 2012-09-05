.class public Lam/e;
.super Ljava/lang/Object;


# static fields
.field private static final b:[Lam/f;


# instance fields
.field private final a:Lar/g;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x0

    const/16 v1, 0xa8

    new-array v1, v1, [Lam/f;

    sput-object v1, Lam/e;->b:[Lam/f;

    move v3, v0

    move v1, v0

    :goto_9
    const/4 v0, 0x7

    if-gt v3, v0, :cond_29

    const/16 v0, 0x10

    :goto_e
    const/16 v2, 0x25

    if-ge v0, v2, :cond_25

    sget-object v4, Lam/e;->b:[Lam/f;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Lam/f;

    shl-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lam/f;-><init>(ILjava/lang/Object;)V

    aput-object v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_e

    :cond_25
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9

    :cond_29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lar/g;

    invoke-direct {v0}, Lar/g;-><init>()V

    iput-object v0, p0, Lam/e;->a:Lar/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lam/e;->c:Ljava/lang/String;

    return-void
.end method

.method private static c(I)Lam/f;
    .registers 3

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x15

    and-int/lit16 v1, p0, 0xff

    add-int/lit8 v1, v1, -0x10

    add-int/2addr v0, v1

    sget-object v1, Lam/e;->b:[Lam/f;

    aget-object v0, v1, v0

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget-object v0, p0, Lam/e;->a:Lar/g;

    invoke-virtual {v0, p1}, Lar/g;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    if-nez v0, :cond_d

    const/16 v0, 0x10

    :goto_c
    return v0

    :cond_d
    invoke-static {v0}, Lam/f;->a(Lam/f;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_c
.end method

.method public a(IILjava/lang/Object;)Lam/e;
    .registers 6

    iget-object v1, p0, Lam/e;->a:Lar/g;

    if-nez p3, :cond_c

    invoke-static {p1}, Lam/e;->c(I)Lam/f;

    move-result-object v0

    :goto_8
    invoke-virtual {v1, p2, v0}, Lar/g;->a(ILjava/lang/Object;)V

    return-object p0

    :cond_c
    new-instance v0, Lam/f;

    invoke-direct {v0, p1, p3}, Lam/f;-><init>(ILjava/lang/Object;)V

    goto :goto_8
.end method

.method public b(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lam/e;->a:Lar/g;

    invoke-virtual {v0, p1}, Lar/g;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    if-nez v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-static {v0}, Lam/f;->b(Lam/f;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    check-cast p1, Lam/e;

    iget-object v0, p0, Lam/e;->a:Lar/g;

    iget-object v1, p1, Lam/e;->a:Lar/g;

    invoke-virtual {v0, v1}, Lar/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lam/e;->a:Lar/g;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lam/e;->a:Lar/g;

    invoke-virtual {v0}, Lar/g;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoBufType Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lam/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

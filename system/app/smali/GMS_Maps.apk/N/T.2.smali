.class public final Ln/T;
.super Ln/ab;
.source "SourceFile"


# instance fields
.field private a:[Ln/Q;

.field private volatile b:Ln/aa;


# direct methods
.method public constructor <init>([Ln/Q;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ln/ab;-><init>()V

    .line 18
    iput-object p1, p0, Ln/T;->a:[Ln/Q;

    .line 19
    return-void
.end method


# virtual methods
.method public a(I)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Ln/T;->a:[Ln/Q;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Ln/aa;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Ln/T;->b:Ln/aa;

    if-nez v0, :cond_c

    .line 34
    iget-object v0, p0, Ln/T;->a:[Ln/Q;

    invoke-static {v0}, Ln/aa;->a([Ln/Q;)Ln/aa;

    move-result-object v0

    iput-object v0, p0, Ln/T;->b:Ln/aa;

    .line 36
    :cond_c
    iget-object v0, p0, Ln/T;->b:Ln/aa;

    return-object v0
.end method

.method public a(Ln/Q;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0}, Ln/T;->a()Ln/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln/aa;->a(Ln/Q;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 54
    :goto_c
    return v2

    .line 45
    :cond_d
    iget-object v0, p0, Ln/T;->a:[Ln/Q;

    array-length v6, v0

    .line 46
    iget-object v0, p0, Ln/T;->a:[Ln/Q;

    add-int/lit8 v3, v6, -0x1

    aget-object v0, v0, v3

    move v3, v2

    move-object v4, v0

    move v0, v2

    .line 47
    :goto_19
    if-ge v3, v6, :cond_2b

    .line 48
    iget-object v5, p0, Ln/T;->a:[Ln/Q;

    aget-object v5, v5, v3

    .line 49
    invoke-static {v4, v5, p1}, Ln/S;->b(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 47
    :cond_27
    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    goto :goto_19

    .line 54
    :cond_2b
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_32

    move v0, v1

    :goto_30
    move v2, v0

    goto :goto_c

    :cond_32
    move v0, v2

    goto :goto_30
.end method

.method public b()I
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Ln/T;->a:[Ln/Q;

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 64
    if-ne p0, p1, :cond_4

    .line 65
    const/4 v0, 0x1

    .line 71
    :goto_3
    return v0

    .line 67
    :cond_4
    instance-of v0, p1, Ln/T;

    if-eqz v0, :cond_13

    .line 68
    check-cast p1, Ln/T;

    .line 69
    iget-object v0, p0, Ln/T;->a:[Ln/Q;

    iget-object v1, p1, Ln/T;->a:[Ln/Q;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 71
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Ln/T;->a:[Ln/Q;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

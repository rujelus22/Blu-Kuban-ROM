.class public final Ln/r;
.super Ln/ab;
.source "SourceFile"


# instance fields
.field private a:[Ln/Q;

.field private b:Ln/aa;


# direct methods
.method protected constructor <init>([Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ln/ab;-><init>()V

    .line 18
    iput-object p1, p0, Ln/r;->a:[Ln/Q;

    .line 19
    invoke-static {p1}, Ln/aa;->a([Ln/Q;)Ln/aa;

    move-result-object v0

    iput-object v0, p0, Ln/r;->b:Ln/aa;

    .line 20
    return-void
.end method

.method public static a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Ln/r;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Ln/Q;

    .line 28
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 29
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 30
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 31
    const/4 v1, 0x3

    aput-object p2, v0, v1

    .line 32
    new-instance v1, Ln/r;

    invoke-direct {v1, v0}, Ln/r;-><init>([Ln/Q;)V

    return-object v1
.end method


# virtual methods
.method public a(I)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Ln/r;->a:[Ln/Q;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Ln/aa;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Ln/r;->b:Ln/aa;

    return-object v0
.end method

.method public a(Ln/Q;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    .line 109
    iget-object v0, p0, Ln/r;->a:[Ln/Q;

    aget-object v0, v0, v2

    iget-object v3, p0, Ln/r;->a:[Ln/Q;

    aget-object v3, v3, v1

    invoke-static {v0, v3, p1}, Ln/S;->b(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v0

    if-eqz v0, :cond_48

    move v0, v1

    .line 112
    :goto_13
    iget-object v3, p0, Ln/r;->a:[Ln/Q;

    aget-object v3, v3, v1

    iget-object v4, p0, Ln/r;->a:[Ln/Q;

    aget-object v4, v4, v5

    invoke-static {v3, v4, p1}, Ln/S;->b(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_23
    iget-object v3, p0, Ln/r;->a:[Ln/Q;

    aget-object v3, v3, v5

    iget-object v4, p0, Ln/r;->a:[Ln/Q;

    aget-object v4, v4, v6

    invoke-static {v3, v4, p1}, Ln/S;->b(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 118
    :cond_33
    iget-object v3, p0, Ln/r;->a:[Ln/Q;

    aget-object v3, v3, v6

    iget-object v4, p0, Ln/r;->a:[Ln/Q;

    aget-object v4, v4, v2

    invoke-static {v3, v4, p1}, Ln/S;->b(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 121
    :cond_43
    if-ne v0, v1, :cond_46

    :goto_45
    return v1

    :cond_46
    move v1, v2

    goto :goto_45

    :cond_48
    move v0, v2

    goto :goto_13
.end method

.method public b()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x4

    return v0
.end method

.method public b(Ln/ab;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Ln/r;->a()Ln/aa;

    move-result-object v0

    invoke-virtual {p1}, Ln/ab;->a()Ln/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln/aa;->a(Ln/ab;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 139
    :cond_f
    :goto_f
    return v1

    :cond_10
    move v0, v1

    .line 134
    :goto_11
    invoke-virtual {p1}, Ln/ab;->b()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 135
    invoke-virtual {p1, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v2

    invoke-virtual {p0, v2}, Ln/r;->a(Ln/Q;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 139
    :cond_24
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public c()Ln/Q;
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Ln/r;->a:[Ln/Q;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public d()Ln/Q;
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Ln/r;->a:[Ln/Q;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()Ln/Q;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Ln/r;->a:[Ln/Q;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 90
    if-ne p0, p1, :cond_4

    .line 91
    const/4 v0, 0x1

    .line 97
    :goto_3
    return v0

    .line 93
    :cond_4
    instance-of v0, p1, Ln/r;

    if-eqz v0, :cond_13

    .line 94
    check-cast p1, Ln/r;

    .line 95
    iget-object v0, p0, Ln/r;->a:[Ln/Q;

    iget-object v1, p1, Ln/r;->a:[Ln/Q;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 97
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()Ln/Q;
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Ln/r;->a:[Ln/Q;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g()Ln/Q;
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Ln/r;->a:[Ln/Q;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Ln/r;->a:[Ln/Q;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/r;->a:[Ln/Q;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/r;->a:[Ln/Q;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/r;->a:[Ln/Q;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/r;->a:[Ln/Q;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final enum Ldbxyzptlk/v/J;
.super Ldbxyzptlk/v/G;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldbxyzptlk/v/G;-><init>(Ljava/lang/String;ILdbxyzptlk/v/u;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 404
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method final a(Ldbxyzptlk/v/z;Ljava/lang/Object;)Ldbxyzptlk/v/M;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 409
    new-instance v0, Ldbxyzptlk/v/L;

    invoke-direct {v0, p2}, Ldbxyzptlk/v/L;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method final a(Ldbxyzptlk/v/q;Ljava/lang/Object;ILdbxyzptlk/v/z;)Ldbxyzptlk/v/z;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    if-nez p4, :cond_8

    new-instance v0, Ldbxyzptlk/v/K;

    invoke-direct {v0, p1, p2, p3}, Ldbxyzptlk/v/K;-><init>(Ldbxyzptlk/v/q;Ljava/lang/Object;I)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ldbxyzptlk/v/w;

    invoke-direct {v0, p1, p2, p3, p4}, Ldbxyzptlk/v/w;-><init>(Ldbxyzptlk/v/q;Ljava/lang/Object;ILdbxyzptlk/v/z;)V

    goto :goto_7
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

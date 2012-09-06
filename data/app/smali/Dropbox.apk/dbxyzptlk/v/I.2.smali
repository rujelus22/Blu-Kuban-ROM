.class final enum Ldbxyzptlk/v/I;
.super Ldbxyzptlk/v/G;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldbxyzptlk/v/G;-><init>(Ljava/lang/String;ILdbxyzptlk/v/u;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 372
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final a(Ldbxyzptlk/v/z;Ljava/lang/Object;)Ldbxyzptlk/v/M;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 377
    new-instance v0, Ldbxyzptlk/v/B;

    invoke-direct {v0, p2, p1}, Ldbxyzptlk/v/B;-><init>(Ljava/lang/Object;Ldbxyzptlk/v/z;)V

    return-object v0
.end method

.method final a(Ldbxyzptlk/v/q;Ljava/lang/Object;ILdbxyzptlk/v/z;)Ldbxyzptlk/v/z;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    if-nez p4, :cond_8

    new-instance v0, Ldbxyzptlk/v/A;

    invoke-direct {v0, p1, p2, p3}, Ldbxyzptlk/v/A;-><init>(Ldbxyzptlk/v/q;Ljava/lang/Object;I)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ldbxyzptlk/v/v;

    invoke-direct {v0, p1, p2, p3, p4}, Ldbxyzptlk/v/v;-><init>(Ldbxyzptlk/v/q;Ljava/lang/Object;ILdbxyzptlk/v/z;)V

    goto :goto_7
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 367
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.class public Ln/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/ao;


# instance fields
.field private final a:Ln/B;


# direct methods
.method protected constructor <init>(Ln/B;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Ln/C;->a:Ln/B;

    .line 22
    return-void
.end method

.method public static a(Ln/B;)Ln/C;
    .registers 2
    .parameter

    .prologue
    .line 104
    new-instance v0, Ln/D;

    invoke-direct {v0}, Ln/D;-><init>()V

    invoke-virtual {v0, p0}, Ln/D;->a(Ln/B;)Ln/D;

    move-result-object v0

    invoke-virtual {v0}, Ln/D;->a()Ln/C;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ln/aq;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Ln/aq;->c:Ln/aq;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x6

    invoke-virtual {p0}, Ln/C;->b()Ln/p;

    move-result-object v1

    invoke-virtual {v1}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 80
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)Z
    .registers 3
    .parameter

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->n:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Ln/C;->a:Ln/B;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Ln/ao;)Z
    .registers 3
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ln/ao;)I
    .registers 4
    .parameter

    .prologue
    .line 55
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ln/C;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public b()Ln/p;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Ln/C;->a:Ln/B;

    invoke-virtual {v0}, Ln/B;->a()Ln/p;

    move-result-object v0

    return-object v0
.end method

.method public c()Ln/B;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Ln/C;->a:Ln/B;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 16
    check-cast p1, Ln/ao;

    invoke-virtual {p0, p1}, Ln/C;->b(Ln/ao;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p0, p1, :cond_5

    .line 69
    :cond_4
    :goto_4
    return v0

    .line 63
    :cond_5
    if-nez p1, :cond_d

    .line 64
    iget-object v2, p0, Ln/C;->a:Ln/B;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 66
    :cond_d
    instance-of v0, p1, Ln/C;

    if-nez v0, :cond_13

    move v0, v1

    .line 67
    goto :goto_4

    .line 69
    :cond_13
    iget-object v0, p0, Ln/C;->a:Ln/B;

    invoke-virtual {v0}, Ln/B;->a()Ln/p;

    move-result-object v0

    check-cast p1, Ln/C;

    iget-object v1, p1, Ln/C;->a:Ln/B;

    invoke-virtual {v1}, Ln/B;->a()Ln/p;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 47
    .line 49
    iget-object v0, p0, Ln/C;->a:Ln/B;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 50
    return v0

    .line 49
    :cond_8
    iget-object v0, p0, Ln/C;->a:Ln/B;

    invoke-virtual {v0}, Ln/B;->a()Ln/p;

    move-result-object v0

    invoke-virtual {v0}, Ln/p;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Ln/C;->b()Ln/p;

    move-result-object v0

    invoke-virtual {v0}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

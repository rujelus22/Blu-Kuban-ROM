.class public Ln/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/ao;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ln/ad;->a:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ln/aq;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Ln/aq;->a:Ln/aq;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 106
    const/16 v0, 0xa

    iget-object v1, p0, Ln/ad;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 107
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)Z
    .registers 3
    .parameter

    .prologue
    .line 101
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->r:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Ln/ad;->a:Ljava/lang/String;

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
    .line 38
    invoke-virtual {p0, p1}, Ln/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ln/ao;)I
    .registers 4
    .parameter

    .prologue
    .line 67
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ln/ad;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 18
    check-cast p1, Ln/ao;

    invoke-virtual {p0, p1}, Ln/ad;->b(Ln/ao;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    if-ne p0, p1, :cond_5

    .line 82
    :cond_4
    :goto_4
    return v0

    .line 75
    :cond_5
    if-nez p1, :cond_d

    .line 76
    iget-object v2, p0, Ln/ad;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 78
    :cond_d
    instance-of v0, p1, Ln/ad;

    if-nez v0, :cond_13

    move v0, v1

    .line 79
    goto :goto_4

    .line 81
    :cond_13
    check-cast p1, Ln/ad;

    .line 82
    iget-object v0, p0, Ln/ad;->a:Ljava/lang/String;

    iget-object v1, p1, Ln/ad;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 59
    .line 61
    iget-object v0, p0, Ln/ad;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 62
    return v0

    .line 61
    :cond_8
    iget-object v0, p0, Ln/ad;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Ln/ad;->a:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ln/ad;->a:Ljava/lang/String;

    goto :goto_6
.end method

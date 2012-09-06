.class public Ln/t;
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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Ln/t;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static a(Ln/av;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 44
    sget-object v0, Ln/aq;->b:Ln/aq;

    invoke-static {p0, v0}, Ln/av;->a(Ln/av;Ln/aq;)Ln/ao;

    move-result-object v0

    check-cast v0, Ln/t;

    .line 47
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Ln/t;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public a()Ln/aq;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Ln/aq;->b:Ln/aq;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    const/16 v0, 0x9

    iget-object v1, p0, Ln/t;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 97
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)Z
    .registers 3
    .parameter

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->s:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Ln/t;->a:Ljava/lang/String;

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
    .line 36
    invoke-virtual {p0, p1}, Ln/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ln/ao;)I
    .registers 4
    .parameter

    .prologue
    .line 101
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ln/t;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Ln/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 16
    check-cast p1, Ln/ao;

    invoke-virtual {p0, p1}, Ln/t;->b(Ln/ao;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p0, p1, :cond_5

    .line 72
    :cond_4
    :goto_4
    return v0

    .line 65
    :cond_5
    if-nez p1, :cond_d

    .line 66
    iget-object v2, p0, Ln/t;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 68
    :cond_d
    instance-of v0, p1, Ln/t;

    if-nez v0, :cond_13

    move v0, v1

    .line 69
    goto :goto_4

    .line 72
    :cond_13
    iget-object v0, p0, Ln/t;->a:Ljava/lang/String;

    check-cast p1, Ln/t;

    iget-object v1, p1, Ln/t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ln/t;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/K;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Ln/t;->a:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ln/t;->a:Ljava/lang/String;

    goto :goto_6
.end method

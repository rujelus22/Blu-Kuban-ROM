.class public Lcom/google/googlenav/friend/history/c;
.super Lcom/google/googlenav/friend/history/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/friend/history/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/friend/history/l;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/friend/history/b;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(ZZ)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 52
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 53
    const v0, 0x7f0203fe

    .line 92
    :goto_d
    return v0

    .line 54
    :cond_e
    if-eqz p1, :cond_14

    .line 55
    const v0, 0x7f0203ff

    goto :goto_d

    .line 56
    :cond_14
    if-eqz p2, :cond_1a

    .line 57
    const v0, 0x7f0203fc

    goto :goto_d

    .line 59
    :cond_1a
    const v0, 0x7f0203fd

    goto :goto_d

    .line 61
    :cond_1e
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/c;->l()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 62
    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    .line 63
    const v0, 0x7f020410

    goto :goto_d

    .line 64
    :cond_2c
    if-eqz p1, :cond_32

    .line 65
    const v0, 0x7f020411

    goto :goto_d

    .line 66
    :cond_32
    if-eqz p2, :cond_38

    .line 67
    const v0, 0x7f02040e

    goto :goto_d

    .line 69
    :cond_38
    const v0, 0x7f02040f

    goto :goto_d

    .line 71
    :cond_3c
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/c;->m()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 72
    if-eqz p1, :cond_4a

    if-eqz p2, :cond_4a

    .line 73
    const v0, 0x7f0203f6

    goto :goto_d

    .line 74
    :cond_4a
    if-eqz p1, :cond_50

    .line 75
    const v0, 0x7f0203f7

    goto :goto_d

    .line 76
    :cond_50
    if-eqz p2, :cond_56

    .line 77
    const v0, 0x7f0203f4

    goto :goto_d

    .line 79
    :cond_56
    const v0, 0x7f0203f5

    goto :goto_d

    .line 82
    :cond_5a
    if-eqz p1, :cond_62

    if-eqz p2, :cond_62

    .line 83
    const v0, 0x7f02040c

    goto :goto_d

    .line 84
    :cond_62
    if-eqz p1, :cond_68

    .line 85
    const v0, 0x7f02040d

    goto :goto_d

    .line 86
    :cond_68
    if-eqz p2, :cond_6e

    .line 87
    const v0, 0x7f02040a

    goto :goto_d

    .line 89
    :cond_6e
    const v0, 0x7f02040b

    goto :goto_d
.end method

.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 33
    iget-object v0, p0, Lcom/google/googlenav/friend/history/c;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz v1, :cond_15

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 36
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getFloat(I)F

    move-result v0

    .line 38
    :cond_15
    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

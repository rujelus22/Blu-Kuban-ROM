.class final enum Ln/au;
.super Ln/aq;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ln/aq;-><init>(Ljava/lang/String;ILn/ap;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/ao;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xc

    const/16 v3, 0x9

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dg;->a(I)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    .line 69
    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->m:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne v0, v2, :cond_48

    .line 70
    new-instance v2, Ln/ay;

    invoke-direct {v2}, Ln/ay;-><init>()V

    .line 71
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 72
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln/m;->a(Ljava/lang/String;)Ln/m;

    move-result-object v0

    invoke-virtual {v2, v0}, Ln/ay;->a(Ln/m;)Ln/ay;

    .line 75
    :cond_28
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 76
    const/4 v0, 0x0

    :goto_2d
    if-ge v0, v3, :cond_39

    .line 77
    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v4}, Ln/ay;->a(I)Ln/ay;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 79
    :cond_39
    invoke-virtual {v2}, Ln/ay;->b()Ln/ax;

    move-result-object v0

    .line 80
    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->m:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v0, v2}, Ln/ax;->a(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 82
    :goto_45
    return-object v0

    :cond_46
    move-object v0, v1

    .line 80
    goto :goto_45

    :cond_48
    move-object v0, v1

    .line 82
    goto :goto_45
.end method

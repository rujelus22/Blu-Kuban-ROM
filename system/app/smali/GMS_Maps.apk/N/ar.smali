.class final enum Ln/ar;
.super Ln/aq;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ln/aq;-><init>(Ljava/lang/String;ILn/ap;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/ao;
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dg;->a(I)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->r:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne v0, v1, :cond_27

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 35
    new-instance v0, Ln/ae;

    invoke-direct {v0}, Ln/ae;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/ae;->a(Ljava/lang/String;)Ln/ae;

    move-result-object v0

    invoke-virtual {v0}, Ln/ae;->a()Ln/ad;

    move-result-object v0

    .line 38
    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

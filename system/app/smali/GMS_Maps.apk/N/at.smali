.class final enum Ln/at;
.super Ln/aq;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ln/aq;-><init>(Ljava/lang/String;ILn/ap;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/ao;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dg;->a(I)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->n:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne v0, v1, :cond_28

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 57
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v0

    .line 59
    new-instance v1, Ln/B;

    const/high16 v2, -0x8000

    invoke-direct {v1, v0, v2}, Ln/B;-><init>(Ln/p;I)V

    invoke-static {v1}, Ln/C;->a(Ln/B;)Ln/C;

    move-result-object v0

    .line 62
    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.class public Lcom/google/googlenav/ch;
.super Lcom/google/googlenav/co;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/co;-><init>(Ljava/lang/String;I)V

    .line 532
    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .registers 2

    .prologue
    .line 528
    invoke-super {p0}, Lcom/google/googlenav/co;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/googlenav/ch;->k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 537
    return-void
.end method

.method public bridge synthetic a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 528
    invoke-super {p0, p1}, Lcom/google/googlenav/co;->a(Ljava/io/DataInput;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Lcom/google/googlenav/ca;
    .registers 2

    .prologue
    .line 528
    invoke-super {p0}, Lcom/google/googlenav/co;->i()Lcom/google/googlenav/ca;

    move-result-object v0

    return-object v0
.end method

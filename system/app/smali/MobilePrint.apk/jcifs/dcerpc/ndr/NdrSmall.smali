.class public Ljcifs/dcerpc/ndr/NdrSmall;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "NdrSmall.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 26
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 27
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    .line 28
    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    .line 35
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 31
    iget v0, p0, Ljcifs/dcerpc/ndr/NdrSmall;->value:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 32
    return-void
.end method

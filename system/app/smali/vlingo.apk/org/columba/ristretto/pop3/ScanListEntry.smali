.class public Lorg/columba/ristretto/pop3/ScanListEntry;
.super Ljava/lang/Object;
.source "ScanListEntry.java"


# instance fields
.field index:I

.field size:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "index"
    .parameter "size"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lorg/columba/ristretto/pop3/ScanListEntry;->index:I

    .line 58
    iput p2, p0, Lorg/columba/ristretto/pop3/ScanListEntry;->size:I

    .line 59
    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lorg/columba/ristretto/pop3/ScanListEntry;->index:I

    return v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lorg/columba/ristretto/pop3/ScanListEntry;->size:I

    return v0
.end method

.method public setIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 74
    iput p1, p0, Lorg/columba/ristretto/pop3/ScanListEntry;->index:I

    .line 75
    return-void
.end method

.method public setSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 90
    iput p1, p0, Lorg/columba/ristretto/pop3/ScanListEntry;->size:I

    .line 91
    return-void
.end method

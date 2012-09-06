.class public Ln/c;
.super Ln/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Ln/b;-><init>(I)V

    .line 100
    return-void
.end method

.method public static b(Ljava/io/DataInput;I)Ln/c;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 107
    new-instance v0, Ln/c;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-direct {v0, v1}, Ln/c;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public d()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Ln/c;->a:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

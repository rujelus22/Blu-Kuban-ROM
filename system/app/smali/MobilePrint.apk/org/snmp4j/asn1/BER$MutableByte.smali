.class public Lorg/snmp4j/asn1/BER$MutableByte;
.super Ljava/lang/Object;
.source "BER.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/asn1/BER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutableByte"
.end annotation


# instance fields
.field value:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    .line 90
    return-void
.end method

.method public constructor <init>(B)V
    .registers 3
    .parameter "value"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    .line 93
    invoke-virtual {p0, p1}, Lorg/snmp4j/asn1/BER$MutableByte;->setValue(B)V

    .line 94
    return-void
.end method


# virtual methods
.method public getValue()B
    .registers 2

    .prologue
    .line 101
    iget-byte v0, p0, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    return v0
.end method

.method public setValue(B)V
    .registers 2
    .parameter "value"

    .prologue
    .line 97
    iput-byte p1, p0, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    .line 98
    return-void
.end method

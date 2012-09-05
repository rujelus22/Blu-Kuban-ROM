.class public Lorg/snmp4j/security/DecryptParams;
.super Ljava/lang/Object;
.source "DecryptParams.java"


# instance fields
.field public array:[B

.field public length:I

.field public offset:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/security/DecryptParams;->array:[B

    .line 56
    iput v1, p0, Lorg/snmp4j/security/DecryptParams;->offset:I

    .line 57
    iput v1, p0, Lorg/snmp4j/security/DecryptParams;->length:I

    .line 58
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/snmp4j/security/DecryptParams;->array:[B

    .line 46
    iput p2, p0, Lorg/snmp4j/security/DecryptParams;->offset:I

    .line 47
    iput p3, p0, Lorg/snmp4j/security/DecryptParams;->length:I

    .line 48
    return-void
.end method


# virtual methods
.method public setValues([BII)V
    .registers 4
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 71
    iput-object p1, p0, Lorg/snmp4j/security/DecryptParams;->array:[B

    .line 72
    iput p2, p0, Lorg/snmp4j/security/DecryptParams;->offset:I

    .line 73
    iput p3, p0, Lorg/snmp4j/security/DecryptParams;->length:I

    .line 74
    return-void
.end method

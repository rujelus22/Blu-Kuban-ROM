.class public Lorg/snmp4j/smi/Null;
.super Lorg/snmp4j/smi/AbstractVariable;
.source "Null.java"


# static fields
.field public static final endOfMibView:Lorg/snmp4j/smi/Null; = null

.field public static final instance:Lorg/snmp4j/smi/Null; = null

.field public static final noSuchInstance:Lorg/snmp4j/smi/Null; = null

.field public static final noSuchObject:Lorg/snmp4j/smi/Null; = null

.field private static final serialVersionUID:J = 0x5fdde065c174e10cL


# instance fields
.field private syntax:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lorg/snmp4j/smi/Null;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Null;-><init>(I)V

    sput-object v0, Lorg/snmp4j/smi/Null;->noSuchObject:Lorg/snmp4j/smi/Null;

    .line 43
    new-instance v0, Lorg/snmp4j/smi/Null;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Null;-><init>(I)V

    sput-object v0, Lorg/snmp4j/smi/Null;->noSuchInstance:Lorg/snmp4j/smi/Null;

    .line 45
    new-instance v0, Lorg/snmp4j/smi/Null;

    const/16 v1, 0x82

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Null;-><init>(I)V

    sput-object v0, Lorg/snmp4j/smi/Null;->endOfMibView:Lorg/snmp4j/smi/Null;

    .line 47
    new-instance v0, Lorg/snmp4j/smi/Null;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Null;-><init>(I)V

    sput-object v0, Lorg/snmp4j/smi/Null;->instance:Lorg/snmp4j/smi/Null;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lorg/snmp4j/smi/Null;->syntax:I

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "exceptionSyntax"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lorg/snmp4j/smi/Null;->syntax:I

    .line 54
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/Null;->setSyntax(I)V

    .line 55
    return-void
.end method

.method public static isExceptionSyntax(I)Z
    .registers 2
    .parameter "syntax"

    .prologue
    .line 115
    packed-switch p0, :pswitch_data_8

    .line 121
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 119
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 115
    nop

    :pswitch_data_8
    .packed-switch 0x80
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 111
    new-instance v0, Lorg/snmp4j/smi/Null;

    iget v1, p0, Lorg/snmp4j/smi/Null;->syntax:I

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Null;-><init>(I)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter "o"

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/snmp4j/smi/Null;->getSyntax()I

    move-result v0

    check-cast p1, Lorg/snmp4j/smi/Null;

    .end local p1
    invoke-virtual {p1}, Lorg/snmp4j/smi/Null;->getSyntax()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 4
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v0}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 59
    .local v0, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v0}, Lorg/snmp4j/asn1/BER;->decodeNull(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)V

    .line 60
    invoke-virtual {v0}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/snmp4j/smi/Null;->syntax:I

    .line 61
    return-void
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/snmp4j/smi/Null;->getSyntax()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 100
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 76
    instance-of v1, p1, Lorg/snmp4j/smi/Null;

    if-eqz v1, :cond_12

    .line 77
    check-cast p1, Lorg/snmp4j/smi/Null;

    .end local p1
    invoke-virtual {p1}, Lorg/snmp4j/smi/Null;->getSyntax()I

    move-result v1

    invoke-virtual {p0}, Lorg/snmp4j/smi/Null;->getSyntax()I

    move-result v2

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    .line 79
    :cond_12
    return v0
.end method

.method public fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
    .registers 4
    .parameter "subIndex"
    .parameter "impliedLength"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBERLength()I
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x2

    return v0
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lorg/snmp4j/smi/Null;->syntax:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/snmp4j/smi/Null;->getSyntax()I

    move-result v0

    return v0
.end method

.method public setSyntax(I)V
    .registers 5
    .parameter "syntax"

    .prologue
    .line 103
    const/4 v0, 0x5

    if-eq p1, v0, :cond_28

    invoke-static {p1}, Lorg/snmp4j/smi/Null;->isExceptionSyntax(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Syntax "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is incompatible with Null type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_28
    iput p1, p0, Lorg/snmp4j/smi/Null;->syntax:I

    .line 108
    return-void
.end method

.method public final toInt()I
    .registers 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/snmp4j/smi/Null;->getSyntax()I

    move-result v0

    return v0
.end method

.method public final toLong()J
    .registers 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/snmp4j/smi/Null;->getSyntax()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/snmp4j/smi/Null;->getSyntax()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 95
    const-string v0, "Null"

    :goto_9
    return-object v0

    .line 89
    :pswitch_a
    const-string v0, "noSuchObject"

    goto :goto_9

    .line 91
    :pswitch_d
    const-string v0, "noSuchInstance"

    goto :goto_9

    .line 93
    :pswitch_10
    const-string v0, "endOfMibView"

    goto :goto_9

    .line 87
    nop

    :pswitch_data_14
    .packed-switch 0x80
        :pswitch_a
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public toSubIndex(Z)Lorg/snmp4j/smi/OID;
    .registers 3
    .parameter "impliedLength"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.class public Lorg/snmp4j/security/UsmSecurityParameters;
.super Ljava/lang/Object;
.source "UsmSecurityParameters.java"

# interfaces
.implements Lorg/snmp4j/security/SecurityParameters;


# static fields
.field private static final MAX_BER_LENGTH_WITHOU_SEC_PARAMS:I = 0x50

.field static class$org$snmp4j$security$UsmSecurityParameters:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private authParametersPosition:I

.field private authenticationKey:[B

.field private authenticationParameters:Lorg/snmp4j/smi/OctetString;

.field private authenticationProtocol:Lorg/snmp4j/security/AuthenticationProtocol;

.field private authoritativeEngineBoots:Lorg/snmp4j/smi/Integer32;

.field private authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

.field private authoritativeEngineTime:Lorg/snmp4j/smi/Integer32;

.field private decodedLength:I

.field private privacyKey:[B

.field private privacyParameters:Lorg/snmp4j/smi/OctetString;

.field private privacyProtocol:Lorg/snmp4j/security/PrivacyProtocol;

.field private securityParametersPosition:I

.field private userName:Lorg/snmp4j/smi/OctetString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lorg/snmp4j/security/UsmSecurityParameters;->class$org$snmp4j$security$UsmSecurityParameters:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.security.UsmSecurityParameters"

    invoke-static {v0}, Lorg/snmp4j/security/UsmSecurityParameters;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/UsmSecurityParameters;->class$org$snmp4j$security$UsmSecurityParameters:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/UsmSecurityParameters;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/security/UsmSecurityParameters;->class$org$snmp4j$security$UsmSecurityParameters:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    .line 40
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineBoots:Lorg/snmp4j/smi/Integer32;

    .line 41
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineTime:Lorg/snmp4j/smi/Integer32;

    .line 42
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->userName:Lorg/snmp4j/smi/OctetString;

    .line 43
    iput-object v2, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationProtocol:Lorg/snmp4j/security/AuthenticationProtocol;

    .line 44
    iput-object v2, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyProtocol:Lorg/snmp4j/security/PrivacyProtocol;

    .line 47
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyParameters:Lorg/snmp4j/smi/OctetString;

    .line 48
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationParameters:Lorg/snmp4j/smi/OctetString;

    .line 49
    iput v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->securityParametersPosition:I

    .line 50
    iput v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authParametersPosition:I

    .line 51
    iput v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->decodedLength:I

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/security/AuthenticationProtocol;Lorg/snmp4j/security/PrivacyProtocol;)V
    .registers 10
    .parameter "authoritativeEngineID"
    .parameter "authoritativeEngineBoots"
    .parameter "authoritativeEngineTime"
    .parameter "userName"
    .parameter "authenticationProtocol"
    .parameter "privacyProtocol"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    .line 40
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineBoots:Lorg/snmp4j/smi/Integer32;

    .line 41
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineTime:Lorg/snmp4j/smi/Integer32;

    .line 42
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->userName:Lorg/snmp4j/smi/OctetString;

    .line 43
    iput-object v2, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationProtocol:Lorg/snmp4j/security/AuthenticationProtocol;

    .line 44
    iput-object v2, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyProtocol:Lorg/snmp4j/security/PrivacyProtocol;

    .line 47
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyParameters:Lorg/snmp4j/smi/OctetString;

    .line 48
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationParameters:Lorg/snmp4j/smi/OctetString;

    .line 49
    iput v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->securityParametersPosition:I

    .line 50
    iput v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authParametersPosition:I

    .line 51
    iput v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->decodedLength:I

    .line 62
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    .line 63
    iput-object p2, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineBoots:Lorg/snmp4j/smi/Integer32;

    .line 64
    iput-object p3, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineTime:Lorg/snmp4j/smi/Integer32;

    .line 65
    iput-object p6, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyProtocol:Lorg/snmp4j/security/PrivacyProtocol;

    .line 66
    iput-object p4, p0, Lorg/snmp4j/security/UsmSecurityParameters;->userName:Lorg/snmp4j/smi/OctetString;

    .line 67
    iput-object p5, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationProtocol:Lorg/snmp4j/security/AuthenticationProtocol;

    .line 68
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private getBEREncodedAuthParamsPosition()I
    .registers 5

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/snmp4j/security/UsmSecurityParameters;->getBERLength()I

    move-result v1

    iget-object v2, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationParameters:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v2}, Lorg/snmp4j/smi/OctetString;->getBERPayloadLength()I

    move-result v2

    iget-object v3, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyParameters:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v3}, Lorg/snmp4j/smi/OctetString;->getBERLength()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 174
    .local v0, length:I
    return v0
.end method


# virtual methods
.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 18
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v10

    long-to-int v4, v10

    .line 126
    .local v4, pos:I
    move-object/from16 v0, p0

    iput v4, v0, Lorg/snmp4j/security/UsmSecurityParameters;->decodedLength:I

    .line 127
    new-instance v2, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v2}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 128
    .local v2, mutableByte:Lorg/snmp4j/asn1/BER$MutableByte;
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v3

    .line 129
    .local v3, octetLength:I
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v5

    .line 130
    .local v5, startPos:J
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_41

    .line 131
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "BER decoding error: Expected BER OCTETSTRING but found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, txt:Ljava/lang/String;
    sget-object v10, Lorg/snmp4j/security/UsmSecurityParameters;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v10, v9}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 135
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 137
    .end local v9           #txt:Ljava/lang/String;
    :cond_41
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v1

    .line 138
    .local v1, length:I
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v7

    .line 139
    .local v7, startPosSeq:J
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v10

    const/16 v11, 0x30

    if-eq v10, v11, :cond_75

    .line 140
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "BER decoding error: Expected BER SEQUENCE but found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 143
    .restart local v9       #txt:Ljava/lang/String;
    sget-object v10, Lorg/snmp4j/security/UsmSecurityParameters;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v10, v9}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 144
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 146
    .end local v9           #txt:Ljava/lang/String;
    :cond_75
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/snmp4j/smi/OctetString;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineBoots:Lorg/snmp4j/smi/Integer32;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineTime:Lorg/snmp4j/smi/Integer32;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/snmp4j/security/UsmSecurityParameters;->userName:Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/snmp4j/smi/OctetString;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v10

    int-to-long v12, v4

    sub-long/2addr v10, v12

    long-to-int v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lorg/snmp4j/security/UsmSecurityParameters;->authParametersPosition:I

    .line 151
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v10

    long-to-int v4, v10

    .line 152
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationParameters:Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/snmp4j/smi/OctetString;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 153
    move-object/from16 v0, p0

    iget v10, v0, Lorg/snmp4j/security/UsmSecurityParameters;->authParametersPosition:I

    int-to-long v10, v10

    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v12

    int-to-long v14, v4

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationParameters:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v14}, Lorg/snmp4j/smi/OctetString;->getBERPayloadLength()I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v12, v14

    add-long/2addr v10, v12

    long-to-int v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lorg/snmp4j/security/UsmSecurityParameters;->authParametersPosition:I

    .line 157
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyParameters:Lorg/snmp4j/smi/OctetString;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/snmp4j/smi/OctetString;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/snmp4j/security/UsmSecurityParameters;->decodedLength:I

    int-to-long v12, v12

    sub-long/2addr v10, v12

    long-to-int v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lorg/snmp4j/security/UsmSecurityParameters;->decodedLength:I

    .line 159
    invoke-static {}, Lorg/snmp4j/asn1/BER;->isCheckSequenceLength()Z

    move-result v10

    if-eqz v10, :cond_101

    .line 161
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v10

    sub-long/2addr v10, v7

    long-to-int v10, v10

    move-object/from16 v0, p0

    invoke-static {v1, v10, v0}, Lorg/snmp4j/asn1/BER;->checkSequenceLength(IILorg/snmp4j/asn1/BERSerializable;)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v10

    sub-long/2addr v10, v5

    long-to-int v10, v10

    move-object/from16 v0, p0

    invoke-static {v3, v10, v0}, Lorg/snmp4j/asn1/BER;->checkSequenceLength(IILorg/snmp4j/asn1/BERSerializable;)V

    .line 168
    :cond_101
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
    .line 178
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/snmp4j/security/UsmSecurityParameters;->getBERPayloadLength()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 179
    const/16 v0, 0x30

    invoke-virtual {p0}, Lorg/snmp4j/security/UsmSecurityParameters;->getBERUsmPayloadLength()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 180
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/OctetString;->encodeBER(Ljava/io/OutputStream;)V

    .line 181
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineBoots:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 182
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineTime:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 183
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->userName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/OctetString;->encodeBER(Ljava/io/OutputStream;)V

    .line 184
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationParameters:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/OctetString;->encodeBER(Ljava/io/OutputStream;)V

    .line 185
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyParameters:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/OctetString;->encodeBER(Ljava/io/OutputStream;)V

    .line 186
    return-void
.end method

.method public getAuthParametersPosition()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authParametersPosition:I

    if-ltz v0, :cond_7

    .line 253
    iget v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authParametersPosition:I

    .line 256
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0}, Lorg/snmp4j/security/UsmSecurityParameters;->getBEREncodedAuthParamsPosition()I

    move-result v0

    goto :goto_6
.end method

.method public getAuthenticationKey()[B
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationKey:[B

    return-object v0
.end method

.method public getAuthenticationParameters()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationParameters:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getAuthenticationProtocol()Lorg/snmp4j/security/AuthenticationProtocol;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationProtocol:Lorg/snmp4j/security/AuthenticationProtocol;

    return-object v0
.end method

.method public getAuthoritativeEngineBoots()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineBoots:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public getAuthoritativeEngineID()[B
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public getAuthoritativeEngineTime()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineTime:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public getBERLength()I
    .registers 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/snmp4j/security/UsmSecurityParameters;->getBERPayloadLength()I

    move-result v0

    .line 113
    .local v0, length:I
    invoke-static {v0}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public getBERMaxLength(I)I
    .registers 6
    .parameter "securityLevel"

    .prologue
    .line 204
    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v0

    .line 205
    .local v0, secProtocol:Lorg/snmp4j/security/SecurityProtocols;
    const/4 v1, 0x2

    .line 206
    .local v1, securityParamsLength:I
    const/4 v2, 0x1

    if-le p1, v2, :cond_2a

    .line 207
    invoke-virtual {v0}, Lorg/snmp4j/security/SecurityProtocols;->getMaxAuthDigestLength()I

    move-result v2

    invoke-virtual {v0}, Lorg/snmp4j/security/SecurityProtocols;->getMaxAuthDigestLength()I

    move-result v3

    invoke-static {v3}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 210
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2a

    .line 211
    invoke-virtual {v0}, Lorg/snmp4j/security/SecurityProtocols;->getMaxPrivDecryptParamsLength()I

    move-result v2

    invoke-virtual {v0}, Lorg/snmp4j/security/SecurityProtocols;->getMaxPrivDecryptParamsLength()I

    move-result v3

    invoke-static {v3}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 216
    :cond_2a
    add-int/lit8 v2, v1, 0x50

    add-int/lit8 v3, v1, 0x50

    invoke-static {v3}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public getBERPayloadLength()I
    .registers 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/snmp4j/security/UsmSecurityParameters;->getBERUsmPayloadLength()I

    move-result v0

    .line 118
    .local v0, length:I
    invoke-static {v0}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 119
    return v0
.end method

.method public getBERUsmPayloadLength()I
    .registers 3

    .prologue
    .line 194
    iget-object v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->getBERLength()I

    move-result v0

    .line 195
    .local v0, length:I
    iget-object v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineBoots:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v1}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    iget-object v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineTime:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v1}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    iget-object v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->userName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->getBERLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    iget-object v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationParameters:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->getBERLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    iget-object v1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyParameters:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->getBERLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    return v0
.end method

.method public getPrivacyKey()[B
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyKey:[B

    return-object v0
.end method

.method public getPrivacyParameters()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyParameters:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getPrivacyProtocol()Lorg/snmp4j/security/PrivacyProtocol;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyProtocol:Lorg/snmp4j/security/PrivacyProtocol;

    return-object v0
.end method

.method public getScopedPduPosition()I
    .registers 3

    .prologue
    .line 266
    iget v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->decodedLength:I

    if-ltz v0, :cond_c

    .line 267
    iget v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->decodedLength:I

    invoke-virtual {p0}, Lorg/snmp4j/security/UsmSecurityParameters;->getSecurityParametersPosition()I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Lorg/snmp4j/security/UsmSecurityParameters;->getSecurityParametersPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/snmp4j/security/UsmSecurityParameters;->getBERLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_b
.end method

.method public getSecurityParametersPosition()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->securityParametersPosition:I

    return v0
.end method

.method public getUserName()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->userName:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public setAuthenticationKey([B)V
    .registers 2
    .parameter "authenticationKey"

    .prologue
    .line 225
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationKey:[B

    .line 226
    return-void
.end method

.method public setAuthenticationParameters(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "authenticationParameters"

    .prologue
    .line 243
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationParameters:Lorg/snmp4j/smi/OctetString;

    .line 244
    return-void
.end method

.method public setAuthenticationProtocol(Lorg/snmp4j/security/AuthenticationProtocol;)V
    .registers 2
    .parameter "authenticationProtocol"

    .prologue
    .line 99
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authenticationProtocol:Lorg/snmp4j/security/AuthenticationProtocol;

    .line 100
    return-void
.end method

.method public setAuthoritativeEngineBoots(I)V
    .registers 3
    .parameter "authoritativeEngineBoots"

    .prologue
    .line 81
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineBoots:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 82
    return-void
.end method

.method public setAuthoritativeEngineID([B)V
    .registers 4
    .parameter "authoritativeEngineID"

    .prologue
    .line 75
    if-nez p1, :cond_a

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Authoritative engine ID must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_a
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 79
    return-void
.end method

.method public setAuthoritativeEngineTime(I)V
    .registers 3
    .parameter "authoritativeEngineTime"

    .prologue
    .line 87
    iget-object v0, p0, Lorg/snmp4j/security/UsmSecurityParameters;->authoritativeEngineTime:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 88
    return-void
.end method

.method public setPrivacyKey([B)V
    .registers 2
    .parameter "privacyKey"

    .prologue
    .line 231
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyKey:[B

    .line 232
    return-void
.end method

.method public setPrivacyParameters(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "privacyParameters"

    .prologue
    .line 237
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyParameters:Lorg/snmp4j/smi/OctetString;

    .line 238
    return-void
.end method

.method public setPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V
    .registers 2
    .parameter "privacyProtocol"

    .prologue
    .line 105
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->privacyProtocol:Lorg/snmp4j/security/PrivacyProtocol;

    .line 106
    return-void
.end method

.method public setSecurityParametersPosition(I)V
    .registers 2
    .parameter "securityParametersPosition"

    .prologue
    .line 249
    iput p1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->securityParametersPosition:I

    .line 250
    return-void
.end method

.method public setUserName(Lorg/snmp4j/smi/OctetString;)V
    .registers 2
    .parameter "userName"

    .prologue
    .line 93
    iput-object p1, p0, Lorg/snmp4j/security/UsmSecurityParameters;->userName:Lorg/snmp4j/smi/OctetString;

    .line 94
    return-void
.end method

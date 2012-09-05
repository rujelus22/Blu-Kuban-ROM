.class public Lorg/snmp4j/transport/MessageLength;
.super Ljava/lang/Object;
.source "MessageLength.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static class$org$snmp4j$transport$MessageLength:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x25c71f28af3a9976L


# instance fields
.field private headerLength:I

.field private payloadLength:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "headerLength"
    .parameter "payloadLength"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lorg/snmp4j/transport/MessageLength;->payloadLength:I

    .line 49
    iput p1, p0, Lorg/snmp4j/transport/MessageLength;->headerLength:I

    .line 50
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 80
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


# virtual methods
.method public getHeaderLength()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lorg/snmp4j/transport/MessageLength;->headerLength:I

    return v0
.end method

.method public getMessageLength()I
    .registers 3

    .prologue
    .line 76
    iget v0, p0, Lorg/snmp4j/transport/MessageLength;->headerLength:I

    iget v1, p0, Lorg/snmp4j/transport/MessageLength;->payloadLength:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPayloadLength()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lorg/snmp4j/transport/MessageLength;->payloadLength:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lorg/snmp4j/transport/MessageLength;->class$org$snmp4j$transport$MessageLength:Ljava/lang/Class;

    if-nez v0, :cond_3c

    const-string v0, "org.snmp4j.transport.MessageLength"

    invoke-static {v0}, Lorg/snmp4j/transport/MessageLength;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/MessageLength;->class$org$snmp4j$transport$MessageLength:Ljava/lang/Class;

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[headerLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/transport/MessageLength;->headerLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",payloadLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/transport/MessageLength;->payloadLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3c
    sget-object v0, Lorg/snmp4j/transport/MessageLength;->class$org$snmp4j$transport$MessageLength:Ljava/lang/Class;

    goto :goto_11
.end method

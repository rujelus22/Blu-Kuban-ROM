.class public Lorg/snmp4j/transport/TransportStateEvent;
.super Ljava/util/EventObject;
.source "TransportStateEvent.java"


# static fields
.field public static final STATE_CLOSED:I = 0x4

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_DISCONNECTED_REMOTELY:I = 0x2

.field public static final STATE_DISCONNECTED_TIMEOUT:I = 0x3

.field public static final STATE_UNKNOWN:I = 0x0

.field static class$org$snmp4j$transport$TransportStateEvent:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x595ff85e6b9b09a7L


# instance fields
.field private cancelled:Z

.field private causingException:Ljava/io/IOException;

.field private newState:I

.field private peerAddress:Lorg/snmp4j/smi/Address;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;ILjava/io/IOException;)V
    .registers 6
    .parameter "source"
    .parameter "peerAddress"
    .parameter "newState"
    .parameter "causingException"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/snmp4j/transport/TransportStateEvent;->cancelled:Z

    .line 58
    iput p3, p0, Lorg/snmp4j/transport/TransportStateEvent;->newState:I

    .line 59
    iput-object p2, p0, Lorg/snmp4j/transport/TransportStateEvent;->peerAddress:Lorg/snmp4j/smi/Address;

    .line 60
    iput-object p4, p0, Lorg/snmp4j/transport/TransportStateEvent;->causingException:Ljava/io/IOException;

    .line 61
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
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
.method public getCausingException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/transport/TransportStateEvent;->causingException:Ljava/io/IOException;

    return-object v0
.end method

.method public getNewState()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lorg/snmp4j/transport/TransportStateEvent;->newState:I

    return v0
.end method

.method public getPeerAddress()Lorg/snmp4j/smi/Address;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/snmp4j/transport/TransportStateEvent;->peerAddress:Lorg/snmp4j/smi/Address;

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/snmp4j/transport/TransportStateEvent;->cancelled:Z

    return v0
.end method

.method public setCancelled(Z)V
    .registers 2
    .parameter "cancelled"

    .prologue
    .line 103
    iput-boolean p1, p0, Lorg/snmp4j/transport/TransportStateEvent;->cancelled:Z

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lorg/snmp4j/transport/TransportStateEvent;->class$org$snmp4j$transport$TransportStateEvent:Ljava/lang/Class;

    if-nez v0, :cond_60

    const-string v0, "org.snmp4j.transport.TransportStateEvent"

    invoke-static {v0}, Lorg/snmp4j/transport/TransportStateEvent;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/TransportStateEvent;->class$org$snmp4j$transport$TransportStateEvent:Ljava/lang/Class;

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/transport/TransportStateEvent;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",peerAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/transport/TransportStateEvent;->peerAddress:Lorg/snmp4j/smi/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/transport/TransportStateEvent;->newState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",cancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/snmp4j/transport/TransportStateEvent;->cancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",causingException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/transport/TransportStateEvent;->causingException:Ljava/io/IOException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_60
    sget-object v0, Lorg/snmp4j/transport/TransportStateEvent;->class$org$snmp4j$transport$TransportStateEvent:Ljava/lang/Class;

    goto :goto_11
.end method

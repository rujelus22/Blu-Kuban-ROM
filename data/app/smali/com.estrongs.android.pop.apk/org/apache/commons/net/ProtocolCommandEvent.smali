.class public Lorg/apache/commons/net/ProtocolCommandEvent;
.super Ljava/util/EventObject;


# static fields
.field private static final serialVersionUID:J = 0x59a629bebd214a8L


# instance fields
.field private final __command:Ljava/lang/String;

.field private final __isCommand:Z

.field private final __message:Ljava/lang/String;

.field private final __replyCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    iput-object p3, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    iput-object p3, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    iput-object p2, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__command:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__message:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyCode()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__replyCode:I

    return v0
.end method

.method public isCommand()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/net/ProtocolCommandEvent;->__isCommand:Z

    return v0
.end method

.method public isReply()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/net/ProtocolCommandEvent;->isCommand()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

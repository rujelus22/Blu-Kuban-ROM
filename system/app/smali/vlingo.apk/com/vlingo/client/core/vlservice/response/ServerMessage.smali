.class public Lcom/vlingo/client/core/vlservice/response/ServerMessage;
.super Ljava/lang/Object;
.source "ServerMessage.java"


# static fields
.field public static final ERROR:I = 0x3

.field public static final ERROR_INVALID_APPID:Ljava/lang/String; = "012"

.field public static final ERROR_INVALID_FIELDID:Ljava/lang/String; = "013"

.field public static final STATUS:I = 0x1

.field public static final WARNING:I = 0x2


# instance fields
.field private code:Ljava/lang/String;

.field private detailCode:Ljava/lang/String;

.field private detailMessage:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->type:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->message:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->code:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->detailMessage:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->detailCode:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->detailCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFullMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->detailMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->message:Ljava/lang/String;

    .line 50
    .local v0, txt:Ljava/lang/String;
    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->type:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2
    .parameter "code"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->code:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDetailCode(Ljava/lang/String;)V
    .registers 2
    .parameter "detailCode"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->detailCode:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setDetailMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->detailMessage:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->message:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 32
    iput p1, p0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->type:I

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->getFullMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

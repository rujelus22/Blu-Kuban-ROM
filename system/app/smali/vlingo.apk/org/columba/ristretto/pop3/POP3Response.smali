.class public Lorg/columba/ristretto/pop3/POP3Response;
.super Ljava/lang/Object;
.source "POP3Response.java"


# static fields
.field public static final ERR:I = -0x1

.field public static final OK:I


# instance fields
.field private data:Lorg/columba/ristretto/io/Source;

.field private message:Ljava/lang/String;

.field private source:Ljava/lang/CharSequence;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/columba/ristretto/pop3/POP3Response;->source:Ljava/lang/CharSequence;

    .line 69
    return-void
.end method


# virtual methods
.method public getData()Lorg/columba/ristretto/io/Source;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Response;->data:Lorg/columba/ristretto/io/Source;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Response;->source:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lorg/columba/ristretto/pop3/POP3Response;->type:I

    return v0
.end method

.method public isERR()Z
    .registers 3

    .prologue
    .line 132
    iget v0, p0, Lorg/columba/ristretto/pop3/POP3Response;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isOK()Z
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lorg/columba/ristretto/pop3/POP3Response;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setData(Lorg/columba/ristretto/io/Source;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 86
    iput-object p1, p0, Lorg/columba/ristretto/pop3/POP3Response;->data:Lorg/columba/ristretto/io/Source;

    .line 87
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 102
    iput-object p1, p0, Lorg/columba/ristretto/pop3/POP3Response;->message:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setSource(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 148
    iput-object p1, p0, Lorg/columba/ristretto/pop3/POP3Response;->source:Ljava/lang/CharSequence;

    .line 149
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 118
    iput p1, p0, Lorg/columba/ristretto/pop3/POP3Response;->type:I

    .line 119
    return-void
.end method

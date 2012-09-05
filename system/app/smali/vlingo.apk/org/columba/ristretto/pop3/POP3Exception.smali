.class public Lorg/columba/ristretto/pop3/POP3Exception;
.super Ljava/lang/Exception;
.source "POP3Exception.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private response:Lorg/columba/ristretto/pop3/POP3Response;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/pop3/POP3Response;)V
    .registers 2
    .parameter "newParam"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/columba/ristretto/pop3/POP3Exception;->response:Lorg/columba/ristretto/pop3/POP3Response;

    .line 59
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Exception;->response:Lorg/columba/ristretto/pop3/POP3Response;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Exception;->response:Lorg/columba/ristretto/pop3/POP3Response;

    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/POP3Response;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getResponse()Lorg/columba/ristretto/pop3/POP3Response;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Exception;->response:Lorg/columba/ristretto/pop3/POP3Response;

    return-object v0
.end method

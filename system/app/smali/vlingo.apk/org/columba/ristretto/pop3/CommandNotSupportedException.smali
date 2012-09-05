.class public Lorg/columba/ristretto/pop3/CommandNotSupportedException;
.super Lorg/columba/ristretto/pop3/POP3Exception;
.source "CommandNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/pop3/POP3Response;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    .line 58
    return-void
.end method

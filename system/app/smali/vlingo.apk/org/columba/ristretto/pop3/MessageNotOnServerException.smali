.class public Lorg/columba/ristretto/pop3/MessageNotOnServerException;
.super Lorg/columba/ristretto/pop3/POP3Exception;
.source "MessageNotOnServerException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Message does not exist on Server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/pop3/POP3Response;)V
    .registers 2
    .parameter "newParam"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    .line 69
    return-void
.end method

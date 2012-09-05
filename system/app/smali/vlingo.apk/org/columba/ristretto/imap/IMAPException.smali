.class public Lorg/columba/ristretto/imap/IMAPException;
.super Ljava/lang/Exception;
.source "IMAPException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field response:Lorg/columba/ristretto/imap/IMAPResponse;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/imap/IMAPResponse;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 87
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPException;->response:Lorg/columba/ristretto/imap/IMAPResponse;

    .line 89
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPException;->response:Lorg/columba/ristretto/imap/IMAPResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPException;->response:Lorg/columba/ristretto/imap/IMAPResponse;

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getResponse()Lorg/columba/ristretto/imap/IMAPResponse;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPException;->response:Lorg/columba/ristretto/imap/IMAPResponse;

    return-object v0
.end method

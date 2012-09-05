.class public Lorg/columba/ristretto/imap/IMAPDisconnectedException;
.super Lorg/columba/ristretto/imap/IMAPException;
.source "IMAPDisconnectedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPException;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/imap/IMAPResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 85
    return-void
.end method

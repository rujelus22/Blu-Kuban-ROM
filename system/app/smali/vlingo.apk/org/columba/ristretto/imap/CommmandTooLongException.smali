.class public Lorg/columba/ristretto/imap/CommmandTooLongException;
.super Lorg/columba/ristretto/imap/IMAPException;
.source "CommmandTooLongException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field command:Lorg/columba/ristretto/imap/IMAPCommand;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPException;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/imap/IMAPCommand;)V
    .registers 2
    .parameter "command"

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/columba/ristretto/imap/IMAPException;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/columba/ristretto/imap/CommmandTooLongException;->command:Lorg/columba/ristretto/imap/IMAPCommand;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/imap/IMAPResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/columba/ristretto/imap/IMAPException;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getCommand()Lorg/columba/ristretto/imap/IMAPCommand;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/columba/ristretto/imap/CommmandTooLongException;->command:Lorg/columba/ristretto/imap/IMAPCommand;

    return-object v0
.end method

.class public Ljavax/mail/AuthenticationFailedException;
.super Ljavax/mail/MessagingException;
.source "AuthenticationFailedException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
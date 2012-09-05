.class Lgnu/mail/providers/imap/IMAPFlags;
.super Ljavax/mail/Flags;
.source "IMAPFlags.java"


# instance fields
.field saved:Ljavax/mail/Flags;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljavax/mail/Flags;-><init>()V

    return-void
.end method


# virtual methods
.method checkpoint()V
    .registers 2

    .prologue
    .line 56
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0, p0}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPFlags;->saved:Ljavax/mail/Flags;

    .line 57
    return-void
.end method

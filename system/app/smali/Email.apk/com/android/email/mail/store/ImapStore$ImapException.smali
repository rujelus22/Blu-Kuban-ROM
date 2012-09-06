.class Lcom/android/email/mail/store/ImapStore$ImapException;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mAlertText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "message"
    .parameter "alertText"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 624
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 625
    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    return-object v0
.end method

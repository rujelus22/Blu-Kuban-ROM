.class public Lcom/android/emailcommon/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field protected mExceptionData:Ljava/lang/Object;

.field protected mExceptionType:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "exceptionType"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter "exceptionType"
    .parameter "message"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "exceptionType"
    .parameter "message"
    .parameter "data"

    .prologue
    .line 115
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 116
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 117
    iput-object p3, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionData:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "exceptionType"
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 79
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionData:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getExceptionData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionData:Ljava/lang/Object;

    return-object v0
.end method

.method public getExceptionType()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    return v0
.end method

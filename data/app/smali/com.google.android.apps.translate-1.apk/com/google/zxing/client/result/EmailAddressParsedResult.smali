.class public final Lcom/google/zxing/client/result/EmailAddressParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "EmailAddressParsedResult.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final emailAddress:Ljava/lang/String;

.field private final mailtoURI:Ljava/lang/String;

.field private final subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "emailAddress"
    .parameter "subject"
    .parameter "body"
    .parameter "mailtoURI"

    .prologue
    .line 30
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 31
    iput-object p1, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->emailAddress:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->subject:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->body:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->mailtoURI:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 55
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->emailAddress:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 56
    iget-object v1, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->subject:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 57
    iget-object v1, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->body:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMailtoURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->mailtoURI:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->subject:Ljava/lang/String;

    return-object v0
.end method

.class public final Lcom/google/zxing/client/result/SMSParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SMSParsedResult.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final numbers:[Ljava/lang/String;

.field private final subject:Ljava/lang/String;

.field private final vias:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "number"
    .parameter "via"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 31
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 32
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "numbers"
    .parameter "vias"
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 38
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 98
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 99
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 100
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNumbers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getSMSURI()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 46
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v4, result:Ljava/lang/StringBuffer;
    const-string v7, "sms:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const/4 v0, 0x1

    .line 49
    .local v0, first:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_38

    .line 50
    if-eqz v0, :cond_32

    .line 51
    const/4 v0, 0x0

    .line 55
    :goto_16
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-eqz v7, :cond_2f

    .line 57
    const-string v7, ";via="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 53
    :cond_32
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 61
    :cond_38
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    if-eqz v7, :cond_6f

    move v1, v5

    .line 62
    .local v1, hasBody:Z
    :goto_3d
    iget-object v7, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    if-eqz v7, :cond_71

    move v2, v5

    .line 63
    .local v2, hasSubject:Z
    :goto_42
    if-nez v1, :cond_46

    if-eqz v2, :cond_6a

    .line 64
    :cond_46
    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    if-eqz v1, :cond_57

    .line 66
    const-string v5, "body="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :cond_57
    if-eqz v2, :cond_6a

    .line 70
    if-eqz v1, :cond_60

    .line 71
    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :cond_60
    const-string v5, "subject="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    :cond_6a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v1           #hasBody:Z
    .end local v2           #hasSubject:Z
    :cond_6f
    move v1, v6

    .line 61
    goto :goto_3d

    .restart local v1       #hasBody:Z
    :cond_71
    move v2, v6

    .line 62
    goto :goto_42
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getVias()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    return-object v0
.end method

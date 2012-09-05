.class public Lorg/apache/commons/httpclient/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# instance fields
.field private final httpVersion:Ljava/lang/String;

.field private final reasonPhrase:Ljava/lang/String;

.field private final statusCode:I

.field private final statusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .parameter "statusLine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 85
    .local v3, length:I
    const/4 v0, 0x0

    .line 86
    .local v0, at:I
    const/4 v4, 0x0

    .local v4, start:I
    move v1, v0

    .line 88
    .end local v0           #at:I
    .local v1, at:I
    :goto_a
    :try_start_a
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 89
    add-int/lit8 v0, v1, 0x1

    .line 90
    .end local v1           #at:I
    .restart local v0       #at:I
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #at:I
    .restart local v1       #at:I
    goto :goto_a

    .line 92
    :cond_1a
    const-string v6, "HTTP"
    :try_end_1c
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_a .. :try_end_1c} :catch_ec

    add-int/lit8 v0, v1, 0x4

    .end local v1           #at:I
    .restart local v0       #at:I
    :try_start_1e
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_67

    .line 93
    new-instance v6, Lorg/apache/commons/httpclient/HttpException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Status-Line \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\' does not start with HTTP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_47
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1e .. :try_end_47} :catch_47

    .line 129
    :catch_47
    move-exception v2

    .line 130
    .local v2, e:Ljava/lang/StringIndexOutOfBoundsException;
    :goto_48
    new-instance v6, Lorg/apache/commons/httpclient/HttpException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Status-Line \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\' is not valid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 97
    .end local v2           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_67
    :try_start_67
    const-string v6, " "

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 98
    if-gtz v0, :cond_8e

    .line 99
    new-instance v6, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unable to parse HTTP-Version from the status line: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 103
    :cond_8e
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/StatusLine;->httpVersion:Ljava/lang/String;

    .line 106
    :goto_98
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_a3

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 111
    :cond_a3
    const-string v6, " "

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_a8
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_67 .. :try_end_a8} :catch_47

    move-result v5

    .line 112
    .local v5, to:I
    if-gez v5, :cond_ac

    .line 113
    move v5, v3

    .line 116
    :cond_ac
    :try_start_ac
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lorg/apache/commons/httpclient/StatusLine;->statusCode:I
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_b6} :catch_c7
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_ac .. :try_end_b6} :catch_47

    .line 123
    add-int/lit8 v0, v5, 0x1

    .line 124
    if-ge v0, v3, :cond_e7

    .line 125
    :try_start_ba
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/StatusLine;->reasonPhrase:Ljava/lang/String;
    :try_end_c4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_ba .. :try_end_c4} :catch_47

    .line 133
    :goto_c4
    iput-object p1, p0, Lorg/apache/commons/httpclient/StatusLine;->statusLine:Ljava/lang/String;

    .line 134
    return-void

    .line 117
    :catch_c7
    move-exception v2

    .line 118
    .local v2, e:Ljava/lang/NumberFormatException;
    :try_start_c8
    new-instance v6, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unable to parse status code from status line: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 127
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_e7
    const-string v6, ""

    iput-object v6, p0, Lorg/apache/commons/httpclient/StatusLine;->reasonPhrase:Ljava/lang/String;
    :try_end_eb
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_c8 .. :try_end_eb} :catch_47

    goto :goto_c4

    .line 129
    .end local v0           #at:I
    .end local v5           #to:I
    .restart local v1       #at:I
    :catch_ec
    move-exception v2

    move v0, v1

    .end local v1           #at:I
    .restart local v0       #at:I
    goto/16 :goto_48
.end method

.method public static startsWithHTTP(Ljava/lang/String;)Z
    .registers 5
    .parameter "s"

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, at:I
    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_e
    const-string v2, "HTTP"

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_19} :catch_1b

    move-result v2

    .line 182
    :goto_1a
    return v2

    .line 181
    :catch_1b
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public final getHttpVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getReasonPhrase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lorg/apache/commons/httpclient/StatusLine;->statusCode:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->statusLine:Ljava/lang/String;

    return-object v0
.end method

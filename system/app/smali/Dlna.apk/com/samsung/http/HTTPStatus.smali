.class public Lcom/samsung/http/HTTPStatus;
.super Ljava/lang/Object;
.source "HTTPStatus.java"


# instance fields
.field private reasonPhrase:Ljava/lang/String;

.field private statusCode:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "lineStr"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/http/HTTPStatus;->version:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/http/HTTPStatus;->statusCode:I

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPStatus;->set(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static final code2String(I)Ljava/lang/String;
    .registers 2
    .parameter "code"

    .prologue
    .line 56
    sparse-switch p0, :sswitch_data_1e

    .line 66
    const-string v0, ""

    :goto_5
    return-object v0

    .line 57
    :sswitch_6
    const-string v0, "Continue"

    goto :goto_5

    .line 58
    :sswitch_9
    const-string v0, "OK"

    goto :goto_5

    .line 59
    :sswitch_c
    const-string v0, "Partial Content"

    goto :goto_5

    .line 60
    :sswitch_f
    const-string v0, "Bad Request"

    goto :goto_5

    .line 61
    :sswitch_12
    const-string v0, "Not Found"

    goto :goto_5

    .line 62
    :sswitch_15
    const-string v0, "Precondition Failed"

    goto :goto_5

    .line 63
    :sswitch_18
    const-string v0, "Invalid Range"

    goto :goto_5

    .line 64
    :sswitch_1b
    const-string v0, "Internal Server Error"

    goto :goto_5

    .line 56
    :sswitch_data_1e
    .sparse-switch
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_9
        0xce -> :sswitch_c
        0x190 -> :sswitch_f
        0x194 -> :sswitch_12
        0x19c -> :sswitch_15
        0x1a0 -> :sswitch_18
        0x1f4 -> :sswitch_1b
    .end sparse-switch
.end method

.method public static final isSuccessful(I)Z
    .registers 2
    .parameter "statCode"

    .prologue
    .line 136
    const/16 v0, 0xc8

    if-gt v0, p0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    .line 137
    const/4 v0, 0x1

    .line 138
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public getStatusCode()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/http/HTTPStatus;->statusCode:I

    return v0
.end method

.method public set(Ljava/lang/String;)V
    .registers 10
    .parameter "lineStr"

    .prologue
    const/16 v7, 0x1f4

    .line 152
    if-nez p1, :cond_14

    .line 153
    const-string v6, "1.1"

    invoke-virtual {p0, v6}, Lcom/samsung/http/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v7}, Lcom/samsung/http/HTTPStatus;->setStatusCode(I)V

    .line 155
    invoke-static {v7}, Lcom/samsung/http/HTTPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/http/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V

    .line 189
    :cond_13
    :goto_13
    return-void

    .line 160
    :cond_14
    :try_start_14
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v4, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v4, st:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 164
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, ver:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/http/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 169
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_35} :catch_4e

    move-result-object v1

    .line 170
    .local v1, codeStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 172
    .local v0, code:I
    :try_start_37
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_82

    move-result v0

    .line 175
    :goto_3b
    :try_start_3b
    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPStatus;->setStatusCode(I)V

    .line 177
    const-string v3, ""

    .line 178
    .local v3, reason:Ljava/lang/String;
    :goto_40
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_53

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/http/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4d} :catch_4e

    goto :goto_13

    .line 185
    .end local v0           #code:I
    .end local v1           #codeStr:Ljava/lang/String;
    .end local v3           #reason:Ljava/lang/String;
    .end local v4           #st:Ljava/util/StringTokenizer;
    .end local v5           #ver:Ljava/lang/String;
    :catch_4e
    move-exception v2

    .line 186
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    goto :goto_13

    .line 179
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #code:I
    .restart local v1       #codeStr:Ljava/lang/String;
    .restart local v3       #reason:Ljava/lang/String;
    .restart local v4       #st:Ljava/util/StringTokenizer;
    .restart local v5       #ver:Ljava/lang/String;
    :cond_53
    :try_start_53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_6c

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    :cond_6c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_80} :catch_4e

    move-result-object v3

    goto :goto_40

    .line 174
    .end local v3           #reason:Ljava/lang/String;
    :catch_82
    move-exception v6

    goto :goto_3b
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setStatusCode(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 107
    iput p1, p0, Lcom/samsung/http/HTTPStatus;->statusCode:I

    .line 108
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/http/HTTPStatus;->version:Ljava/lang/String;

    .line 103
    return-void
.end method

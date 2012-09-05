.class public Lcom/syncmldstmo/base/smlUser;
.super Ljava/lang/Object;
.source "smlUser.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "csUrl"

    .prologue
    const/4 v5, -0x1

    .line 162
    const-string v3, "://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 163
    .local v1, i:I
    const-string v0, ""

    .line 165
    .local v0, host:Ljava/lang/String;
    if-eq v1, v5, :cond_30

    .line 167
    const/16 v3, 0x2f

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 168
    .local v2, j:I
    if-eq v2, v5, :cond_29

    .line 170
    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_1b
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 176
    if-eq v1, v5, :cond_28

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 186
    .end local v2           #j:I
    :cond_28
    :goto_28
    return-object v0

    .line 173
    .restart local v2       #j:I
    :cond_29
    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 183
    .end local v2           #j:I
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "URL fail : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "csUrl"

    .prologue
    const/4 v4, -0x1

    .line 142
    const-string v2, "://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, i:I
    if-eq v0, v4, :cond_18

    .line 146
    const/16 v2, 0x2f

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 147
    .local v1, j:I
    if-eq v1, v4, :cond_2a

    .line 149
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    .end local v1           #j:I
    :goto_17
    return-object v2

    .line 154
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URL fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 157
    :cond_2a
    const-string v2, "/"

    goto :goto_17
.end method

.method public static getPort(Ljava/lang/String;)I
    .registers 10
    .parameter "csUrl"

    .prologue
    const/4 v8, -0x1

    .line 191
    const-string v6, "://"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 192
    .local v2, i:I
    const/16 v5, 0x50

    .line 193
    .local v5, port:I
    const-string v1, ""

    .line 195
    .local v1, host:Ljava/lang/String;
    if-eq v2, v8, :cond_54

    .line 197
    const/16 v6, 0x2f

    add-int/lit8 v7, v2, 0x3

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 198
    .local v3, j:I
    if-eq v3, v8, :cond_2f

    .line 199
    add-int/lit8 v6, v2, 0x3

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 203
    :goto_1d
    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 204
    if-ne v2, v8, :cond_3c

    .line 206
    invoke-static {p0}, Lcom/syncmldstmo/base/smlUser;->getProtocolType(Ljava/lang/String;)I

    move-result v4

    .line 207
    .local v4, nTp:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_36

    .line 208
    const/16 v5, 0x50

    .line 229
    .end local v3           #j:I
    .end local v4           #nTp:I
    :cond_2e
    :goto_2e
    return v5

    .line 201
    .restart local v3       #j:I
    :cond_2f
    add-int/lit8 v6, v2, 0x3

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 209
    .restart local v4       #nTp:I
    :cond_36
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2e

    .line 210
    const/16 v5, 0x1bb

    goto :goto_2e

    .line 216
    .end local v4           #nTp:I
    :cond_3c
    add-int/lit8 v6, v2, 0x1

    :try_start_3e
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_4b

    move-result v5

    goto :goto_2e

    .line 218
    :catch_4b
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_2e

    .line 226
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #j:I
    :cond_54
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "URL fail : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public static getProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "csUrl"

    .prologue
    .line 130
    const-string v1, "://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, i:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 134
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_e
    return-object v1

    :cond_f
    const-string v1, "http"

    goto :goto_e
.end method

.method public static getProtocolType(Ljava/lang/String;)I
    .registers 5
    .parameter "url"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, type:I
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 113
    const/16 v2, 0x40

    const-string v3, "url is null, return"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v1, v0

    .line 125
    .end local v0           #type:I
    .local v1, type:I
    :goto_f
    return v1

    .line 117
    .end local v1           #type:I
    .restart local v0       #type:I
    :cond_10
    const-string v2, "http:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 118
    const/4 v0, 0x2

    :cond_19
    :goto_19
    move v1, v0

    .line 125
    .end local v0           #type:I
    .restart local v1       #type:I
    goto :goto_f

    .line 119
    .end local v1           #type:I
    .restart local v0       #type:I
    :cond_1b
    const-string v2, "https"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 120
    const/4 v0, 0x1

    goto :goto_19

    .line 121
    :cond_25
    const-string v2, "obex:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 122
    const/4 v0, 0x4

    goto :goto_19
.end method

.method public static getServerType(Ljava/lang/String;)I
    .registers 4
    .parameter "csUrl"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, nServerType:I
    invoke-static {p0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v0

    .line 254
    .end local v0           #nServerType:I
    .local v1, nServerType:I
    :goto_8
    return v1

    .line 241
    .end local v1           #nServerType:I
    .restart local v0       #nServerType:I
    :cond_9
    const-string v2, "t-mobile"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 243
    const/4 v0, 0x1

    :goto_12
    move v1, v0

    .line 254
    .end local v0           #nServerType:I
    .restart local v1       #nServerType:I
    goto :goto_8

    .line 245
    .end local v1           #nServerType:I
    .restart local v0       #nServerType:I
    :cond_14
    const-string v2, "voxmobili"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 247
    const/4 v0, 0x2

    goto :goto_12

    .line 251
    :cond_1e
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static smlFinalize(Ljava/lang/Object;I)V
    .registers 3
    .parameter "userInfo"
    .parameter "index"

    .prologue
    .line 49
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 51
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v0, p1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 55
    return-void
.end method

.method public static smlGetCredType(Ljava/lang/Object;)I
    .registers 4
    .parameter "userInfo"

    .prologue
    .line 14
    move-object v1, p0

    check-cast v1, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 15
    .local v1, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    const/4 v0, 0x0

    .line 17
    .local v0, info:I
    iget v0, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->CredType:I

    .line 18
    if-eqz v0, :cond_c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    .line 20
    const/4 v0, 0x0

    .line 23
    :cond_c
    return v0
.end method

.method public static smlGetHostname(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "userInfo"

    .prologue
    .line 80
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 82
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static smlGetPassword(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "userInfo"

    .prologue
    .line 66
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 68
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerPS:Ljava/lang/String;

    return-object v1
.end method

.method public static smlGetPath(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "userInfo"

    .prologue
    .line 95
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 97
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static smlGetPort(Ljava/lang/Object;)I
    .registers 3
    .parameter "userInfo"

    .prologue
    .line 87
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 89
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->getPort(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static smlGetProtocol(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "userInfo"

    .prologue
    .line 73
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 75
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->getProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static smlGetUserID(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "userInfo"

    .prologue
    .line 59
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 61
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerID:Ljava/lang/String;

    return-object v1
.end method

.method public static smlServerType(Ljava/lang/Object;)I
    .registers 3
    .parameter "userInfo"

    .prologue
    .line 102
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 104
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->getServerType(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static smlSetCredType(Ljava/lang/Object;I)V
    .registers 4
    .parameter "userInfo"
    .parameter "type"

    .prologue
    .line 28
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 30
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    int-to-char v1, p1

    iput v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->CredType:I

    .line 31
    return-void
.end method

.method public static smlSetNextNonce(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter "userInfo"
    .parameter "nonce"

    .prologue
    .line 42
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 44
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iput-object p1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->NextNonce:Ljava/lang/String;

    .line 45
    return-void
.end method

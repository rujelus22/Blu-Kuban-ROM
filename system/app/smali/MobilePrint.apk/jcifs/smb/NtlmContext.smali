.class public Ljcifs/smb/NtlmContext;
.super Ljava/lang/Object;
.source "NtlmContext.java"


# instance fields
.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field isEstablished:Z

.field log:Ljcifs/util/LogStream;

.field netbiosName:Ljava/lang/String;

.field ntlmsspFlags:I

.field serverChallenge:[B

.field signingKey:[B

.field state:I

.field workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V
    .registers 5
    .parameter "auth"
    .parameter "doSigning"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    .line 39
    iput-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 40
    iput-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 41
    iput-object v1, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/NtlmContext;->state:I

    .line 46
    iput-object p1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 47
    iget v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 48
    or-int/lit8 v0, v0, 0x4

    .line 49
    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 50
    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    .line 47
    iput v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 51
    if-eqz p2, :cond_28

    .line 52
    iget v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    const v1, 0x40008010

    or-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 56
    :cond_28
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    .line 57
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    .line 58
    return-void
.end method

.method private getNtlmsspListItem([BI)Ljava/lang/String;
    .registers 9
    .parameter "type2token"
    .parameter "id0"

    .prologue
    .line 100
    const/16 v2, 0x3a

    .line 103
    .local v2, ri:I
    :goto_2
    invoke-static {p1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v0

    .line 104
    .local v0, id:I
    add-int/lit8 v4, v2, 0x2

    invoke-static {p1, v4}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    .line 105
    .local v1, len:I
    add-int/lit8 v2, v2, 0x4

    .line 106
    if-eqz v0, :cond_15

    add-int v4, v2, v1

    array-length v5, p1

    if-le v4, v5, :cond_17

    .line 118
    :cond_15
    :goto_15
    const/4 v4, 0x0

    :goto_16
    return-object v4

    .line 108
    :cond_17
    if-ne v0, p2, :cond_23

    .line 110
    :try_start_19
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-16LE"

    invoke-direct {v4, p1, v2, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_16

    .line 111
    :catch_21
    move-exception v3

    .line 112
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    goto :goto_15

    .line 115
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_23
    add-int/2addr v2, v1

    .line 102
    goto :goto_2
.end method


# virtual methods
.method public getNetbiosName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerChallenge()[B
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    return-object v0
.end method

.method public getSigningKey()[B
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    return-object v0
.end method

.method public initSecContext([BII)[B
    .registers 15
    .parameter "token"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v5, 0x0

    .line 121
    iget v2, p0, Ljcifs/smb/NtlmContext;->state:I

    packed-switch v2, :pswitch_data_ba

    .line 173
    new-instance v2, Ljcifs/smb/SmbException;

    const-string v3, "Invalid state"

    invoke-direct {v2, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :pswitch_10
    new-instance v8, Ljcifs/ntlmssp/Type1Message;

    iget v2, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    iget-object v3, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-direct {v8, v2, v3, v4}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v8, msg1:Ljcifs/ntlmssp/Type1Message;
    invoke-virtual {v8}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    move-result-object p1

    .line 126
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v9, :cond_36

    .line 127
    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v8}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 128
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v10, :cond_36

    .line 129
    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    array-length v3, p1

    invoke-static {v2, p1, v5, v3}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 132
    :cond_36
    iget v2, p0, Ljcifs/smb/NtlmContext;->state:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljcifs/smb/NtlmContext;->state:I

    .line 175
    .end local v8           #msg1:Ljcifs/ntlmssp/Type1Message;
    :goto_3c
    return-object p1

    .line 136
    :pswitch_3d
    :try_start_3d
    new-instance v1, Ljcifs/ntlmssp/Type2Message;

    invoke-direct {v1, p1}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V

    .line 138
    .local v1, msg2:Ljcifs/ntlmssp/Type2Message;
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v9, :cond_56

    .line 139
    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 140
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v10, :cond_56

    .line 141
    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {v2, p1, v3, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 144
    :cond_56
    invoke-virtual {v1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 145
    iget v2, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    invoke-virtual {v1}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v3

    and-int/2addr v2, v3

    iput v2, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 149
    new-instance v0, Ljcifs/ntlmssp/Type3Message;

    .line 150
    iget-object v2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v3, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v3

    .line 152
    iget-object v4, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v4}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 153
    iget-object v5, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    .line 154
    iget v6, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 149
    invoke-direct/range {v0 .. v6}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    .local v0, msg3:Ljcifs/ntlmssp/Type3Message;
    invoke-virtual {v0}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    move-result-object p1

    .line 157
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v9, :cond_98

    .line 158
    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 159
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v10, :cond_98

    .line 160
    iget-object v2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {v2, p1, v3, v4}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 163
    :cond_98
    iget v2, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_a4

    .line 164
    invoke-virtual {v0}, Ljcifs/ntlmssp/Type3Message;->getMasterKey()[B

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 166
    :cond_a4
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    .line 167
    iget v2, p0, Ljcifs/smb/NtlmContext;->state:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljcifs/smb/NtlmContext;->state:I
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_ad} :catch_ae

    goto :goto_3c

    .line 169
    .end local v0           #msg3:Ljcifs/ntlmssp/Type3Message;
    .end local v1           #msg2:Ljcifs/ntlmssp/Type2Message;
    :catch_ae
    move-exception v7

    .line 170
    .local v7, e:Ljava/lang/Exception;
    new-instance v2, Ljcifs/smb/SmbException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v7}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 121
    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_10
        :pswitch_3d
    .end packed-switch
.end method

.method public isEstablished()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NtlmContext[auth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    const-string v2, ",ntlmsspFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    const-string v2, ",workstation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64
    const-string v2, ",isEstablished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    const-string v2, ",state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/NtlmContext;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    const-string v2, ",serverChallenge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    if-nez v1, :cond_a3

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",signingKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    if-nez v1, :cond_c0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0

    .line 70
    :cond_a3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    iget-object v3, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v4, v3}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    .line 76
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    iget-object v3, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v4, v3}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8f
.end method

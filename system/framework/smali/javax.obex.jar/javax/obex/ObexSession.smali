.class public Ljavax/obex/ObexSession;
.super Ljava/lang/Object;
.source "ObexSession.java"


# instance fields
.field protected mAuthenticator:Ljavax/obex/Authenticator;

.field protected mChallengeDigest:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAuthChall(Ljavax/obex/HeaderSet;)Z
    .registers 20
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    if-nez v13, :cond_8

    .line 64
    const/4 v13, 0x0

    .line 180
    :goto_7
    return v13

    .line 76
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    invoke-static {v13, v14}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v1

    .line 77
    .local v1, challenge:[B
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    invoke-static {v13, v14}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v7

    .line 78
    .local v7, option:[B
    const/4 v13, 0x2

    move-object/from16 v0, p1

    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    invoke-static {v13, v14}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v2

    .line 80
    .local v2, description:[B
    const/4 v9, 0x0

    .line 81
    .local v9, realm:Ljava/lang/String;
    if-eqz v2, :cond_48

    .line 82
    array-length v13, v2

    add-int/lit8 v13, v13, -0x1

    new-array v10, v13, [B

    .line 83
    .local v10, realmString:[B
    const/4 v13, 0x1

    const/4 v14, 0x0

    array-length v15, v10

    invoke-static {v2, v13, v10, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    const/4 v13, 0x0

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    sparse-switch v13, :sswitch_data_120

    .line 105
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Unsupported Encoding Scheme"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 93
    :sswitch_41
    :try_start_41
    new-instance v9, Ljava/lang/String;

    .end local v9           #realm:Ljava/lang/String;
    const-string v13, "ISO8859_1"

    invoke-direct {v9, v10, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_6e

    .line 109
    .end local v10           #realmString:[B
    .restart local v9       #realm:Ljava/lang/String;
    :cond_48
    :goto_48
    const/4 v6, 0x0

    .line 110
    .local v6, isUserIDRequired:Z
    const/4 v5, 0x1

    .line 111
    .local v5, isFullAccess:Z
    if-eqz v7, :cond_5c

    .line 112
    const/4 v13, 0x0

    aget-byte v13, v7, v13

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_54

    .line 113
    const/4 v6, 0x1

    .line 116
    :cond_54
    const/4 v13, 0x0

    aget-byte v13, v7, v13

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_5c

    .line 117
    const/4 v5, 0x0

    .line 121
    :cond_5c
    const/4 v11, 0x0

    .line 122
    .local v11, result:Ljavax/obex/PasswordAuthentication;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-object v13, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 125
    :try_start_62
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    invoke-interface {v13, v9, v6, v5}, Ljavax/obex/Authenticator;->onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_7d

    move-result-object v11

    .line 134
    if-nez v11, :cond_80

    .line 135
    const/4 v13, 0x0

    goto :goto_7

    .line 94
    .end local v5           #isFullAccess:Z
    .end local v6           #isUserIDRequired:Z
    .end local v9           #realm:Ljava/lang/String;
    .end local v11           #result:Ljavax/obex/PasswordAuthentication;
    .restart local v10       #realmString:[B
    :catch_6e
    move-exception v4

    .line 95
    .local v4, e:Ljava/lang/Exception;
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Unsupported Encoding Scheme"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 101
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v9       #realm:Ljava/lang/String;
    :sswitch_77
    const/4 v13, 0x0

    invoke-static {v10, v13}, Ljavax/obex/ObexHelper;->convertToUnicode([BZ)Ljava/lang/String;

    move-result-object v9

    .line 102
    goto :goto_48

    .line 127
    .end local v10           #realmString:[B
    .restart local v5       #isFullAccess:Z
    .restart local v6       #isUserIDRequired:Z
    .restart local v11       #result:Ljavax/obex/PasswordAuthentication;
    :catch_7d
    move-exception v4

    .line 128
    .restart local v4       #e:Ljava/lang/Exception;
    const/4 v13, 0x0

    goto :goto_7

    .line 138
    .end local v4           #e:Ljava/lang/Exception;
    :cond_80
    invoke-virtual {v11}, Ljavax/obex/PasswordAuthentication;->getPassword()[B

    move-result-object v8

    .line 139
    .local v8, password:[B
    if-nez v8, :cond_88

    .line 140
    const/4 v13, 0x0

    goto :goto_7

    .line 143
    :cond_88
    invoke-virtual {v11}, Ljavax/obex/PasswordAuthentication;->getUserName()[B

    move-result-object v12

    .line 153
    .local v12, userName:[B
    if-eqz v12, :cond_116

    .line 154
    array-length v13, v12

    add-int/lit8 v13, v13, 0x26

    new-array v13, v13, [B

    move-object/from16 v0, p1

    iput-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 155
    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v14, 0x24

    const/4 v15, 0x1

    aput-byte v15, v13, v14

    .line 156
    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v14, 0x25

    array-length v15, v12

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    .line 157
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v15, 0x26

    array-length v0, v12

    move/from16 v16, v0

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    :goto_b7
    array-length v13, v1

    array-length v14, v8

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    new-array v3, v13, [B

    .line 164
    .local v3, digest:[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v1

    invoke-static {v1, v13, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    array-length v13, v1

    const/16 v14, 0x3a

    aput-byte v14, v3, v13

    .line 167
    const/4 v13, 0x0

    array-length v14, v1

    add-int/lit8 v14, v14, 0x1

    array-length v15, v8

    invoke-static {v8, v13, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    .line 171
    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v14, 0x1

    const/16 v15, 0x10

    aput-byte v15, v13, v14

    .line 173
    invoke-static {v3}, Ljavax/obex/ObexHelper;->computeMd5Hash([B)[B

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v16, 0x2

    const/16 v17, 0x10

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v14, 0x12

    const/4 v15, 0x2

    aput-byte v15, v13, v14

    .line 177
    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v14, 0x13

    const/16 v15, 0x10

    aput-byte v15, v13, v14

    .line 178
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v15, 0x14

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-static {v1, v13, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 159
    .end local v3           #digest:[B
    :cond_116
    const/16 v13, 0x24

    new-array v13, v13, [B

    move-object/from16 v0, p1

    iput-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    goto :goto_b7

    .line 85
    nop

    :sswitch_data_120
    .sparse-switch
        0x0 -> :sswitch_41
        0x1 -> :sswitch_41
        0xff -> :sswitch_77
    .end sparse-switch
.end method

.method public handleAuthResp([B)Z
    .registers 12
    .parameter "authResp"

    .prologue
    const/4 v6, 0x1

    const/16 v9, 0x10

    const/4 v5, 0x0

    .line 191
    iget-object v7, p0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    if-nez v7, :cond_9

    .line 216
    :cond_8
    :goto_8
    return v5

    .line 195
    :cond_9
    iget-object v7, p0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    invoke-static {v6, p1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v8

    invoke-interface {v7, v8}, Ljavax/obex/Authenticator;->onAuthenticationResponse([B)[B

    move-result-object v1

    .line 197
    .local v1, correctPassword:[B
    if-eqz v1, :cond_8

    .line 201
    array-length v7, v1

    add-int/lit8 v7, v7, 0x10

    new-array v4, v7, [B

    .line 203
    .local v4, temp:[B
    iget-object v7, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    invoke-static {v7, v5, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    array-length v7, v1

    invoke-static {v1, v5, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    invoke-static {v4}, Ljavax/obex/ObexHelper;->computeMd5Hash([B)[B

    move-result-object v2

    .line 207
    .local v2, correctResponse:[B
    invoke-static {v5, p1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v0

    .line 210
    .local v0, actualResponse:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2c
    if-ge v3, v9, :cond_37

    .line 211
    aget-byte v7, v2, v3

    aget-byte v8, v0, v3

    if-ne v7, v8, :cond_8

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_37
    move v5, v6

    .line 216
    goto :goto_8
.end method

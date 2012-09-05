.class public Lcom/vlingo/client/core/http/cookies/CookieHandler;
.super Ljava/lang/Object;
.source "CookieHandler.java"


# static fields
.field private static final log:Lcom/vlingo/client/core/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/vlingo/client/core/http/cookies/CookieHandler;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/http/cookies/CookieHandler;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractCookies(Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;)Lcom/vlingo/client/core/http/cookies/CookieJar;
    .registers 9
    .parameter "conn"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, cookies:Lcom/vlingo/client/core/http/cookies/CookieJar;
    if-nez p0, :cond_5

    move-object v1, v0

    .line 106
    .end local v0           #cookies:Lcom/vlingo/client/core/http/cookies/CookieJar;
    .local v1, cookies:Lcom/vlingo/client/core/http/cookies/CookieJar;
    :goto_4
    return-object v1

    .line 86
    .end local v1           #cookies:Lcom/vlingo/client/core/http/cookies/CookieJar;
    .restart local v0       #cookies:Lcom/vlingo/client/core/http/cookies/CookieJar;
    :cond_5
    const/4 v4, 0x0

    .line 87
    .local v4, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 89
    .local v3, i:I
    :goto_7
    :try_start_7
    invoke-virtual {p0, v3}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getResponseHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 90
    const-string v6, "Set-Cookie"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 91
    invoke-virtual {p0, v3}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;->getResponseHeaderField(I)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_26

    .line 95
    if-nez v0, :cond_21

    .line 96
    invoke-static {}, Lcom/vlingo/client/core/http/cookies/CookieJarFactory;->newInstance()Lcom/vlingo/client/core/http/cookies/CookieJar;

    move-result-object v0

    .line 98
    :cond_21
    const-string v6, ""

    invoke-static {v5, v6, v0}, Lcom/vlingo/client/core/http/cookies/CookieHandler;->parseSetCookieString(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/http/cookies/CookieJar;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_26} :catch_29

    .line 101
    .end local v5           #value:Ljava/lang/String;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 103
    :catch_29
    move-exception v2

    .line 104
    .local v2, ex:Ljava/io/IOException;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #ex:Ljava/io/IOException;
    :cond_33
    move-object v1, v0

    .line 106
    .end local v0           #cookies:Lcom/vlingo/client/core/http/cookies/CookieJar;
    .restart local v1       #cookies:Lcom/vlingo/client/core/http/cookies/CookieJar;
    goto :goto_4
.end method

.method public static extractCookies(Ljavax/microedition/io/HttpConnection;)Lcom/vlingo/client/core/http/cookies/CookieJar;
    .registers 2
    .parameter "conn"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vlingo/client/core/http/cookies/CookieHandler;->extractCookies(Ljavax/microedition/io/HttpConnection;Lcom/vlingo/client/core/http/cookies/CookieJar;)Lcom/vlingo/client/core/http/cookies/CookieJar;

    move-result-object v0

    return-object v0
.end method

.method public static extractCookies(Ljavax/microedition/io/HttpConnection;Lcom/vlingo/client/core/http/cookies/CookieJar;)Lcom/vlingo/client/core/http/cookies/CookieJar;
    .registers 11
    .parameter "conn"
    .parameter "cookieJar"

    .prologue
    .line 41
    invoke-interface {p0}, Ljavax/microedition/io/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, domain:Ljava/lang/String;
    const/4 v3, 0x0

    .line 45
    .local v3, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 47
    .local v2, i:I
    :goto_6
    :try_start_6
    invoke-interface {p0, v2}, Ljavax/microedition/io/HttpConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 50
    const-string v5, "Set-Cookie"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 53
    invoke-interface {p0, v2}, Ljavax/microedition/io/HttpConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_23

    .line 57
    if-nez p1, :cond_20

    .line 58
    invoke-static {}, Lcom/vlingo/client/core/http/cookies/CookieJarFactory;->newInstance()Lcom/vlingo/client/core/http/cookies/CookieJar;

    move-result-object p1

    .line 60
    :cond_20
    invoke-static {v4, v0, p1}, Lcom/vlingo/client/core/http/cookies/CookieHandler;->parseSetCookieString(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/http/cookies/CookieJar;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_26

    .line 63
    .end local v4           #value:Ljava/lang/String;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 65
    :catch_26
    move-exception v1

    .line 66
    .local v1, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/vlingo/client/core/http/cookies/CookieHandler;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v6, "COK1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while extracting cookies: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_45
    return-object p1
.end method

.method public static parseSetCookieString(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/http/cookies/CookieJar;)V
    .registers 28
    .parameter "cookieString"
    .parameter "domain"
    .parameter "cookieJar"

    .prologue
    .line 114
    const/16 v21, 0x2c

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, cookies:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_b
    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_14d

    .line 116
    aget-object v6, v7, v13

    .line 118
    .local v6, cookie:Ljava/lang/String;
    const-string v21, "Expires="

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_41

    .line 120
    add-int/lit8 v13, v13, 0x1

    .line 121
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v7, v13

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    :cond_41
    const/16 v21, 0x3d

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 125
    .local v9, eqIndex:I
    const/4 v5, -0x1

    .line 126
    .local v5, colonIndex:I
    const/4 v3, 0x0

    .line 127
    .local v3, c:Lcom/vlingo/client/core/http/cookies/Cookie;
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v9, v0, :cond_97

    .line 128
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, cname:Ljava/lang/String;
    const-string v8, ""

    .line 130
    .local v8, cvalue:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v22, v9, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_81

    .line 131
    const/16 v21, 0x3b

    add-int/lit8 v22, v9, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 132
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v5, v0, :cond_112

    .line 133
    add-int/lit8 v21, v9, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 140
    :cond_81
    :goto_81
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vlingo/client/core/http/cookies/CookieFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/http/cookies/Cookie;

    move-result-object v3

    .line 146
    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/vlingo/client/core/http/cookies/Cookie;->setDomain(Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/vlingo/client/core/http/cookies/CookieJar;->addCookie(Lcom/vlingo/client/core/http/cookies/Cookie;)V

    .line 153
    .end local v4           #cname:Ljava/lang/String;
    .end local v8           #cvalue:Ljava/lang/String;
    :cond_97
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v5, v0, :cond_1dd

    .line 154
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v22, v5, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1dd

    .line 155
    add-int/lit8 v21, v5, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 156
    .local v16, paramsStr:Ljava/lang/String;
    const/16 v21, 0x3b

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v15

    .line 157
    .local v15, params:[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, j:I
    :goto_bc
    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_1dd

    .line 158
    aget-object v21, v15, v14

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 159
    .local v19, pv:Ljava/lang/String;
    const-string v21, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 160
    .local v17, peqIndex:I
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 161
    .local v18, pname:Ljava/lang/String;
    add-int/lit8 v21, v17, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 163
    .local v20, pvalue:Ljava/lang/String;
    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10d

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10d

    .line 164
    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 167
    :cond_10d
    if-nez v3, :cond_11c

    .line 157
    :cond_10f
    :goto_10f
    add-int/lit8 v14, v14, 0x1

    goto :goto_bc

    .line 136
    .end local v14           #j:I
    .end local v15           #params:[Ljava/lang/String;
    .end local v16           #paramsStr:Ljava/lang/String;
    .end local v17           #peqIndex:I
    .end local v18           #pname:Ljava/lang/String;
    .end local v19           #pv:Ljava/lang/String;
    .end local v20           #pvalue:Ljava/lang/String;
    .restart local v4       #cname:Ljava/lang/String;
    .restart local v8       #cvalue:Ljava/lang/String;
    :cond_112
    add-int/lit8 v21, v9, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_81

    .line 170
    .end local v4           #cname:Ljava/lang/String;
    .end local v8           #cvalue:Ljava/lang/String;
    .restart local v14       #j:I
    .restart local v15       #params:[Ljava/lang/String;
    .restart local v16       #paramsStr:Ljava/lang/String;
    .restart local v17       #peqIndex:I
    .restart local v18       #pname:Ljava/lang/String;
    .restart local v19       #pv:Ljava/lang/String;
    .restart local v20       #pvalue:Ljava/lang/String;
    :cond_11c
    const-string v21, "Domain"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_14e

    .line 171
    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lcom/vlingo/client/core/http/cookies/Cookie;->setDomain(Ljava/lang/String;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12d} :catch_12e

    goto :goto_10f

    .line 205
    .end local v3           #c:Lcom/vlingo/client/core/http/cookies/Cookie;
    .end local v5           #colonIndex:I
    .end local v6           #cookie:Ljava/lang/String;
    .end local v7           #cookies:[Ljava/lang/String;
    .end local v9           #eqIndex:I
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #params:[Ljava/lang/String;
    .end local v16           #paramsStr:Ljava/lang/String;
    .end local v17           #peqIndex:I
    .end local v18           #pname:Ljava/lang/String;
    .end local v19           #pv:Ljava/lang/String;
    .end local v20           #pvalue:Ljava/lang/String;
    :catch_12e
    move-exception v10

    .line 206
    .local v10, ex:Ljava/lang/Exception;
    sget-object v21, Lcom/vlingo/client/core/http/cookies/CookieHandler;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v22, "COK2"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error parsing cookie: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_14d
    return-void

    .line 173
    .restart local v3       #c:Lcom/vlingo/client/core/http/cookies/Cookie;
    .restart local v5       #colonIndex:I
    .restart local v6       #cookie:Ljava/lang/String;
    .restart local v7       #cookies:[Ljava/lang/String;
    .restart local v9       #eqIndex:I
    .restart local v13       #i:I
    .restart local v14       #j:I
    .restart local v15       #params:[Ljava/lang/String;
    .restart local v16       #paramsStr:Ljava/lang/String;
    .restart local v17       #peqIndex:I
    .restart local v18       #pname:Ljava/lang/String;
    .restart local v19       #pv:Ljava/lang/String;
    .restart local v20       #pvalue:Ljava/lang/String;
    :cond_14e
    :try_start_14e
    const-string v21, "Path"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_160

    .line 174
    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lcom/vlingo/client/core/http/cookies/Cookie;->setPath(Ljava/lang/String;)V

    goto :goto_10f

    .line 176
    :cond_160
    const-string v21, "Expires"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_169} :catch_12e

    move-result v21

    if-eqz v21, :cond_199

    .line 177
    const-wide/16 v11, 0x0

    .line 178
    .local v11, expires:J
    :try_start_16e
    invoke-static/range {v20 .. v20}, Lcom/vlingo/client/core/http/date/HttpDateParser;->parse(Ljava/lang/String;)J
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_171} :catch_18e

    move-result-wide v11

    .line 181
    :goto_172
    const-wide/16 v21, 0x0

    cmp-long v21, v11, v21

    if-lez v21, :cond_10f

    .line 182
    :try_start_178
    invoke-interface {v3}, Lcom/vlingo/client/core/http/cookies/Cookie;->getExpires()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_18a

    invoke-interface {v3}, Lcom/vlingo/client/core/http/cookies/Cookie;->getExpires()J

    move-result-wide v21

    cmp-long v21, v11, v21

    if-gez v21, :cond_10f

    .line 183
    :cond_18a
    invoke-interface {v3, v11, v12}, Lcom/vlingo/client/core/http/cookies/Cookie;->setExpires(J)V

    goto :goto_10f

    .line 178
    :catch_18e
    move-exception v10

    .line 179
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v21, "VLG_EXCEPTION"

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_172

    .line 186
    .end local v10           #ex:Ljava/lang/Exception;
    .end local v11           #expires:J
    :cond_199
    const-string v21, "Max-Age"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_1a2} :catch_12e

    move-result v21

    if-eqz v21, :cond_10f

    .line 187
    const-wide/16 v11, 0x0

    .line 188
    .restart local v11       #expires:J
    :try_start_1a7
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1aa} :catch_1d2

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v11, v21, v23

    .line 191
    :goto_1af
    const-wide/16 v21, 0x0

    cmp-long v21, v11, v21

    if-lez v21, :cond_10f

    .line 192
    :try_start_1b5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    add-long v11, v11, v21

    .line 193
    invoke-interface {v3}, Lcom/vlingo/client/core/http/cookies/Cookie;->getExpires()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_1cd

    invoke-interface {v3}, Lcom/vlingo/client/core/http/cookies/Cookie;->getExpires()J

    move-result-wide v21

    cmp-long v21, v11, v21

    if-gez v21, :cond_10f

    .line 194
    :cond_1cd
    invoke-interface {v3, v11, v12}, Lcom/vlingo/client/core/http/cookies/Cookie;->setExpires(J)V

    goto/16 :goto_10f

    .line 188
    :catch_1d2
    move-exception v10

    .line 189
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v21, "VLG_EXCEPTION"

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1dc} :catch_12e

    goto :goto_1af

    .line 115
    .end local v10           #ex:Ljava/lang/Exception;
    .end local v11           #expires:J
    .end local v14           #j:I
    .end local v15           #params:[Ljava/lang/String;
    .end local v16           #paramsStr:Ljava/lang/String;
    .end local v17           #peqIndex:I
    .end local v18           #pname:Ljava/lang/String;
    .end local v19           #pv:Ljava/lang/String;
    .end local v20           #pvalue:Ljava/lang/String;
    :cond_1dd
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b
.end method

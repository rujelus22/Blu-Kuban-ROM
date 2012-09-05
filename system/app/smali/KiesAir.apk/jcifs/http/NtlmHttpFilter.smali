.class public Ljcifs/http/NtlmHttpFilter;
.super Ljava/lang/Object;
.source "NtlmHttpFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# static fields
.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private defaultDomain:Ljava/lang/String;

.field private domainController:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private loadBalance:Z

.field private realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .prologue
    .line 107
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .registers 8
    .parameter "request"
    .parameter "response"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 117
    move-object v1, p1

    check-cast v1, Ljavax/servlet/http/HttpServletRequest;

    .local v1, req:Ljavax/servlet/http/HttpServletRequest;
    move-object v2, p2

    .line 118
    check-cast v2, Ljavax/servlet/http/HttpServletResponse;

    .line 121
    .local v2, resp:Ljavax/servlet/http/HttpServletResponse;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Ljcifs/http/NtlmHttpFilter;->negotiate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Z)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    .local v0, ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    if-nez v0, :cond_e

    .line 126
    :goto_d
    return-void

    .line 125
    :cond_e
    new-instance v3, Ljcifs/http/NtlmHttpServletRequest;

    invoke-direct {v3, v1, v0}, Ljcifs/http/NtlmHttpServletRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/security/Principal;)V

    invoke-interface {p3, v3, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_d
.end method

.method public getFilterConfig()Ljavax/servlet/FilterConfig;
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .registers 8
    .parameter "filterConfig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 65
    const-string v3, "jcifs.smb.client.soTimeout"

    const-string v4, "1800000"

    invoke-static {v3, v4}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string v3, "jcifs.netbios.cachePolicy"

    const-string v4, "1200"

    invoke-static {v3, v4}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v3, "jcifs.smb.lmCompatibility"

    const-string v4, "0"

    invoke-static {v3, v4}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    const-string v3, "jcifs.smb.client.useExtendedSecurity"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 76
    .local v0, e:Ljava/util/Enumeration;
    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 77
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    .local v2, name:Ljava/lang/String;
    const-string v3, "jcifs."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 79
    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_21

    .line 82
    .end local v2           #name:Ljava/lang/String;
    :cond_3d
    const-string v3, "jcifs.smb.client.domain"

    invoke-static {v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    .line 83
    const-string v3, "jcifs.http.domainController"

    invoke-static {v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    .line 84
    iget-object v3, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    if-nez v3, :cond_5e

    .line 85
    iget-object v3, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    iput-object v3, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    .line 86
    const-string v3, "jcifs.http.loadBalance"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljcifs/http/NtlmHttpFilter;->loadBalance:Z

    .line 88
    :cond_5e
    const-string v3, "jcifs.http.enableBasic"

    invoke-static {v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Ljcifs/http/NtlmHttpFilter;->enableBasic:Z

    .line 90
    const-string v3, "jcifs.http.insecureBasic"

    invoke-static {v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Ljcifs/http/NtlmHttpFilter;->insecureBasic:Z

    .line 92
    const-string v3, "jcifs.http.basicRealm"

    invoke-static {v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    if-nez v3, :cond_8e

    const-string v3, "jCIFS"

    iput-object v3, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    .line 95
    :cond_8e
    const-string v3, "jcifs.util.loglevel"

    invoke-static {v3, v5}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, level:I
    if-eq v1, v5, :cond_99

    .line 96
    invoke-static {v1}, Ljcifs/util/LogStream;->setLevel(I)V

    .line 98
    :cond_99
    sget-object v3, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_a7

    .line 100
    :try_start_a0
    sget-object v3, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    const-string v4, "JCIFS PROPERTIES"

    invoke-static {v3, v4}, Ljcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a7} :catch_a8

    .line 104
    :cond_a7
    :goto_a7
    return-void

    .line 101
    :catch_a8
    move-exception v3

    goto :goto_a7
.end method

.method protected negotiate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Z)Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 23
    .parameter "req"
    .parameter "resp"
    .parameter "skipAuthentication"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v9, 0x0

    .line 145
    .local v9, ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    const-string v15, "Authorization"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Ljcifs/http/NtlmHttpFilter;->enableBasic:Z

    if-eqz v15, :cond_65

    move-object/from16 v0, p0

    iget-boolean v15, v0, Ljcifs/http/NtlmHttpFilter;->insecureBasic:Z

    if-nez v15, :cond_1b

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v15

    if-eqz v15, :cond_65

    :cond_1b
    const/4 v10, 0x1

    .line 148
    .local v10, offerBasic:Z
    :goto_1c
    if-eqz v8, :cond_1c7

    const-string v15, "NTLM "

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_30

    if-eqz v10, :cond_1c7

    const-string v15, "Basic "

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c7

    .line 150
    :cond_30
    const-string v15, "NTLM "

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_bb

    .line 151
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v13

    .line 154
    .local v13, ssn:Ljavax/servlet/http/HttpSession;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Ljcifs/http/NtlmHttpFilter;->loadBalance:Z

    if-eqz v15, :cond_67

    .line 155
    const-string v15, "NtlmHttpChal"

    invoke-interface {v13, v15}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljcifs/smb/NtlmChallenge;

    .line 156
    .local v3, chal:Ljcifs/smb/NtlmChallenge;
    if-nez v3, :cond_55

    .line 157
    invoke-static {}, Ljcifs/smb/SmbSession;->getChallengeForDomain()Ljcifs/smb/NtlmChallenge;

    move-result-object v3

    .line 158
    const-string v15, "NtlmHttpChal"

    invoke-interface {v13, v15, v3}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :cond_55
    iget-object v5, v3, Ljcifs/smb/NtlmChallenge;->dc:Ljcifs/UniAddress;

    .line 161
    .local v5, dc:Ljcifs/UniAddress;
    iget-object v4, v3, Ljcifs/smb/NtlmChallenge;->challenge:[B

    .line 167
    .end local v3           #chal:Ljcifs/smb/NtlmChallenge;
    .local v4, challenge:[B
    :goto_59
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v9

    if-nez v9, :cond_76

    .line 168
    const/4 v15, 0x0

    .line 239
    .end local v4           #challenge:[B
    .end local v5           #dc:Ljcifs/UniAddress;
    .end local v13           #ssn:Ljavax/servlet/http/HttpSession;
    :goto_64
    return-object v15

    .line 146
    .end local v10           #offerBasic:Z
    :cond_65
    const/4 v10, 0x0

    goto :goto_1c

    .line 163
    .restart local v10       #offerBasic:Z
    .restart local v13       #ssn:Ljavax/servlet/http/HttpSession;
    :cond_67
    move-object/from16 v0, p0

    iget-object v15, v0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v5

    .line 164
    .restart local v5       #dc:Ljcifs/UniAddress;
    invoke-static {v5}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v4

    .restart local v4       #challenge:[B
    goto :goto_59

    .line 171
    :cond_76
    const-string v15, "NtlmHttpChal"

    invoke-interface {v13, v15}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 189
    .end local v4           #challenge:[B
    .end local v13           #ssn:Ljavax/servlet/http/HttpSession;
    :goto_7b
    :try_start_7b
    invoke-static {v5, v9}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 191
    sget-object v15, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    sget v15, Ljcifs/util/LogStream;->level:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_ae

    .line 192
    sget-object v15, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NtlmHttpFilter: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " successfully authenticated against "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V
    :try_end_ae
    .catch Ljcifs/smb/SmbAuthException; {:try_start_7b .. :try_end_ae} :catch_11f

    .line 220
    :cond_ae
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v15

    const-string v16, "NtlmHttpAuth"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v9}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v5           #dc:Ljcifs/UniAddress;
    :cond_b9
    move-object v15, v9

    .line 239
    goto :goto_64

    .line 173
    :cond_bb
    new-instance v2, Ljava/lang/String;

    const/4 v15, 0x6

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v15

    const-string v16, "US-ASCII"

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 175
    .local v2, auth:Ljava/lang/String;
    const/16 v15, 0x3a

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 176
    .local v7, index:I
    const/4 v15, -0x1

    if-eq v7, v15, :cond_115

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 177
    .local v14, user:Ljava/lang/String;
    :goto_db
    const/4 v15, -0x1

    if-eq v7, v15, :cond_117

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 179
    .local v11, password:Ljava/lang/String;
    :goto_e4
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 180
    const/4 v15, -0x1

    if-ne v7, v15, :cond_f3

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 181
    :cond_f3
    const/4 v15, -0x1

    if-eq v7, v15, :cond_11a

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, domain:Ljava/lang/String;
    :goto_fb
    const/4 v15, -0x1

    if-eq v7, v15, :cond_104

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 184
    :cond_104
    new-instance v9, Ljcifs/smb/NtlmPasswordAuthentication;

    .end local v9           #ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    invoke-direct {v9, v6, v14, v11}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .restart local v9       #ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v5

    .restart local v5       #dc:Ljcifs/UniAddress;
    goto/16 :goto_7b

    .end local v5           #dc:Ljcifs/UniAddress;
    .end local v6           #domain:Ljava/lang/String;
    .end local v11           #password:Ljava/lang/String;
    .end local v14           #user:Ljava/lang/String;
    :cond_115
    move-object v14, v2

    .line 176
    goto :goto_db

    .line 177
    .restart local v14       #user:Ljava/lang/String;
    :cond_117
    const-string v11, ""

    goto :goto_e4

    .line 181
    .restart local v11       #password:Ljava/lang/String;
    :cond_11a
    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    goto :goto_fb

    .line 195
    .end local v2           #auth:Ljava/lang/String;
    .end local v7           #index:I
    .end local v11           #password:Ljava/lang/String;
    .end local v14           #user:Ljava/lang/String;
    .restart local v5       #dc:Ljcifs/UniAddress;
    :catch_11f
    move-exception v12

    .line 196
    .local v12, sae:Ljcifs/smb/SmbAuthException;
    sget-object v15, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    sget v15, Ljcifs/util/LogStream;->level:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_166

    .line 197
    sget-object v15, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NtlmHttpFilter: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Ljcifs/smb/SmbAuthException;->getNtStatus()I

    move-result v17

    const/16 v18, 0x8

    invoke-static/range {v17 .. v18}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 201
    :cond_166
    invoke-virtual {v12}, Ljcifs/smb/SmbAuthException;->getNtStatus()I

    move-result v15

    const v16, -0x3ffffffb

    move/from16 v0, v16

    if-ne v15, v0, :cond_17f

    .line 205
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v13

    .line 206
    .restart local v13       #ssn:Ljavax/servlet/http/HttpSession;
    if-eqz v13, :cond_17f

    .line 207
    const-string v15, "NtlmHttpAuth"

    invoke-interface {v13, v15}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 210
    .end local v13           #ssn:Ljavax/servlet/http/HttpSession;
    :cond_17f
    const-string v15, "WWW-Authenticate"

    const-string v16, "NTLM"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-eqz v10, :cond_1b4

    .line 212
    const-string v15, "WWW-Authenticate"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Basic realm=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1b4
    const/16 v15, 0x191

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 216
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 217
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 218
    const/4 v15, 0x0

    goto/16 :goto_64

    .line 222
    .end local v5           #dc:Ljcifs/UniAddress;
    .end local v12           #sae:Ljcifs/smb/SmbAuthException;
    :cond_1c7
    if-nez p3, :cond_b9

    .line 223
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v13

    .line 224
    .restart local v13       #ssn:Ljavax/servlet/http/HttpSession;
    if-eqz v13, :cond_1dc

    const-string v15, "NtlmHttpAuth"

    invoke-interface {v13, v15}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    check-cast v9, Ljcifs/smb/NtlmPasswordAuthentication;

    .restart local v9       #ntlm:Ljcifs/smb/NtlmPasswordAuthentication;
    if-nez v9, :cond_b9

    .line 226
    :cond_1dc
    const-string v15, "WWW-Authenticate"

    const-string v16, "NTLM"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz v10, :cond_211

    .line 228
    const-string v15, "WWW-Authenticate"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Basic realm=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_211
    const/16 v15, 0x191

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 232
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 233
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 234
    const/4 v15, 0x0

    goto/16 :goto_64
.end method

.method public setFilterConfig(Ljavax/servlet/FilterConfig;)V
    .registers 3
    .parameter "f"

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/http/NtlmHttpFilter;->init(Ljavax/servlet/FilterConfig;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 249
    :goto_3
    return-void

    .line 246
    :catch_4
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

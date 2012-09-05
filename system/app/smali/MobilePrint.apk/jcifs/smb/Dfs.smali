.class public Ljcifs/smb/Dfs;
.super Ljava/lang/Object;
.source "Dfs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Dfs$CacheEntry;
    }
.end annotation


# static fields
.field static final DISABLED:Z

.field protected static FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

.field static final TTL:J

.field static log:Ljcifs/util/LogStream;

.field static final strictView:Z


# instance fields
.field protected _domains:Ljcifs/smb/Dfs$CacheEntry;

.field protected referrals:Ljcifs/smb/Dfs$CacheEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    .line 43
    const-string v0, "jcifs.smb.client.dfs.strictView"

    invoke-static {v0, v3}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/Dfs;->strictView:Z

    .line 44
    const-string v0, "jcifs.smb.client.dfs.ttl"

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Ljcifs/smb/Dfs;->TTL:J

    .line 45
    const-string v0, "jcifs.smb.client.dfs.disabled"

    invoke-static {v0, v3}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    .line 47
    new-instance v0, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    sput-object v0, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 50
    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 28
    return-void
.end method


# virtual methods
.method public getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;
    .registers 12
    .parameter "domain"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbAuthException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 98
    sget-boolean v7, Ljcifs/smb/Dfs;->DISABLED:Z

    if-eqz v7, :cond_6

    .line 129
    :cond_5
    :goto_5
    return-object v6

    .line 102
    :cond_6
    const/4 v7, 0x1

    :try_start_7
    invoke-static {p1, v7}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    .line 103
    .local v0, addr:Ljcifs/UniAddress;
    const/4 v7, 0x0

    invoke-static {v0, v7}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v5

    .line 104
    .local v5, trans:Ljcifs/smb/SmbTransport;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\\"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, p2, v7, v8}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_3b

    move-result-object v1

    .line 105
    .local v1, dr:Ljcifs/smb/DfsReferral;
    if-eqz v1, :cond_5

    .line 106
    move-object v4, v1

    .line 107
    .local v4, start:Ljcifs/smb/DfsReferral;
    const/4 v2, 0x0

    .line 111
    .local v2, e:Ljava/io/IOException;
    :cond_28
    :try_start_28
    iget-object v7, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v7}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    .line 112
    const/4 v7, 0x0

    invoke-static {v0, v7}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_32} :catch_34

    move-result-object v6

    goto :goto_5

    .line 113
    :catch_34
    move-exception v3

    .line 114
    .local v3, ioe:Ljava/io/IOException;
    move-object v2, v3

    .line 117
    :try_start_36
    iget-object v1, v1, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 118
    if-ne v1, v4, :cond_28

    .line 120
    throw v2
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_3b

    .line 122
    .end local v0           #addr:Ljcifs/UniAddress;
    .end local v1           #dr:Ljcifs/smb/DfsReferral;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #start:Ljcifs/smb/DfsReferral;
    .end local v5           #trans:Ljcifs/smb/SmbTransport;
    :catch_3b
    move-exception v3

    .line 123
    .restart local v3       #ioe:Ljava/io/IOException;
    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_46

    .line 124
    sget-object v7, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v7}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 125
    :cond_46
    sget-boolean v7, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz v7, :cond_5

    instance-of v7, v3, Ljcifs/smb/SmbAuthException;

    if-eqz v7, :cond_5

    .line 126
    check-cast v3, Ljcifs/smb/SmbAuthException;

    .end local v3           #ioe:Ljava/io/IOException;
    throw v3
.end method

.method public getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .registers 12
    .parameter "trans"
    .parameter "domain"
    .parameter "root"
    .parameter "path"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbAuthException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 136
    sget-boolean v4, Ljcifs/smb/Dfs;->DISABLED:Z

    if-eqz v4, :cond_7

    move-object v0, v3

    .line 153
    :cond_6
    :goto_6
    return-object v0

    .line 140
    :cond_7
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\\"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, p:Ljava/lang/String;
    if-eqz p4, :cond_33

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_33
    const/4 v4, 0x0

    invoke-virtual {p1, p5, v2, v4}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_37} :catch_3c

    move-result-object v0

    .line 144
    .local v0, dr:Ljcifs/smb/DfsReferral;
    if-nez v0, :cond_6

    .end local v0           #dr:Ljcifs/smb/DfsReferral;
    .end local v2           #p:Ljava/lang/String;
    :cond_3a
    move-object v0, v3

    .line 153
    goto :goto_6

    .line 146
    :catch_3c
    move-exception v1

    .line 147
    .local v1, ioe:Ljava/io/IOException;
    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_47

    .line 148
    sget-object v4, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 149
    :cond_47
    sget-boolean v4, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz v4, :cond_3a

    instance-of v4, v1, Ljcifs/smb/SmbAuthException;

    if-eqz v4, :cond_3a

    .line 150
    check-cast v1, Ljcifs/smb/SmbAuthException;

    .end local v1           #ioe:Ljava/io/IOException;
    throw v1
.end method

.method public getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;
    .registers 14
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbAuthException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 53
    sget-boolean v8, Ljcifs/smb/Dfs;->DISABLED:Z

    if-nez v8, :cond_b

    iget-object v8, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v9, "?"

    if-ne v8, v9, :cond_c

    .line 85
    :cond_b
    :goto_b
    return-object v7

    .line 56
    :cond_c
    iget-object v8, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v8, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v10, v10, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_1e

    .line 57
    iput-object v7, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 59
    :cond_1e
    iget-object v8, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v8, :cond_27

    .line 60
    iget-object v7, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v7, v7, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    goto :goto_b

    .line 62
    :cond_27
    :try_start_27
    iget-object v8, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    .line 63
    .local v0, addr:Ljcifs/UniAddress;
    const/4 v8, 0x0

    invoke-static {v0, v8}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v6

    .line 64
    .local v6, trans:Ljcifs/smb/SmbTransport;
    new-instance v3, Ljcifs/smb/Dfs$CacheEntry;

    sget-wide v8, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    invoke-direct {v3, v8, v9}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    .line 66
    .local v3, entry:Ljcifs/smb/Dfs$CacheEntry;
    const-string v8, ""

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v8, v9}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object v2

    .line 67
    .local v2, dr:Ljcifs/smb/DfsReferral;
    if-eqz v2, :cond_b

    .line 68
    move-object v5, v2

    .line 70
    .local v5, start:Ljcifs/smb/DfsReferral;
    :cond_47
    iget-object v8, v2, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, domain:Ljava/lang/String;
    iget-object v8, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v2, v2, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 73
    if-ne v2, v5, :cond_47

    .line 75
    iput-object v3, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    .line 76
    iget-object v8, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v7, v8, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_61} :catch_62

    goto :goto_b

    .line 78
    .end local v0           #addr:Ljcifs/UniAddress;
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #dr:Ljcifs/smb/DfsReferral;
    .end local v3           #entry:Ljcifs/smb/Dfs$CacheEntry;
    .end local v5           #start:Ljcifs/smb/DfsReferral;
    .end local v6           #trans:Ljcifs/smb/SmbTransport;
    :catch_62
    move-exception v4

    .line 79
    .local v4, ioe:Ljava/io/IOException;
    sget v8, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_6d

    .line 80
    sget-object v8, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {v4, v8}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 81
    :cond_6d
    sget-boolean v8, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz v8, :cond_b

    instance-of v8, v4, Ljcifs/smb/SmbAuthException;

    if-eqz v8, :cond_b

    .line 82
    check-cast v4, Ljcifs/smb/SmbAuthException;

    .end local v4           #ioe:Ljava/io/IOException;
    throw v4
.end method

.method declared-synchronized insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V
    .registers 13
    .parameter "path"
    .parameter "dr"

    .prologue
    const/16 v9, 0x5c

    const/4 v8, 0x1

    .line 289
    monitor-enter p0

    :try_start_4
    sget-boolean v6, Ljcifs/smb/Dfs;->DISABLED:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_85

    if-eqz v6, :cond_a

    .line 326
    :goto_8
    monitor-exit p0

    return-void

    .line 292
    :cond_a
    const/16 v6, 0x5c

    const/4 v7, 0x1

    :try_start_d
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 293
    .local v2, s1:I
    const/16 v6, 0x5c

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 294
    .local v3, s2:I
    const/4 v6, 0x1

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, server:Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, share:Ljava/lang/String;
    const/4 v6, 0x0

    iget v7, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 306
    .local v1, ki:I
    :goto_33
    if-le v1, v8, :cond_3d

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_88

    .line 309
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_48

    .line 310
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_48
    iget v6, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 319
    iget-object v6, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v6, :cond_70

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    iget-object v8, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v8, v8, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_70

    .line 320
    const/4 v6, 0x0

    iput-object v6, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 322
    :cond_70
    iget-object v6, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-nez v6, :cond_7d

    .line 323
    new-instance v6, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    iput-object v6, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 325
    :cond_7d
    iget-object v6, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v6, v6, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catchall {:try_start_d .. :try_end_84} :catchall_85

    goto :goto_8

    .line 289
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #ki:I
    .end local v2           #s1:I
    .end local v3           #s2:I
    .end local v4           #server:Ljava/lang/String;
    .end local v5           #share:Ljava/lang/String;
    :catchall_85
    move-exception v6

    monitor-exit p0

    throw v6

    .line 307
    .restart local v0       #key:Ljava/lang/String;
    .restart local v1       #ki:I
    .restart local v2       #s1:I
    .restart local v3       #s2:I
    .restart local v4       #server:Ljava/lang/String;
    .restart local v5       #share:Ljava/lang/String;
    :cond_88
    add-int/lit8 v1, v1, -0x1

    goto :goto_33
.end method

.method public isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 6
    .parameter "domain"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbAuthException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, p2}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v0

    .line 91
    .local v0, domains:Ljava/util/HashMap;
    if-nez v0, :cond_8

    .line 94
    :cond_7
    :goto_7
    return v1

    .line 93
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public declared-synchronized resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .registers 28
    .parameter "domain"
    .parameter "root"
    .parameter "path"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbAuthException;
        }
    .end annotation

    .prologue
    .line 159
    monitor-enter p0

    const/4 v12, 0x0

    .line 160
    .local v12, dr:Ljcifs/smb/DfsReferral;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 162
    .local v19, now:J
    sget-boolean v3, Ljcifs/smb/Dfs;->DISABLED:Z

    if-nez v3, :cond_14

    const-string v3, "IPC$"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_106

    move-result v3

    if-eqz v3, :cond_17

    .line 163
    :cond_14
    const/4 v3, 0x0

    .line 283
    :goto_15
    monitor-exit p0

    return-object v3

    .line 167
    :cond_17
    :try_start_17
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v11

    .line 168
    .local v11, domains:Ljava/util/HashMap;
    if-eqz v11, :cond_141

    .line 169
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 172
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    .line 173
    .local v21, roots:Ljava/util/HashMap;
    if-eqz v21, :cond_141

    .line 174
    const/4 v4, 0x0

    .line 176
    .local v4, trans:Ljcifs/smb/SmbTransport;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 181
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljcifs/smb/Dfs$CacheEntry;

    .line 182
    .local v17, links:Ljcifs/smb/Dfs$CacheEntry;
    if-eqz v17, :cond_51

    move-object/from16 v0, v17

    iget-wide v5, v0, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v3, v19, v5

    if-lez v3, :cond_51

    .line 183
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/16 v17, 0x0

    .line 187
    :cond_51
    if-nez v17, :cond_109

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    move-result-object v4

    if-nez v4, :cond_61

    .line 189
    const/4 v3, 0x0

    goto :goto_15

    :cond_61
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 191
    invoke-virtual/range {v3 .. v8}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v12

    .line 192
    if-eqz v12, :cond_fa

    .line 193
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v15, v3, v5

    .line 195
    .local v15, len:I
    new-instance v17, Ljcifs/smb/Dfs$CacheEntry;

    .end local v17           #links:Ljcifs/smb/Dfs$CacheEntry;
    const-wide/16 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    .line 197
    .restart local v17       #links:Ljcifs/smb/Dfs$CacheEntry;
    move-object/from16 v22, v12

    .line 199
    .local v22, tmp:Ljcifs/smb/DfsReferral;
    :cond_8a
    if-nez p3, :cond_9a

    .line 206
    move-object/from16 v0, v17

    iget-object v3, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    move-object/from16 v0, v22

    iput-object v3, v0, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    .line 207
    const-string v3, "\\"

    move-object/from16 v0, v22

    iput-object v3, v0, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    .line 209
    :cond_9a
    move-object/from16 v0, v22

    iget v3, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    sub-int/2addr v3, v15

    move-object/from16 v0, v22

    iput v3, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 210
    move-object/from16 v0, v22

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    move-object/from16 v22, v0

    .line 211
    move-object/from16 v0, v22

    if-ne v0, v12, :cond_8a

    .line 213
    iget-object v3, v12, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v3, :cond_ba

    .line 214
    move-object/from16 v0, v17

    iget-object v3, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    iget-object v5, v12, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    invoke-virtual {v3, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_ba
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v15           #len:I
    .end local v22           #tmp:Ljcifs/smb/DfsReferral;
    :cond_c3
    :goto_c3
    if-eqz v17, :cond_141

    .line 225
    const-string v16, "\\"

    .line 230
    .local v16, link:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v3, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljcifs/smb/DfsReferral;

    move-object v12, v0

    .line 231
    if-eqz v12, :cond_e7

    iget-wide v5, v12, Ljcifs/smb/DfsReferral;->expiration:J

    cmp-long v3, v19, v5

    if-lez v3, :cond_e7

    .line 232
    move-object/from16 v0, v17

    iget-object v3, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const/4 v12, 0x0

    .line 236
    :cond_e7
    if-nez v12, :cond_141

    .line 237
    if-nez v4, :cond_112

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    move-result-object v4

    if-nez v4, :cond_112

    .line 239
    const/4 v3, 0x0

    goto/16 :goto_15

    .line 217
    .end local v16           #link:Ljava/lang/String;
    :cond_fa
    if-nez p3, :cond_c3

    .line 218
    sget-object v3, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_105
    .catchall {:try_start_17 .. :try_end_105} :catchall_106

    goto :goto_c3

    .line 159
    .end local v4           #trans:Ljcifs/smb/SmbTransport;
    .end local v11           #domains:Ljava/util/HashMap;
    .end local v17           #links:Ljcifs/smb/Dfs$CacheEntry;
    .end local v19           #now:J
    .end local v21           #roots:Ljava/util/HashMap;
    :catchall_106
    move-exception v3

    monitor-exit p0

    throw v3

    .line 220
    .restart local v4       #trans:Ljcifs/smb/SmbTransport;
    .restart local v11       #domains:Ljava/util/HashMap;
    .restart local v17       #links:Ljcifs/smb/Dfs$CacheEntry;
    .restart local v19       #now:J
    .restart local v21       #roots:Ljava/util/HashMap;
    :cond_109
    :try_start_109
    sget-object v3, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_c3

    .line 221
    const/16 v17, 0x0

    goto :goto_c3

    .restart local v16       #link:Ljava/lang/String;
    :cond_112
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 240
    invoke-virtual/range {v3 .. v8}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v12

    .line 241
    if-eqz v12, :cond_141

    .line 242
    iget v3, v12, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    iput v3, v12, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 243
    move-object/from16 v0, v16

    iput-object v0, v12, Ljcifs/smb/DfsReferral;->link:Ljava/lang/String;

    .line 244
    move-object/from16 v0, v17

    iget-object v3, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v4           #trans:Ljcifs/smb/SmbTransport;
    .end local v16           #link:Ljava/lang/String;
    .end local v17           #links:Ljcifs/smb/Dfs$CacheEntry;
    .end local v21           #roots:Ljava/util/HashMap;
    :cond_141
    if-nez v12, :cond_1bd

    if-eqz p3, :cond_1bd

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v3, :cond_15a

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v5, v3, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v3, v19, v5

    if-lez v3, :cond_15a

    .line 256
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 258
    :cond_15a
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-nez v3, :cond_16b

    .line 259
    new-instance v3, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v5, 0x0

    invoke-direct {v3, v5, v6}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    .line 261
    :cond_16b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\\"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 262
    .local v14, key:Ljava/lang/String;
    const-string v3, "\\"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a5

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 264
    :cond_1a5
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v3, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 267
    .local v13, iter:Ljava/util/Iterator;
    :cond_1b7
    :goto_1b7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1c0

    .end local v13           #iter:Ljava/util/Iterator;
    .end local v14           #key:Ljava/lang/String;
    :cond_1bd
    move-object v3, v12

    .line 283
    goto/16 :goto_15

    .line 268
    .restart local v13       #iter:Ljava/util/Iterator;
    .restart local v14       #key:Ljava/lang/String;
    :cond_1c0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 269
    .local v9, _key:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 270
    .local v10, _klen:I
    const/16 v18, 0x0

    .line 272
    .local v18, match:Z
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v10, v3, :cond_1e7

    .line 273
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 278
    :cond_1d6
    :goto_1d6
    if-eqz v18, :cond_1b7

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v3, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljcifs/smb/DfsReferral;

    move-object v12, v0

    goto :goto_1b7

    .line 274
    :cond_1e7
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v10, v3, :cond_1d6

    .line 275
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v3, v14, v5, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_200

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C
    :try_end_1f8
    .catchall {:try_start_109 .. :try_end_1f8} :catchall_106

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_200

    const/16 v18, 0x1

    :goto_1ff
    goto :goto_1d6

    :cond_200
    const/16 v18, 0x0

    goto :goto_1ff
.end method

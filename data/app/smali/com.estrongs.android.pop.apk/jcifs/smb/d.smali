.class public Ljcifs/smb/d;
.super Ljava/lang/Object;


# static fields
.field static a:Ljcifs/util/e;

.field static final b:Z

.field static final c:J

.field static final d:Z

.field protected static e:Ljcifs/smb/e;


# instance fields
.field protected f:Ljcifs/smb/e;

.field protected g:Ljcifs/smb/e;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    sput-object v0, Ljcifs/smb/d;->a:Ljcifs/util/e;

    const-string v0, "jcifs.smb.client.dfs.strictView"

    invoke-static {v0, v3}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/d;->b:Z

    const-string v0, "jcifs.smb.client.dfs.ttl"

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Ljcifs/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Ljcifs/smb/d;->c:J

    const-string v0, "jcifs.smb.client.dfs.disabled"

    invoke-static {v0, v3}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/d;->d:Z

    new-instance v0, Ljcifs/smb/e;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/smb/e;-><init>(J)V

    sput-object v0, Ljcifs/smb/d;->e:Ljcifs/smb/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/smb/d;->f:Ljcifs/smb/e;

    iput-object v0, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    return-void
.end method


# virtual methods
.method public a(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;
    .registers 10

    const/4 v1, 0x0

    sget-boolean v0, Ljcifs/smb/d;->d:Z

    if-nez v0, :cond_b

    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v2, "?"

    if-ne v0, v2, :cond_d

    :cond_b
    move-object v0, v1

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Ljcifs/smb/d;->f:Ljcifs/smb/e;

    if-eqz v0, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Ljcifs/smb/d;->f:Ljcifs/smb/e;

    iget-wide v4, v0, Ljcifs/smb/e;->a:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1f

    iput-object v1, p0, Ljcifs/smb/d;->f:Ljcifs/smb/e;

    :cond_1f
    iget-object v0, p0, Ljcifs/smb/d;->f:Ljcifs/smb/e;

    if-eqz v0, :cond_28

    iget-object v0, p0, Ljcifs/smb/d;->f:Ljcifs/smb/e;

    iget-object v0, v0, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    goto :goto_c

    :cond_28
    :try_start_28
    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljcifs/b;->a(Ljava/lang/String;Z)Ljcifs/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljcifs/smb/bj;->a(Ljcifs/b;I)Ljcifs/smb/bj;

    move-result-object v0

    new-instance v3, Ljcifs/smb/e;

    sget-wide v4, Ljcifs/smb/d;->c:J

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljcifs/smb/e;-><init>(J)V

    const-string v2, ""

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v4}, Ljcifs/smb/bj;->a(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object v2

    if-eqz v2, :cond_7b

    move-object v0, v2

    :cond_48
    iget-object v4, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v0, v2, :cond_48

    iput-object v3, p0, Ljcifs/smb/d;->f:Ljcifs/smb/e;

    iget-object v0, p0, Ljcifs/smb/d;->f:Ljcifs/smb/e;

    iget-object v0, v0, Ljcifs/smb/e;->b:Ljava/util/HashMap;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_62} :catch_63

    goto :goto_c

    :catch_63
    move-exception v0

    sget-object v2, Ljcifs/smb/d;->a:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_70

    sget-object v2, Ljcifs/smb/d;->a:Ljcifs/util/e;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_70
    sget-boolean v2, Ljcifs/smb/d;->b:Z

    if-eqz v2, :cond_7b

    instance-of v2, v0, Ljcifs/smb/SmbAuthException;

    if-eqz v2, :cond_7b

    check-cast v0, Ljcifs/smb/SmbAuthException;

    throw v0

    :cond_7b
    move-object v0, v1

    goto :goto_c
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .registers 18

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-boolean v1, Ljcifs/smb/d;->d:Z

    if-nez v1, :cond_12

    const-string v1, "IPC$"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_1a2

    move-result v1

    if-eqz v1, :cond_15

    :cond_12
    const/4 v3, 0x0

    :cond_13
    :goto_13
    monitor-exit p0

    return-object v3

    :cond_15
    :try_start_15
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Ljcifs/smb/d;->a(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1b8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    move-object v7, v0

    if-eqz v7, :cond_1b3

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/e;

    if-eqz v1, :cond_1b0

    iget-wide v11, v1, Ljcifs/smb/e;->a:J

    cmp-long v6, v9, v11

    if-lez v6, :cond_1b0

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move-object v8, v1

    :goto_43
    if-nez v8, :cond_c6

    move-object/from16 v0, p4

    invoke-virtual {p0, v3, v0}, Ljcifs/smb/d;->b(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/bj;

    move-result-object v2

    if-nez v2, :cond_4f

    const/4 v3, 0x0

    goto :goto_13

    :cond_4f
    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/d;->a(Ljcifs/smb/bj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v5

    if-eqz v5, :cond_bc

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int v8, v1, v6

    new-instance v1, Ljcifs/smb/e;

    const-wide/16 v11, 0x0

    invoke-direct {v1, v11, v12}, Ljcifs/smb/e;-><init>(J)V

    move-object v6, v5

    :cond_70
    if-nez p3, :cond_7a

    iget-object v11, v1, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    iput-object v11, v6, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    const-string v11, "\\"

    iput-object v11, v6, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    :cond_7a
    iget v11, v6, Ljcifs/smb/DfsReferral;->pathConsumed:I

    sub-int/2addr v11, v8

    iput v11, v6, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v6, v6, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v6, v5, :cond_70

    iget-object v6, v5, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v6, :cond_8e

    iget-object v6, v1, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    iget-object v8, v5, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v1

    move-object v1, v5

    :goto_93
    if-eqz v7, :cond_f3

    const-string v8, "\\"

    iget-object v1, v7, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/DfsReferral;

    if-eqz v1, :cond_ad

    iget-wide v5, v1, Ljcifs/smb/DfsReferral;->expiration:J

    cmp-long v5, v9, v5

    if-lez v5, :cond_ad

    iget-object v1, v7, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_ad
    if-nez v1, :cond_f3

    if-nez v2, :cond_cf

    move-object/from16 v0, p4

    invoke-virtual {p0, v3, v0}, Ljcifs/smb/d;->b(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/bj;

    move-result-object v2

    if-nez v2, :cond_cf

    const/4 v3, 0x0

    goto/16 :goto_13

    :cond_bc
    if-nez p3, :cond_1ac

    sget-object v1, Ljcifs/smb/d;->e:Ljcifs/smb/e;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v8

    move-object v1, v5

    goto :goto_93

    :cond_c6
    sget-object v1, Ljcifs/smb/d;->e:Ljcifs/smb/e;

    if-ne v8, v1, :cond_1a7

    const/4 v1, 0x0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_93

    :cond_cf
    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/d;->a(Ljcifs/smb/bj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_f3

    iget v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    iput v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iput-object v8, v1, Ljcifs/smb/DfsReferral;->link:Ljava/lang/String;

    iget-object v2, v7, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f3
    move-object p1, v3

    move-object v3, v1

    :goto_f5
    if-nez v3, :cond_13

    if-eqz p3, :cond_13

    iget-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    if-eqz v1, :cond_108

    iget-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    iget-wide v1, v1, Ljcifs/smb/e;->a:J

    cmp-long v1, v9, v1

    if-lez v1, :cond_108

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    :cond_108
    iget-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    if-nez v1, :cond_115

    new-instance v1, Ljcifs/smb/e;

    const-wide/16 v5, 0x0

    invoke-direct {v1, v5, v6}, Ljcifs/smb/e;-><init>(J)V

    iput-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    :cond_115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_14f
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    iget-object v1, v1, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_188

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_17a
    :goto_17a
    if-eqz v2, :cond_1a5

    iget-object v2, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    iget-object v2, v2, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/DfsReferral;

    :goto_186
    move-object v3, v1

    goto :goto_15f

    :cond_188
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_17a

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v4, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1a0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C
    :try_end_199
    .catchall {:try_start_15 .. :try_end_199} :catchall_1a2

    move-result v2

    const/16 v6, 0x5c

    if-ne v2, v6, :cond_1a0

    const/4 v2, 0x1

    goto :goto_17a

    :cond_1a0
    const/4 v2, 0x0

    goto :goto_17a

    :catchall_1a2
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1a5
    move-object v1, v3

    goto :goto_186

    :cond_1a7
    move-object v7, v8

    move-object v1, v2

    move-object v2, v5

    goto/16 :goto_93

    :cond_1ac
    move-object v7, v8

    move-object v1, v5

    goto/16 :goto_93

    :cond_1b0
    move-object v8, v1

    goto/16 :goto_43

    :cond_1b3
    move-object v4, p2

    move-object p1, v3

    move-object v3, v2

    goto/16 :goto_f5

    :cond_1b8
    move-object v3, v2

    move-object v4, p2

    goto/16 :goto_f5
.end method

.method public a(Ljcifs/smb/bj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .registers 10

    const/4 v1, 0x0

    sget-boolean v0, Ljcifs/smb/d;->d:Z

    if-eqz v0, :cond_7

    move-object v0, v1

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_37
    const/4 v2, 0x0

    invoke-virtual {p1, p5, v0, v2}, Ljcifs/smb/bj;->a(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3b} :catch_40

    move-result-object v0

    if-nez v0, :cond_6

    :cond_3e
    move-object v0, v1

    goto :goto_6

    :catch_40
    move-exception v0

    sget-object v2, Ljcifs/smb/d;->a:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4d

    sget-object v2, Ljcifs/smb/d;->a:Ljcifs/util/e;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4d
    sget-boolean v2, Ljcifs/smb/d;->b:Z

    if-eqz v2, :cond_3e

    instance-of v2, v0, Ljcifs/smb/SmbAuthException;

    if-eqz v2, :cond_3e

    check-cast v0, Ljcifs/smb/SmbAuthException;

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V
    .registers 10

    const/16 v6, 0x5c

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_4
    sget-boolean v0, Ljcifs/smb/d;->d:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_88

    if-eqz v0, :cond_a

    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    const/16 v0, 0x5c

    const/4 v1, 0x1

    :try_start_d
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/16 v1, 0x5c

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    iget v1, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_33
    if-le v1, v5, :cond_40

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_40

    add-int/lit8 v1, v1, -0x1

    goto :goto_33

    :cond_40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4b

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4b
    iget v1, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    if-eqz v1, :cond_73

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    iget-object v3, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    iget-wide v3, v3, Ljcifs/smb/e;->a:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_73

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    :cond_73
    iget-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    if-nez v1, :cond_80

    new-instance v1, Ljcifs/smb/e;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljcifs/smb/e;-><init>(J)V

    iput-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    :cond_80
    iget-object v1, p0, Ljcifs/smb/d;->g:Ljcifs/smb/e;

    iget-object v1, v1, Ljcifs/smb/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_d .. :try_end_87} :catchall_88

    goto :goto_8

    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Ljcifs/smb/d;->a(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/bj;
    .registers 8

    const/4 v1, 0x0

    sget-boolean v0, Ljcifs/smb/d;->d:Z

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    invoke-static {p1, v0}, Ljcifs/b;->a(Ljava/lang/String;Z)Ljcifs/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljcifs/smb/bj;->a(Ljcifs/b;I)Ljcifs/smb/bj;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v2, v3}, Ljcifs/smb/bj;->a(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_28} :catch_3e

    move-result-object v3

    if-eqz v3, :cond_56

    move-object v2, v3

    :cond_2c
    :try_start_2c
    iget-object v0, v2, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v0}, Ljcifs/b;->a(Ljava/lang/String;)Ljcifs/b;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljcifs/smb/bj;->a(Ljcifs/b;I)Ljcifs/smb/bj;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_36} :catch_38

    move-result-object v0

    goto :goto_6

    :catch_38
    move-exception v0

    :try_start_39
    iget-object v2, v2, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v2, v3, :cond_2c

    throw v0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception v0

    sget-object v2, Ljcifs/smb/d;->a:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4b

    sget-object v2, Ljcifs/smb/d;->a:Ljcifs/util/e;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4b
    sget-boolean v2, Ljcifs/smb/d;->b:Z

    if-eqz v2, :cond_56

    instance-of v2, v0, Ljcifs/smb/SmbAuthException;

    if-eqz v2, :cond_56

    check-cast v0, Ljcifs/smb/SmbAuthException;

    throw v0

    :cond_56
    move-object v0, v1

    goto :goto_6
.end method

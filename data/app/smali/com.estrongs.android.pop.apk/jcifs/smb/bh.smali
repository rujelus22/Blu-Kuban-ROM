.class public final Ljcifs/smb/bh;
.super Ljava/lang/Object;


# static fields
.field static a:[Ljcifs/netbios/g;

.field private static final i:Ljava/lang/String;

.field private static final j:I

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:I


# instance fields
.field b:I

.field c:I

.field d:Ljava/util/Vector;

.field e:Ljcifs/smb/bj;

.field f:Ljcifs/smb/NtlmPasswordAuthentication;

.field g:J

.field h:Ljava/lang/String;

.field private n:Ljcifs/b;

.field private o:I

.field private p:I

.field private q:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-string v0, "jcifs.smb.client.logonShare"

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/bh;->i:Ljava/lang/String;

    const-string v0, "jcifs.netbios.lookupRespLimit"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/bh;->j:I

    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/bh;->k:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/bh;->l:Ljava/lang/String;

    const-string v0, "jcifs.netbios.cachePolicy"

    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Ljcifs/smb/bh;->m:I

    sput-object v2, Ljcifs/smb/bh;->a:[Ljcifs/netbios/g;

    return-void
.end method

.method constructor <init>(Ljcifs/b;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iput-object v0, p0, Ljcifs/smb/bh;->h:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/bh;->n:Ljcifs/b;

    iput p2, p0, Ljcifs/smb/bh;->o:I

    iput-object p3, p0, Ljcifs/smb/bh;->q:Ljava/net/InetAddress;

    iput p4, p0, Ljcifs/smb/bh;->p:I

    iput-object p5, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bh;->d:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/bh;->b:I

    return-void
.end method


# virtual methods
.method declared-synchronized a()Ljcifs/smb/bj;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    if-nez v0, :cond_14

    iget-object v0, p0, Ljcifs/smb/bh;->n:Ljcifs/b;

    iget v1, p0, Ljcifs/smb/bh;->o:I

    iget-object v2, p0, Ljcifs/smb/bh;->q:Ljava/net/InetAddress;

    iget v3, p0, Ljcifs/smb/bh;->p:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljcifs/smb/bj;->a(Ljcifs/b;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/bj;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    :cond_14
    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/bl;
    .registers 6

    monitor-enter p0

    if-nez p1, :cond_5

    :try_start_3
    const-string p1, "IPC$"

    :cond_5
    iget-object v0, p0, Ljcifs/smb/bh;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/bl;

    invoke-virtual {v0, p1, p2}, Ljcifs/smb/bl;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2a

    move-result v2

    if-eqz v2, :cond_b

    :goto_1d
    monitor-exit p0

    return-object v0

    :cond_1f
    :try_start_1f
    new-instance v0, Ljcifs/smb/bl;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/smb/bl;-><init>(Ljcifs/smb/bh;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/bh;->d:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2a

    goto :goto_1d

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljcifs/smb/t;Ljcifs/smb/t;)V
    .registers 10

    invoke-virtual {p0}, Ljcifs/smb/bh;->a()Ljcifs/smb/bj;

    move-result-object v2

    monitor-enter v2

    if-eqz p2, :cond_a

    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p2, Ljcifs/smb/t;->u:Z

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget v1, Ljcifs/smb/bj;->av:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljcifs/smb/bh;->g:J

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/bh;->b(Ljcifs/smb/t;Ljcifs/smb/t;)V

    if-eqz p2, :cond_1f

    iget-boolean v1, p2, Ljcifs/smb/t;->u:Z

    if-eqz v1, :cond_1f

    monitor-exit v2

    :goto_1e
    return-void

    :cond_1f
    instance-of v1, p1, Ljcifs/smb/as;

    if-eqz v1, :cond_52

    move-object v0, p1

    check-cast v0, Ljcifs/smb/as;

    move-object v1, v0

    iget-object v3, p0, Ljcifs/smb/bh;->h:Ljava/lang/String;

    if-eqz v3, :cond_52

    iget-object v3, v1, Ljcifs/smb/as;->b:Ljava/lang/String;

    const-string v4, "\\IPC$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/bh;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\IPC$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljcifs/smb/as;->b:Ljava/lang/String;

    :cond_52
    iget v1, p0, Ljcifs/smb/bh;->c:I

    iput v1, p1, Ljcifs/smb/t;->p:I

    iget-object v1, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v1, p1, Ljcifs/smb/t;->z:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_61

    :try_start_5a
    iget-object v1, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v1, p1, p2}, Ljcifs/smb/bj;->b(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_61
    .catch Ljcifs/smb/SmbException; {:try_start_5a .. :try_end_5f} :catch_64

    :try_start_5f
    monitor-exit v2

    goto :goto_1e

    :catchall_61
    move-exception v1

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_61

    throw v1

    :catch_64
    move-exception v1

    :try_start_65
    instance-of v3, p1, Ljcifs/smb/as;

    if-eqz v3, :cond_6d

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljcifs/smb/bh;->a(Z)V

    :cond_6d
    const/4 v3, 0x0

    iput-object v3, p1, Ljcifs/smb/t;->B:Ljcifs/smb/u;

    throw v1
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_61
.end method

.method a(Z)V
    .registers 6

    invoke-virtual {p0}, Ljcifs/smb/bh;->a()Ljcifs/smb/bj;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget v0, p0, Ljcifs/smb/bh;->b:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    monitor-exit v1

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/smb/bh;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/bh;->h:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/bh;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/bl;

    invoke-virtual {v0, p1}, Ljcifs/smb/bl;->a(Z)V

    goto :goto_18

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    if-nez p1, :cond_48

    :try_start_2d
    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v0, v0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->g:I

    if-eqz v0, :cond_48

    new-instance v0, Ljcifs/smb/ab;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljcifs/smb/ab;-><init>(Ljcifs/smb/t;)V

    iget v2, p0, Ljcifs/smb/bh;->c:I

    iput v2, v0, Ljcifs/smb/ab;->p:I
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_28

    :try_start_3f
    iget-object v2, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljcifs/smb/bj;->b(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_28
    .catch Ljcifs/smb/SmbException; {:try_start_3f .. :try_end_45} :catch_52

    :goto_45
    const/4 v0, 0x0

    :try_start_46
    iput v0, p0, Ljcifs/smb/bh;->c:I

    :cond_48
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/bh;->b:I

    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_28

    goto :goto_b

    :catch_52
    move-exception v0

    goto :goto_45
.end method

.method a(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 3

    iget-object v0, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v0, p1, :cond_c

    iget-object v0, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method b(Ljcifs/smb/t;Ljcifs/smb/t;)V
    .registers 14

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljcifs/smb/bh;->a()Ljcifs/smb/bj;

    move-result-object v7

    monitor-enter v7

    const/4 v0, 0x0

    :try_start_a
    new-array v1, v0, [B

    const/16 v0, 0xa

    :goto_e
    iget v5, p0, Ljcifs/smb/bh;->b:I

    if-eqz v5, :cond_31

    iget v5, p0, Ljcifs/smb/bh;->b:I

    if-eq v5, v8, :cond_1b

    iget v5, p0, Ljcifs/smb/bh;->b:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1d

    :cond_1b
    monitor-exit v7
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2e

    :goto_1c
    return-void

    :cond_1d
    :try_start_1d
    iget-object v5, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_2e
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_e

    :catch_23
    move-exception v0

    :try_start_24
    new-instance v1, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_2e
    move-exception v0

    monitor-exit v7
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    const/4 v5, 0x1

    :try_start_32
    iput v5, p0, Ljcifs/smb/bh;->b:I
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_2e

    :try_start_34
    iget-object v5, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v5}, Ljcifs/smb/bj;->b()V

    iget-object v5, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v5, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v5, Ljcifs/util/e;->a:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_6e

    iget-object v5, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v5, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sessionSetup: accountName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v8, v8, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",primaryDomain="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v8, v8, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_6e
    const/4 v5, 0x0

    iput v5, p0, Ljcifs/smb/bh;->c:I

    move v5, v0

    move-object v6, v1

    move-object v1, v4

    :goto_74
    sparse-switch v5, :sswitch_data_21e

    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected session setup state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_90
    .catchall {:try_start_34 .. :try_end_90} :catchall_99
    .catch Ljcifs/smb/SmbException; {:try_start_34 .. :try_end_90} :catch_90

    :catch_90
    move-exception v0

    const/4 v1, 0x1

    :try_start_92
    invoke-virtual {p0, v1}, Ljcifs/smb/bh;->a(Z)V

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/smb/bh;->b:I

    throw v0
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception v0

    :try_start_9a
    iget-object v1, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_2e

    :sswitch_a0
    :try_start_a0
    iget-object v0, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    sget-object v5, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v0, v5, :cond_bf

    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    const/high16 v5, -0x8000

    invoke-virtual {v0, v5}, Ljcifs/smb/bj;->a(I)Z
    :try_end_ad
    .catchall {:try_start_a0 .. :try_end_ad} :catchall_99
    .catch Ljcifs/smb/SmbException; {:try_start_a0 .. :try_end_ad} :catch_90

    move-result v0

    if-eqz v0, :cond_bf

    const/16 v5, 0x14

    move v0, v5

    move-object v5, v1

    move-object v1, v6

    :goto_b5
    if-nez v0, :cond_218

    :try_start_b7
    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_2e

    goto/16 :goto_1c

    :cond_bf
    :try_start_bf
    new-instance v5, Ljcifs/smb/ao;

    iget-object v0, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v5, p0, p1, v0}, Ljcifs/smb/ao;-><init>(Ljcifs/smb/bh;Ljcifs/smb/t;Ljava/lang/Object;)V

    new-instance v8, Ljcifs/smb/ap;

    invoke-direct {v8, p2}, Ljcifs/smb/ap;-><init>(Ljcifs/smb/t;)V

    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v9, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v9}, Ljcifs/smb/bj;->b(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v0

    if-eqz v0, :cond_f5

    iget-object v0, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_126

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    const-string v9, ""

    if-eq v0, v9, :cond_126

    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v9, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v9}, Ljcifs/smb/bj;->a(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/bh;

    move-result-object v0

    sget-object v9, Ljcifs/smb/bh;->i:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljcifs/smb/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/bl;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljcifs/smb/bl;->b(Ljcifs/smb/t;Ljcifs/smb/t;)V

    :cond_f5
    :goto_f5
    iget-object v0, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v0, v5, Ljcifs/smb/ao;->z:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_f9
    .catchall {:try_start_bf .. :try_end_f9} :catchall_99
    .catch Ljcifs/smb/SmbException; {:try_start_bf .. :try_end_f9} :catch_90

    :try_start_f9
    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v0, v5, v8}, Ljcifs/smb/bj;->b(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_fe
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_99
    .catch Ljcifs/smb/SmbAuthException; {:try_start_f9 .. :try_end_fe} :catch_13b
    .catch Ljcifs/smb/SmbException; {:try_start_f9 .. :try_end_fe} :catch_210

    move-object v0, v4

    :goto_ff
    :try_start_ff
    iget-boolean v4, v8, Ljcifs/smb/ap;->b:Z

    if-eqz v4, :cond_13d

    const-string v4, "GUEST"

    iget-object v9, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v9, v9, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13d

    iget-object v4, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v4, v4, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v4, v4, Ljcifs/smb/bk;->g:I

    if-eqz v4, :cond_13d

    iget-object v4, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    sget-object v9, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v4, v9, :cond_13d

    new-instance v0, Ljcifs/smb/SmbAuthException;

    const v1, -0x3fffff93

    invoke-direct {v0, v1}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v0

    :cond_126
    iget-object v0, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v9, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v9, v9, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget-object v9, v9, Ljcifs/smb/bk;->p:[B

    invoke-virtual {v0, v9}, Ljcifs/smb/NtlmPasswordAuthentication;->getSigningKey([B)[B

    move-result-object v0

    new-instance v9, Ljcifs/smb/u;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Ljcifs/smb/u;-><init>([BZ)V

    iput-object v9, v5, Ljcifs/smb/ao;->B:Ljcifs/smb/u;

    goto :goto_f5

    :catch_13b
    move-exception v0

    throw v0

    :cond_13d
    if-eqz v0, :cond_140

    throw v0

    :cond_140
    iget v4, v8, Ljcifs/smb/ap;->p:I

    iput v4, p0, Ljcifs/smb/bh;->c:I

    iget-object v4, v5, Ljcifs/smb/ao;->B:Ljcifs/smb/u;

    if-eqz v4, :cond_14e

    iget-object v4, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v5, v5, Ljcifs/smb/ao;->B:Ljcifs/smb/u;

    iput-object v5, v4, Ljcifs/smb/bj;->q:Ljcifs/smb/u;

    :cond_14e
    const/4 v4, 0x2

    iput v4, p0, Ljcifs/smb/bh;->b:I

    move-object v4, v0

    move-object v5, v1

    move v0, v3

    move-object v1, v6

    goto/16 :goto_b5

    :sswitch_157
    if-nez v1, :cond_16a

    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v0, v0, Ljcifs/smb/bj;->t:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18a

    move v1, v2

    :goto_162
    new-instance v0, Ljcifs/smb/s;

    iget-object v8, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v0, v8, v1}, Ljcifs/smb/s;-><init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V

    move-object v1, v0

    :cond_16a
    sget-object v0, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v8, 0x4

    if-lt v0, v8, :cond_176

    sget-object v0, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    :cond_176
    invoke-virtual {v1}, Ljcifs/smb/s;->a()Z

    move-result v0

    if-eqz v0, :cond_18c

    invoke-virtual {v1}, Ljcifs/smb/s;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/bh;->h:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/bh;->b:I
    :try_end_185
    .catchall {:try_start_ff .. :try_end_185} :catchall_99
    .catch Ljcifs/smb/SmbException; {:try_start_ff .. :try_end_185} :catch_90

    move v0, v3

    move-object v5, v1

    move-object v1, v6

    goto/16 :goto_b5

    :cond_18a
    move v1, v3

    goto :goto_162

    :cond_18c
    const/4 v0, 0x0

    :try_start_18d
    array-length v8, v6

    invoke-virtual {v1, v6, v0, v8}, Ljcifs/smb/s;->a([BII)[B
    :try_end_191
    .catchall {:try_start_18d .. :try_end_191} :catchall_99
    .catch Ljcifs/smb/SmbException; {:try_start_18d .. :try_end_191} :catch_1dd

    move-result-object v6

    if-eqz v6, :cond_213

    :try_start_194
    new-instance v8, Ljcifs/smb/ao;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0, v6}, Ljcifs/smb/ao;-><init>(Ljcifs/smb/bh;Ljcifs/smb/t;Ljava/lang/Object;)V

    new-instance v6, Ljcifs/smb/ap;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljcifs/smb/ap;-><init>(Ljcifs/smb/t;)V

    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v9, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v9}, Ljcifs/smb/bj;->b(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    invoke-virtual {v1}, Ljcifs/smb/s;->b()[B

    move-result-object v0

    if-eqz v0, :cond_1b8

    new-instance v9, Ljcifs/smb/u;

    const/4 v10, 0x1

    invoke-direct {v9, v0, v10}, Ljcifs/smb/u;-><init>([BZ)V

    iput-object v9, v8, Ljcifs/smb/ao;->B:Ljcifs/smb/u;

    :cond_1b8
    iget v0, p0, Ljcifs/smb/bh;->c:I

    iput v0, v8, Ljcifs/smb/ao;->p:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/bh;->c:I
    :try_end_1bf
    .catchall {:try_start_194 .. :try_end_1bf} :catchall_99
    .catch Ljcifs/smb/SmbException; {:try_start_194 .. :try_end_1bf} :catch_90

    :try_start_1bf
    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v0, v8, v6}, Ljcifs/smb/bj;->b(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_1c4
    .catchall {:try_start_1bf .. :try_end_1c4} :catchall_99
    .catch Ljcifs/smb/SmbAuthException; {:try_start_1bf .. :try_end_1c4} :catch_1e8
    .catch Ljcifs/smb/SmbException; {:try_start_1bf .. :try_end_1c4} :catch_1ea

    :goto_1c4
    :try_start_1c4
    iget-boolean v0, v6, Ljcifs/smb/ap;->b:Z

    if-eqz v0, :cond_1f6

    const-string v0, "GUEST"

    iget-object v9, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v9, v9, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f6

    new-instance v0, Ljcifs/smb/SmbAuthException;

    const v1, -0x3fffff93

    invoke-direct {v0, v1}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v0
    :try_end_1dd
    .catchall {:try_start_1c4 .. :try_end_1dd} :catchall_99
    .catch Ljcifs/smb/SmbException; {:try_start_1c4 .. :try_end_1dd} :catch_90

    :catch_1dd
    move-exception v0

    :try_start_1de
    iget-object v1, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljcifs/smb/bj;->b(Z)V
    :try_end_1e4
    .catchall {:try_start_1de .. :try_end_1e4} :catchall_99
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e4} :catch_20e
    .catch Ljcifs/smb/SmbException; {:try_start_1de .. :try_end_1e4} :catch_90

    :goto_1e4
    const/4 v1, 0x0

    :try_start_1e5
    iput v1, p0, Ljcifs/smb/bh;->c:I

    throw v0

    :catch_1e8
    move-exception v0

    throw v0
    :try_end_1ea
    .catchall {:try_start_1e5 .. :try_end_1ea} :catchall_99
    .catch Ljcifs/smb/SmbException; {:try_start_1e5 .. :try_end_1ea} :catch_90

    :catch_1ea
    move-exception v0

    :try_start_1eb
    iget-object v4, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljcifs/smb/bj;->b(Z)V
    :try_end_1f1
    .catchall {:try_start_1eb .. :try_end_1f1} :catchall_99
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1f1} :catch_1f3
    .catch Ljcifs/smb/SmbException; {:try_start_1eb .. :try_end_1f1} :catch_90

    move-object v4, v0

    goto :goto_1c4

    :catch_1f3
    move-exception v4

    move-object v4, v0

    goto :goto_1c4

    :cond_1f6
    if-eqz v4, :cond_1f9

    :try_start_1f8
    throw v4

    :cond_1f9
    iget v0, v6, Ljcifs/smb/ap;->p:I

    iput v0, p0, Ljcifs/smb/bh;->c:I

    iget-object v0, v8, Ljcifs/smb/ao;->B:Ljcifs/smb/u;

    if-eqz v0, :cond_207

    iget-object v0, p0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v8, v8, Ljcifs/smb/ao;->B:Ljcifs/smb/u;

    iput-object v8, v0, Ljcifs/smb/bj;->q:Ljcifs/smb/u;

    :cond_207
    iget-object v6, v6, Ljcifs/smb/ap;->c:[B
    :try_end_209
    .catchall {:try_start_1f8 .. :try_end_209} :catchall_99
    .catch Ljcifs/smb/SmbException; {:try_start_1f8 .. :try_end_209} :catch_90

    move v0, v5

    move-object v5, v1

    move-object v1, v6

    goto/16 :goto_b5

    :catch_20e
    move-exception v1

    goto :goto_1e4

    :catch_210
    move-exception v0

    goto/16 :goto_ff

    :cond_213
    move v0, v5

    move-object v5, v1

    move-object v1, v6

    goto/16 :goto_b5

    :cond_218
    move-object v6, v1

    move-object v1, v5

    move v5, v0

    goto/16 :goto_74

    nop

    :sswitch_data_21e
    .sparse-switch
        0xa -> :sswitch_a0
        0x14 -> :sswitch_157
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmbSession[accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",primaryDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/bh;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/bh;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

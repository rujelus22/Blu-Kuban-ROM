.class Ljcifs/smb/bl;
.super Ljava/lang/Object;


# static fields
.field private static j:I


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljcifs/smb/bh;

.field g:Z

.field h:Z

.field i:I


# direct methods
.method constructor <init>(Ljcifs/smb/bh;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "?????"

    iput-object v0, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/bl;->c:Ljava/lang/String;

    if-eqz p3, :cond_1b

    const-string v0, "??"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    iput-object p3, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    :cond_1b
    iget-object v0, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/bl;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/bl;->a:I

    return-void
.end method


# virtual methods
.method a(Ljcifs/smb/t;Ljcifs/smb/t;)V
    .registers 8

    iget-object v1, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    invoke-virtual {v1}, Ljcifs/smb/bh;->a()Ljcifs/smb/bj;

    move-result-object v2

    monitor-enter v2

    if-eqz p2, :cond_c

    const/4 v1, 0x0

    :try_start_a
    iput-boolean v1, p2, Ljcifs/smb/t;->u:Z

    :cond_c
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/bl;->b(Ljcifs/smb/t;Ljcifs/smb/t;)V

    if-eqz p1, :cond_17

    if-eqz p2, :cond_19

    iget-boolean v1, p2, Ljcifs/smb/t;->u:Z

    if-eqz v1, :cond_19

    :cond_17
    monitor-exit v2

    :goto_18
    return-void

    :cond_19
    iget-object v1, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    const-string v3, "A:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    iget-byte v1, p1, Ljcifs/smb/t;->g:B

    sparse-switch v1, :sswitch_data_e4

    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid operation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_4d

    throw v1

    :sswitch_50
    :try_start_50
    move-object v0, p1

    check-cast v0, Ljcifs/smb/aq;

    move-object v1, v0

    iget-byte v1, v1, Ljcifs/smb/aq;->S:B

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_106

    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid operation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7c
    :sswitch_7c
    iget v1, p0, Ljcifs/smb/bl;->b:I

    iput v1, p1, Ljcifs/smb/t;->n:I

    iget-boolean v1, p0, Ljcifs/smb/bl;->g:Z

    if-eqz v1, :cond_cd

    iget-object v1, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    const-string v3, "IPC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    iget-object v1, p1, Ljcifs/smb/t;->A:Ljava/lang/String;

    if-eqz v1, :cond_cd

    iget-object v1, p1, Ljcifs/smb/t;->A:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_cd

    const/16 v1, 0x1000

    iput v1, p1, Ljcifs/smb/t;->m:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    invoke-virtual {v3}, Ljcifs/smb/bh;->a()Ljcifs/smb/bj;

    move-result-object v3

    iget-object v3, v3, Ljcifs/smb/bj;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljcifs/smb/bl;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Ljcifs/smb/t;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Ljcifs/smb/t;->A:Ljava/lang/String;
    :try_end_cd
    .catchall {:try_start_50 .. :try_end_cd} :catchall_4d

    :cond_cd
    :try_start_cd
    iget-object v1, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    invoke-virtual {v1, p1, p2}, Ljcifs/smb/bh;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_d2
    .catchall {:try_start_cd .. :try_end_d2} :catchall_4d
    .catch Ljcifs/smb/SmbException; {:try_start_cd .. :try_end_d2} :catch_d5

    :try_start_d2
    monitor-exit v2

    goto/16 :goto_18

    :catch_d5
    move-exception v1

    invoke-virtual {v1}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v3

    const v4, -0x3fffff37

    if-ne v3, v4, :cond_e3

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljcifs/smb/bl;->a(Z)V

    :cond_e3
    throw v1
    :try_end_e4
    .catchall {:try_start_d2 .. :try_end_e4} :catchall_4d

    :sswitch_data_e4
    .sparse-switch
        -0x5e -> :sswitch_7c
        0x4 -> :sswitch_7c
        0x25 -> :sswitch_50
        0x2d -> :sswitch_7c
        0x2e -> :sswitch_7c
        0x2f -> :sswitch_7c
        0x32 -> :sswitch_50
        0x71 -> :sswitch_7c
    .end sparse-switch

    :sswitch_data_106
    .sparse-switch
        0x0 -> :sswitch_7c
        0x10 -> :sswitch_7c
        0x23 -> :sswitch_7c
        0x26 -> :sswitch_7c
        0x53 -> :sswitch_7c
        0x54 -> :sswitch_7c
        0x68 -> :sswitch_7c
        0xd7 -> :sswitch_7c
    .end sparse-switch
.end method

.method a(Z)V
    .registers 6

    iget-object v0, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    invoke-virtual {v0}, Ljcifs/smb/bh;->a()Ljcifs/smb/bj;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget v0, p0, Ljcifs/smb/bl;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    monitor-exit v1

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/smb/bl;->a:I

    if-nez p1, :cond_20

    iget v0, p0, Ljcifs/smb/bl;->b:I
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_32

    if-eqz v0, :cond_20

    :try_start_17
    new-instance v0, Ljcifs/smb/au;

    invoke-direct {v0}, Ljcifs/smb/au;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/bl;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_32
    .catch Ljcifs/smb/SmbException; {:try_start_17 .. :try_end_20} :catch_35

    :cond_20
    :goto_20
    const/4 v0, 0x0

    :try_start_21
    iput-boolean v0, p0, Ljcifs/smb/bl;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/bl;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/bl;->a:I

    iget-object v0, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_d

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_32

    throw v0

    :catch_35
    move-exception v0

    :try_start_36
    iget-object v2, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_20

    iget-object v2, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    invoke-virtual {v0, v2}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_32

    goto :goto_20
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Ljcifs/smb/bl;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_1a

    const-string v0, "??"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method b(Ljcifs/smb/t;Ljcifs/smb/t;)V
    .registers 9

    const/4 v3, 0x2

    iget-object v0, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    invoke-virtual {v0}, Ljcifs/smb/bh;->a()Ljcifs/smb/bj;

    move-result-object v1

    monitor-enter v1

    :goto_8
    :try_start_8
    iget v0, p0, Ljcifs/smb/bl;->a:I

    if-eqz v0, :cond_2d

    iget v0, p0, Ljcifs/smb/bl;->a:I

    if-eq v0, v3, :cond_15

    iget v0, p0, Ljcifs/smb/bl;->a:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_2a

    :goto_16
    return-void

    :cond_17
    :try_start_17
    iget-object v0, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_8

    :catch_1f
    move-exception v0

    :try_start_20
    new-instance v2, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    const/4 v0, 0x1

    :try_start_2e
    iput v0, p0, Ljcifs/smb/bl;->a:I
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_2a

    :try_start_30
    iget-object v0, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    invoke-virtual {v0}, Ljcifs/smb/bj;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v2, v2, Ljcifs/smb/bj;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/bl;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/bl;->e:Ljava/lang/String;

    iput-object v2, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_93

    iget-object v2, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "treeConnect: unc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_93
    new-instance v2, Ljcifs/smb/at;

    invoke-direct {v2, p2}, Ljcifs/smb/at;-><init>(Ljcifs/smb/t;)V

    new-instance v3, Ljcifs/smb/as;

    iget-object v4, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v5, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v5, p1}, Ljcifs/smb/as;-><init>(Ljcifs/smb/bh;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/t;)V

    iget-object v0, p0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    invoke-virtual {v0, v3, v2}, Ljcifs/smb/bh;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget v0, v2, Ljcifs/smb/at;->n:I

    iput v0, p0, Ljcifs/smb/bl;->b:I

    iget-object v0, v2, Ljcifs/smb/at;->d:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    iget-boolean v0, v2, Ljcifs/smb/at;->c:Z

    iput-boolean v0, p0, Ljcifs/smb/bl;->g:Z

    sget v0, Ljcifs/smb/bl;->j:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Ljcifs/smb/bl;->j:I

    iput v0, p0, Ljcifs/smb/bl;->i:I

    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/bl;->a:I
    :try_end_bd
    .catchall {:try_start_30 .. :try_end_bd} :catchall_2a
    .catch Ljcifs/smb/SmbException; {:try_start_30 .. :try_end_bd} :catch_c0

    :try_start_bd
    monitor-exit v1

    goto/16 :goto_16

    :catch_c0
    move-exception v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljcifs/smb/bl;->a(Z)V

    const/4 v2, 0x0

    iput v2, p0, Ljcifs/smb/bl;->a:I

    throw v0
    :try_end_c9
    .catchall {:try_start_bd .. :try_end_c9} :catchall_2a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljcifs/smb/bl;

    if-eqz v0, :cond_f

    check-cast p1, Ljcifs/smb/bl;

    iget-object v0, p1, Ljcifs/smb/bl;->c:Ljava/lang/String;

    iget-object v1, p1, Ljcifs/smb/bl;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/bl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmbTree[share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/bl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/bl;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",inDfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljcifs/smb/bl;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",inDomainDfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljcifs/smb/bl;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/bl;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

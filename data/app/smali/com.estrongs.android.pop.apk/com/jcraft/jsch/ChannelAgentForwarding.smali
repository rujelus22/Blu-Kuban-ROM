.class Lcom/jcraft/jsch/ChannelAgentForwarding;
.super Lcom/jcraft/jsch/Channel;


# instance fields
.field private final A:I

.field private final B:I

.field private C:Lcom/jcraft/jsch/Buffer;

.field private D:Lcom/jcraft/jsch/Buffer;

.field private E:Lcom/jcraft/jsch/Packet;

.field private F:Lcom/jcraft/jsch/Buffer;

.field t:Z

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method constructor <init>()V
    .registers 5

    const/high16 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->u:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->w:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->x:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->z:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->A:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:I

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->t:Z

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:Lcom/jcraft/jsch/Packet;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelAgentForwarding;->c(I)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelAgentForwarding;->d(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->e(I)V

    const-string v0, "auth-agent@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->d:[B

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->o:Z

    return-void
.end method

.method private a([B)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->c:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    :try_start_20
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_2d

    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    goto :goto_2c
.end method


# virtual methods
.method a([BII)V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_18

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->i:I

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:Lcom/jcraft/jsch/Packet;

    :cond_18
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v3, p3

    if-ge v0, v3, :cond_40

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->d:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v4, v4

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iput-object v0, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    :cond_40
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v3

    if-le v0, v3, :cond_5c

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->d:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->d:I

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v0

    :try_start_62
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->l()Lcom/jcraft/jsch/Session;
    :try_end_65
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_62 .. :try_end_65} :catch_9c

    move-result-object v3

    iget-object v4, v3, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    iget-object v4, v4, Lcom/jcraft/jsch/JSch;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Session;->c()Lcom/jcraft/jsch/UserInfo;

    move-result-object v3

    const/16 v5, 0xb

    if-ne v0, v5, :cond_e6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    monitor-enter v4

    move v3, v2

    move v1, v2

    :goto_81
    :try_start_81
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_a7

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B
    :try_end_92
    .catchall {:try_start_81 .. :try_end_92} :catchall_d0

    move-result-object v0

    if-eqz v0, :cond_19d

    add-int/lit8 v0, v1, 0x1

    :goto_97
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_81

    :catch_9c
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a7
    :try_start_a7
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    :goto_ac
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_d3

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v0

    if-nez v0, :cond_c3

    :goto_c0
    add-int/lit8 v2, v2, 0x1

    goto :goto_ac

    :cond_c3
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    goto :goto_c0

    :catchall_d0
    move-exception v0

    monitor-exit v4
    :try_end_d2
    .catchall {:try_start_a7 .. :try_end_d2} :catchall_d0

    throw v0

    :cond_d3
    :try_start_d3
    monitor-exit v4
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->a([B)V

    goto/16 :goto_5b

    :cond_e6
    const/16 v5, 0xd

    if-ne v0, v5, :cond_5b

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    monitor-enter v4

    :goto_fc
    :try_start_fc
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_19b

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v7

    if-nez v7, :cond_114

    :cond_110
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_fc

    :cond_114
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v7

    if-eqz v7, :cond_110

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v7

    if-eqz v7, :cond_149

    if-eqz v3, :cond_110

    :cond_126
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v7

    if-eqz v7, :cond_149

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Passphrase for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/jcraft/jsch/UserInfo;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_176

    :cond_149
    :goto_149
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v7

    if-nez v7, :cond_110

    :goto_14f
    monitor-exit v4
    :try_end_150
    .catchall {:try_start_fc .. :try_end_150} :catchall_187

    if-eqz v0, :cond_199

    invoke-interface {v0, v6}, Lcom/jcraft/jsch/Identity;->b([B)[B

    move-result-object v0

    :goto_156
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()V

    if-nez v0, :cond_18a

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    :goto_164
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->a([B)V

    goto/16 :goto_5b

    :cond_176
    :try_start_176
    invoke-interface {v3}, Lcom/jcraft/jsch/UserInfo;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_149

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B
    :try_end_17f
    .catchall {:try_start_176 .. :try_end_17f} :catchall_187

    move-result-object v7

    :try_start_180
    invoke-interface {v0, v7}, Lcom/jcraft/jsch/Identity;->a([B)Z
    :try_end_183
    .catchall {:try_start_180 .. :try_end_183} :catchall_187
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_180 .. :try_end_183} :catch_197

    move-result v7

    if-eqz v7, :cond_126

    goto :goto_149

    :catchall_187
    move-exception v0

    :try_start_188
    monitor-exit v4
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_187

    throw v0

    :cond_18a
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    goto :goto_164

    :catch_197
    move-exception v7

    goto :goto_149

    :cond_199
    move-object v0, v1

    goto :goto_156

    :cond_19b
    move-object v0, v1

    goto :goto_14f

    :cond_19d
    move v0, v1

    goto/16 :goto_97
.end method

.method public run()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->m()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->n:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->j()V

    goto :goto_3
.end method

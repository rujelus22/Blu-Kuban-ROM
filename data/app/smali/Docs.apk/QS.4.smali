.class final LQS;
.super Ljava/lang/Object;
.source "FileContentInstance.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private a:I

.field private a:LQV;

.field private final a:LQZ;

.field private final a:LXP;

.field private final a:Ljava/io/File;

.field private final a:LkS;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, LQS;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, LQS;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(LXP;LQZ;LkS;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, LQS;->a:I

    .line 94
    sget-object v0, LQV;->c:LQV;

    iput-object v0, p0, LQS;->a:LQV;

    .line 102
    iput-object p2, p0, LQS;->a:LQZ;

    .line 103
    iput-object p1, p0, LQS;->a:LXP;

    .line 104
    iput-object p3, p0, LQS;->a:LkS;

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, LkS;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LQS;->a:Ljava/io/File;

    .line 106
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, LQS;->a:LQV;

    sget-object v1, LQV;->d:LQV;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, LafQ;->b(Z)V

    .line 192
    iget-object v0, p0, LQS;->a:LkS;

    invoke-virtual {v0}, LkS;->c()J

    move-result-wide v0

    return-wide v0

    .line 191
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a()LQV;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, LQS;->a:LQV;

    return-object v0
.end method

.method public a()Ljava/io/File;
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, LQS;->a:LQV;

    sget-object v1, LQV;->a:LQV;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, LQS;->a:LQV;

    sget-object v1, LQV;->b:LQV;

    if-ne v0, v1, :cond_13

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, LafQ;->b(Z)V

    .line 169
    iget-object v0, p0, LQS;->a:Ljava/io/File;

    return-object v0

    .line 168
    :cond_13
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, LQS;->a:LQV;

    sget-object v1, LQV;->d:LQV;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, LafQ;->b(Z)V

    .line 184
    iget-object v0, p0, LQS;->a:LkS;

    invoke-virtual {v0}, LkS;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a()Ljavax/crypto/SecretKey;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, LQS;->a:LkS;

    invoke-virtual {v0}, LkS;->a()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method a()LkS;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, LQS;->a:LkS;

    return-object v0
.end method

.method public declared-synchronized a()V
    .registers 5

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LQS;->a:LQV;

    sget-object v1, LQV;->c:LQV;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, LQS;->a:LQV;

    sget-object v1, LQV;->a:LQV;

    if-ne v0, v1, :cond_47

    :cond_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, LafQ;->b(Z)V

    .line 114
    sget-object v0, LQV;->a:LQV;

    iput-object v0, p0, LQS;->a:LQV;

    .line 115
    iget v0, p0, LQS;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LQS;->a:I

    .line 116
    const-string v0, "FileContentInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockForReading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LQS;->a:LkS;

    invoke-virtual {v2}, LkS;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " readers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LQS;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_49

    .line 117
    monitor-exit p0

    return-void

    .line 112
    :cond_47
    const/4 v0, 0x0

    goto :goto_e

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, LQS;->a:LXP;

    iget-object v1, p0, LQS;->a:Ljava/io/File;

    invoke-interface {v0, v1}, LXP;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, LQS;->a:LQZ;

    iget-object v1, p0, LQS;->a:Ljava/io/File;

    invoke-interface {v0, v1}, LQZ;->a(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized b()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 123
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, LQS;->a:LQV;

    sget-object v3, LQV;->c:LQV;

    if-ne v2, v3, :cond_1e

    move v2, v0

    :goto_a
    invoke-static {v2}, LafQ;->b(Z)V

    .line 124
    iget-object v2, p0, LQS;->a:LQZ;

    invoke-interface {v2, p0}, LQZ;->a(LQS;)I

    move-result v2

    if-gt v2, v0, :cond_20

    :goto_15
    invoke-static {v0}, LafQ;->b(Z)V

    .line 125
    sget-object v0, LQV;->b:LQV;

    iput-object v0, p0, LQS;->a:LQV;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 126
    monitor-exit p0

    return-void

    :cond_1e
    move v2, v1

    .line 123
    goto :goto_a

    :cond_20
    move v0, v1

    .line 124
    goto :goto_15

    .line 123
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 5

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    sget-object v0, LQT;->a:[I

    iget-object v1, p0, LQS;->a:LQV;

    invoke-virtual {v1}, LQV;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_64

    .line 142
    sget-boolean v0, LQS;->a:Z

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_18

    .line 132
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :pswitch_1b
    :try_start_1b
    iget v0, p0, LQS;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LQS;->a:I

    if-nez v0, :cond_27

    .line 135
    sget-object v0, LQV;->c:LQV;

    iput-object v0, p0, LQS;->a:LQV;

    .line 145
    :cond_27
    :goto_27
    const-string v0, "FileContentInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LQS;->a:LkS;

    invoke-virtual {v2}, LkS;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LQS;->a:LQV;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " readers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LQS;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_1b .. :try_end_5d} :catchall_18

    .line 147
    monitor-exit p0

    return-void

    .line 139
    :pswitch_5f
    :try_start_5f
    sget-object v0, LQV;->c:LQV;

    iput-object v0, p0, LQS;->a:LQV;
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_18

    goto :goto_27

    .line 132
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_5f
    .end packed-switch
.end method

.method declared-synchronized d()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, LQS;->a:LQZ;

    invoke-interface {v2, p0}, LQZ;->a(LQS;)I

    move-result v2

    if-nez v2, :cond_51

    move v2, v1

    :goto_c
    invoke-static {v2}, LafQ;->b(Z)V

    .line 155
    iget-object v2, p0, LQS;->a:LQV;

    sget-object v3, LQV;->c:LQV;

    if-eq v2, v3, :cond_1b

    iget-object v2, p0, LQS;->a:LQV;

    sget-object v3, LQV;->b:LQV;

    if-ne v2, v3, :cond_1c

    :cond_1b
    move v0, v1

    :cond_1c
    invoke-static {v0}, LafQ;->b(Z)V

    .line 156
    const-string v0, "FileContentInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LQS;->a:LkS;

    invoke-virtual {v2}, LkS;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v0, LQV;->d:LQV;

    iput-object v0, p0, LQS;->a:LQV;

    .line 160
    iget-object v0, p0, LQS;->a:LQZ;

    iget-object v1, p0, LQS;->a:Ljava/io/File;

    invoke-interface {v0, v1}, LQZ;->a(Ljava/io/File;)Z

    .line 161
    iget-object v0, p0, LQS;->a:LQZ;

    iget-object v1, p0, LQS;->a:LkS;

    invoke-interface {v0, v1}, LQZ;->b(LkS;)V
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_53

    .line 162
    monitor-exit p0

    return-void

    :cond_51
    move v2, v0

    .line 154
    goto :goto_c

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 225
    const-string v0, "FileContentInstance[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LQS;->a:LkS;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final enum Lcom/google/googlenav/friend/aB;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/friend/aB;

.field private static final synthetic c:[Lcom/google/googlenav/friend/aB;


# instance fields
.field private b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/googlenav/friend/aB;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/aB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/aB;->a:Lcom/google/googlenav/friend/aB;

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/friend/aB;

    sget-object v1, Lcom/google/googlenav/friend/aB;->a:Lcom/google/googlenav/friend/aB;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/googlenav/friend/aB;->c:[Lcom/google/googlenav/friend/aB;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized a()V
    .registers 3

    .prologue
    .line 163
    const-class v1, Lcom/google/googlenav/friend/aB;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/friend/aB;->a:Lcom/google/googlenav/friend/aB;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 164
    monitor-exit v1

    return-void

    .line 163
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(I)V
    .registers 5
    .parameter

    .prologue
    .line 56
    const-class v1, Lcom/google/googlenav/friend/aB;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/googlenav/friend/aB;->e()Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v2, Lcom/google/googlenav/friend/aB;->a:Lcom/google/googlenav/friend/aB;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lcom/google/googlenav/friend/aB;->a(Ljava/lang/String;IZ)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 58
    monitor-exit v1

    return-void

    .line 56
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(IZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-static {}, Lcom/google/googlenav/friend/aB;->e()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 122
    :cond_a
    :goto_a
    return-void

    .line 113
    :cond_b
    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/friend/aB;->b(Ljava/lang/String;I)I

    move-result v0

    .line 114
    if-ltz v0, :cond_a

    .line 115
    iget-object v1, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 116
    if-eqz p2, :cond_21

    .line 117
    const-string v0, "OPT_IN_HISTORY"

    iget-object v1, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, LaT/d;->c(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_a

    .line 119
    :cond_21
    const-string v0, "OPT_IN_HISTORY"

    iget-object v1, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, LaT/d;->b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_a
.end method

.method private a(Ljava/lang/String;IZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 91
    :cond_7
    :goto_7
    return-void

    .line 74
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/friend/aB;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 83
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 84
    if-eqz p3, :cond_25

    .line 86
    const-string v0, "OPT_IN_HISTORY"

    iget-object v1, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, LaT/d;->c(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_7

    .line 89
    :cond_25
    const-string v0, "OPT_IN_HISTORY"

    iget-object v1, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, LaT/d;->b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_7
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/friend/aB;->b(Ljava/lang/String;I)I

    move-result v0

    .line 51
    const/4 v1, -0x1

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private b(Ljava/lang/String;I)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 127
    invoke-direct {p0}, Lcom/google/googlenav/friend/aB;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 131
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_28

    .line 132
    iget-object v2, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 136
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    if-ne v2, p2, :cond_25

    .line 142
    :goto_24
    return v0

    .line 131
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 142
    :cond_28
    const/4 v0, -0x1

    goto :goto_24
.end method

.method public static final declared-synchronized b()V
    .registers 3

    .prologue
    .line 177
    const-class v1, Lcom/google/googlenav/friend/aB;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/friend/aB;->a:Lcom/google/googlenav/friend/aB;

    invoke-direct {v0}, Lcom/google/googlenav/friend/aB;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->clear()V

    .line 179
    const-string v2, "OPT_IN_HISTORY"

    invoke-static {v2, v0}, LaT/d;->c(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 180
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 181
    monitor-exit v1

    return-void

    .line 177
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(I)V
    .registers 4
    .parameter

    .prologue
    .line 100
    const-class v1, Lcom/google/googlenav/friend/aB;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/friend/aB;->a:Lcom/google/googlenav/friend/aB;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/friend/aB;->a(IZ)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 101
    monitor-exit v1

    return-void

    .line 100
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized c()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 189
    const-class v3, Lcom/google/googlenav/friend/aB;

    monitor-enter v3

    :try_start_5
    sget-object v2, Lcom/google/googlenav/friend/aB;->a:Lcom/google/googlenav/friend/aB;

    invoke-direct {v2}, Lcom/google/googlenav/friend/aB;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    move v2, v0

    .line 193
    :goto_11
    if-ge v2, v5, :cond_2c

    .line 194
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 196
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    .line 198
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 200
    if-nez v7, :cond_29

    .line 205
    const/4 v0, 0x2

    const/4 v7, 0x4

    invoke-virtual {v6, v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v0, v1

    .line 193
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 212
    :cond_2c
    if-eqz v0, :cond_33

    .line 214
    const-string v0, "OPT_IN_HISTORY"

    invoke-static {v0, v4}, LaT/d;->c(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_35

    .line 218
    :cond_33
    monitor-exit v3

    return-void

    .line 189
    :catchall_35
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_14

    .line 152
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->E:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 153
    const-string v0, "OPT_IN_HISTORY"

    iget-object v1, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, LaT/d;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 155
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/friend/aB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .registers 1

    .prologue
    .line 167
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/friend/aB;
    .registers 2
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/google/googlenav/friend/aB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aB;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/friend/aB;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/googlenav/friend/aB;->c:[Lcom/google/googlenav/friend/aB;

    invoke-virtual {v0}, [Lcom/google/googlenav/friend/aB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/friend/aB;

    return-object v0
.end method

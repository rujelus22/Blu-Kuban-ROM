.class public Lr/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Locale;


# instance fields
.field private final b:I

.field private final c:Lr/w;

.field private final d:Lcom/google/googlenav/common/a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v0, Lr/r;->a:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(ILjava/io/File;Lcom/google/googlenav/common/a;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lr/r;->b:I

    .line 54
    iput-object p3, p0, Lr/r;->d:Lcom/google/googlenav/common/a;

    .line 55
    iget-object v0, p0, Lr/r;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v7

    .line 58
    new-instance v4, Lr/v;

    invoke-direct {v4, p2}, Lr/v;-><init>(Ljava/io/File;)V

    .line 61
    :try_start_13
    const-string v0, "r"

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lr/w;->a(Ljava/lang/String;Lr/Y;Lr/H;)Lr/w;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_29

    move-result-object v0

    .line 72
    :goto_1a
    if-eqz v0, :cond_26

    .line 73
    iget-object v1, p0, Lr/r;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v1

    sub-long/2addr v1, v7

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lr/r;->e:Z

    .line 77
    :cond_26
    iput-object v0, p0, Lr/r;->c:Lr/w;

    .line 78
    return-void

    .line 63
    :catch_29
    move-exception v0

    .line 65
    :try_start_2a
    const-string v0, "r"

    iget v1, p0, Lr/r;->b:I

    const/4 v2, 0x0

    sget-object v3, Lr/r;->a:Ljava/util/Locale;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lr/w;->a(Ljava/lang/String;IILjava/util/Locale;Lr/Y;Lr/H;)Lr/w;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_35} :catch_37

    move-result-object v0

    goto :goto_1a

    .line 68
    :catch_37
    move-exception v0

    .line 69
    const-string v1, "DiskResourceCache"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_1a
.end method

.method public static a(Ljava/io/File;)Lr/r;
    .registers 4
    .parameter

    .prologue
    .line 82
    new-instance v0, Lr/r;

    const/16 v1, 0x200

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lr/r;-><init>(ILjava/io/File;Lcom/google/googlenav/common/a;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lr/ac;
    .registers 10
    .parameter

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 126
    monitor-enter p0

    :try_start_5
    iget-boolean v1, p0, Lr/r;->e:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_53

    if-nez v1, :cond_b

    .line 151
    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    .line 130
    :cond_b
    :try_start_b
    iget-object v1, p0, Lr/r;->c:Lr/w;

    invoke-static {p1}, Lh/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr/w;->a(J)[B

    move-result-object v1

    .line 131
    if-eqz v1, :cond_9

    array-length v2, v1

    if-le v2, v5, :cond_9

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v4, :cond_9

    .line 135
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lr/w;->c([BI)J

    move-result-wide v2

    .line 136
    new-instance v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/fg;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_53

    .line 138
    :try_start_2b
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/16 v6, 0x9

    array-length v7, v1

    add-int/lit8 v7, v7, -0x9

    invoke-direct {v5, v1, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_53
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_56

    .line 143
    const/4 v1, 0x2

    :try_start_39
    invoke-virtual {v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 147
    new-instance v0, Lr/ac;

    invoke-direct {v0}, Lr/ac;-><init>()V

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr/ac;->a(Z)V

    .line 149
    invoke-virtual {v0, v4}, Lr/ac;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 150
    invoke-virtual {v0, v2, v3}, Lr/ac;->a(J)V
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_53

    goto :goto_9

    .line 126
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :catch_56
    move-exception v1

    goto :goto_9
.end method

.method public a()V
    .registers 5

    .prologue
    .line 94
    iget-boolean v0, p0, Lr/r;->e:Z

    if-nez v0, :cond_5

    .line 103
    :goto_4
    return-void

    .line 98
    :cond_5
    :try_start_5
    iget-object v0, p0, Lr/r;->c:Lr/w;

    invoke-virtual {v0}, Lr/w;->g()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_e

    .line 102
    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/r;->e:Z

    goto :goto_4

    .line 99
    :catch_e
    move-exception v0

    .line 100
    const-string v1, "DiskResourceCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing resource cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public declared-synchronized a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 9
    .parameter

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lr/r;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_65

    if-nez v0, :cond_7

    .line 179
    :goto_5
    monitor-exit p0

    return-void

    .line 163
    :cond_7
    const/4 v0, 0x2

    :try_start_8
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_65

    move-result-object v1

    .line 165
    :try_start_c
    iget-object v0, p0, Lr/r;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    .line 166
    invoke-virtual {p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v0

    .line 168
    array-length v4, v0

    add-int/lit8 v4, v4, 0x9

    new-array v4, v4, [B

    .line 169
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 170
    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v3}, Lr/w;->a([BIJ)V

    .line 171
    const/4 v2, 0x0

    const/16 v3, 0x9

    array-length v5, v0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    invoke-static {v1}, Lh/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lr/w;->a(J[B)Lr/A;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v2, p0, Lr/r;->c:Lr/w;

    invoke-virtual {v2, v0}, Lr/w;->a(Ljava/util/Collection;)I
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_65
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_40} :catch_41

    goto :goto_5

    .line 176
    :catch_41
    move-exception v0

    .line 177
    :try_start_42
    const-string v2, "DiskResourceCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_42 .. :try_end_64} :catchall_65

    goto :goto_5

    .line 160
    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .registers 3

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lr/r;->e:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lr/r;->c:Lr/w;

    invoke-virtual {v0}, Lr/w;->e()J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    move-result-wide v0

    :goto_b
    monitor-exit p0

    return-wide v0

    :cond_d
    const-wide/16 v0, 0x0

    goto :goto_b

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 5

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lr/r;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    if-nez v0, :cond_7

    .line 191
    :goto_5
    monitor-exit p0

    return-void

    .line 187
    :cond_7
    :try_start_7
    iget-object v0, p0, Lr/r;->c:Lr/w;

    const/4 v1, 0x0

    sget-object v2, Lr/r;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lr/w;->a(ILjava/util/Locale;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_2a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_5

    .line 188
    :catch_10
    move-exception v0

    .line 189
    :try_start_11
    const-string v1, "DiskResourceCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_2a

    goto :goto_5

    .line 183
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

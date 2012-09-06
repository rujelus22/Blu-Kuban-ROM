.class public Lcom/google/googlenav/aO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lat/B;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field public final g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lat/B;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/googlenav/aO;->a:Lat/B;

    .line 38
    iput-object p2, p0, Lcom/google/googlenav/aO;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/google/googlenav/aO;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 40
    iput-object p4, p0, Lcom/google/googlenav/aO;->d:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/google/googlenav/aO;->e:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/google/googlenav/aO;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 43
    iput-object p7, p0, Lcom/google/googlenav/aO;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 44
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/aO;
    .registers 14
    .parameter

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    const/4 v6, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v2, 0x0

    .line 123
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_2c

    .line 126
    new-instance v1, Lat/B;

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v0, v9}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lat/B;-><init>(II)V

    .line 129
    const/4 v8, 0x5

    invoke-static {v0, v8}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v8

    .line 130
    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2c

    .line 131
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 135
    :cond_2c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v9

    .line 136
    const/4 v0, 0x0

    move v8, v0

    :goto_33
    if-ge v8, v9, :cond_bf

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 139
    const/4 v10, 0x1

    invoke-static {v0, v10}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v10

    .line 141
    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v11

    if-eqz v11, :cond_51

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 143
    :goto_4b
    if-nez v0, :cond_53

    .line 136
    :goto_4d
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_33

    .line 141
    :cond_51
    const/4 v0, 0x0

    goto :goto_4b

    .line 150
    :cond_53
    sparse-switch v10, :sswitch_data_c6

    goto :goto_4d

    .line 152
    :sswitch_57
    :try_start_57
    new-instance v11, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v12, Lbm/bk;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v11, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 153
    invoke-virtual {v11, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    goto :goto_4d

    .line 157
    :sswitch_68
    new-instance v11, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v12, Lbm/M;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v11, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 158
    invoke-virtual {v11, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4d

    .line 162
    :sswitch_79
    new-instance v11, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v12, Lbm/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v11, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 163
    invoke-virtual {v11, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4d

    .line 167
    :sswitch_8a
    new-instance v11, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v12, Lbm/bd;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v11, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 168
    invoke-virtual {v11, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    goto :goto_4d

    .line 172
    :sswitch_9b
    new-instance v11, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v12, Lbm/u;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v11, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 173
    invoke-virtual {v11, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_a5} :catch_a7

    move-result-object v7

    goto :goto_4d

    .line 179
    :catch_a7
    move-exception v0

    .line 180
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PLACE_PAGE, received related place with corrupted story of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d

    .line 184
    :cond_bf
    new-instance v0, Lcom/google/googlenav/aO;

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/aO;-><init>(Lat/B;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0

    .line 150
    nop

    :sswitch_data_c6
    .sparse-switch
        0x2 -> :sswitch_57
        0x3 -> :sswitch_79
        0x6 -> :sswitch_9b
        0x10 -> :sswitch_68
        0x1e -> :sswitch_8a
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 50
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/google/googlenav/aO;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_43

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/google/googlenav/aO;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 55
    iget-object v1, p0, Lcom/google/googlenav/aO;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ai;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_20
    iget-object v1, p0, Lcom/google/googlenav/aO;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v1

    .line 60
    if-lez v1, :cond_3f

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_34

    .line 62
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_34
    if-ne v1, v3, :cond_44

    .line 65
    const/16 v1, 0x482

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_43
    return-object v0

    .line 67
    :cond_44
    const/16 v2, 0x481

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f
.end method

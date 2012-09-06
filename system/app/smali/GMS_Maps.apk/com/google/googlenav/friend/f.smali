.class public Lcom/google/googlenav/friend/f;
.super Lac/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private c:Z

.field private d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lac/b;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/googlenav/friend/f;->a:Ljava/util/List;

    .line 89
    iput-object p2, p0, Lcom/google/googlenav/friend/f;->b:Ljava/util/List;

    .line 90
    iput-object p3, p0, Lcom/google/googlenav/friend/f;->e:Ljava/util/List;

    .line 91
    return-void
.end method

.method private a(Lcom/google/android/location/clientlib/NlpActivity$ActivityType;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 143
    sget-object v1, Lcom/google/googlenav/friend/g;->a:[I

    invoke-virtual {p1}, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 155
    :goto_c
    :pswitch_c
    return v0

    .line 145
    :pswitch_d
    const/4 v0, 0x0

    goto :goto_c

    .line 147
    :pswitch_f
    const/4 v0, 0x1

    goto :goto_c

    .line 149
    :pswitch_11
    const/4 v0, 0x2

    goto :goto_c

    .line 151
    :pswitch_13
    const/4 v0, 0x3

    goto :goto_c

    .line 143
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 98
    const/16 v0, 0x79

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 111
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->an:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 113
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbq/bd;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 114
    iget-object v0, p0, Lcom/google/googlenav/friend/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/reporting/k;

    .line 115
    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/k;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_17

    .line 118
    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/friend/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/clientlib/NlpActivity;

    .line 119
    new-instance v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v5, Lbq/G;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 120
    invoke-virtual {v0}, Lcom/google/android/location/clientlib/NlpActivity;->getActivity()Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/googlenav/friend/f;->a(Lcom/google/android/location/clientlib/NlpActivity$ActivityType;)I

    move-result v5

    .line 121
    invoke-virtual {v4, v8, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/location/clientlib/NlpActivity;->a()J

    move-result-wide v6

    invoke-virtual {v4, v9, v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 123
    const/4 v0, -0x1

    if-eq v5, v0, :cond_31

    .line 124
    const/4 v0, 0x6

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_31

    .line 127
    :cond_5e
    const/4 v0, 0x3

    invoke-virtual {v2, v0, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/friend/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    goto :goto_68

    .line 132
    :cond_7c
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 134
    invoke-virtual {v1, v8, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 135
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 136
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 163
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->ao:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/f;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 164
    iget-object v0, p0, Lcom/google/googlenav/friend/f;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/google/googlenav/friend/f;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 169
    invoke-static {v1, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 172
    packed-switch v0, :pswitch_data_2c

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/f;->c:Z

    .line 182
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Las/f;->a(I)V

    .line 184
    :goto_28
    return v3

    .line 174
    :pswitch_29
    iput-boolean v3, p0, Lcom/google/googlenav/friend/f;->c:Z

    goto :goto_28

    .line 172
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic k()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/googlenav/friend/f;->n()Lcom/google/googlenav/friend/h;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/googlenav/friend/h;
    .registers 4

    .prologue
    .line 189
    new-instance v0, Lcom/google/googlenav/friend/h;

    invoke-direct {v0}, Lcom/google/googlenav/friend/h;-><init>()V

    .line 191
    iget-boolean v1, p0, Lcom/google/googlenav/friend/f;->c:Z

    iput-boolean v1, v0, Lcom/google/googlenav/friend/h;->a:Z

    .line 192
    iget-object v1, p0, Lcom/google/googlenav/friend/f;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/friend/h;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 194
    return-object v0
.end method

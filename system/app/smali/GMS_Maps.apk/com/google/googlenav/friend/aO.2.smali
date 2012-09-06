.class public Lcom/google/googlenav/friend/aO;
.super Lac/b;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/friend/aP;

.field private b:Lcom/google/googlenav/friend/aQ;

.field private final c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/friend/aP;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lac/b;-><init>()V

    .line 57
    new-instance v0, Lcom/google/googlenav/friend/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/friend/aQ;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/aO;->b:Lcom/google/googlenav/friend/aQ;

    .line 65
    iput-object p2, p0, Lcom/google/googlenav/friend/aO;->a:Lcom/google/googlenav/friend/aP;

    .line 66
    iput-object p1, p0, Lcom/google/googlenav/friend/aO;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 67
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/googlenav/friend/aO;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    if-eqz v0, :cond_1c

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/friend/aO;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    :cond_1c
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    return-void
.end method

.method private o()V
    .registers 5

    .prologue
    const/4 v3, 0x7

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting users preferences <has>/<value>:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v1, " HISTORY_ENABLED "

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/friend/aO;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 162
    const-string v1, " HOME_LOCATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, " WORK_LOCATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, " MARINER_OPT_IN "

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/friend/aO;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 167
    const-string v1, " SHARING_ENABLED "

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/friend/aO;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 169
    iget-object v1, p0, Lcom/google/googlenav/friend/aO;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    .line 170
    const-string v2, " PREFERENCE_CHANGE_CAUSE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    if-eqz v1, :cond_4a

    .line 174
    iget-object v1, p0, Lcom/google/googlenav/friend/aO;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_68

    .line 189
    :cond_4a
    :goto_4a
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    return-void

    .line 176
    :pswitch_50
    const-string v1, "USER_SETTING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 179
    :pswitch_56
    const-string v1, "GMM_CLIENT_UPGRADE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 182
    :pswitch_5c
    const-string v1, "MARINER_OPT_IN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 185
    :pswitch_62
    const-string v1, "MARINER_OPT_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 174
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_50
        :pswitch_56
        :pswitch_5c
        :pswitch_62
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 74
    const/16 v0, 0x69

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/googlenav/friend/aO;->o()V

    .line 83
    iget-object v0, p0, Lcom/google/googlenav/friend/aO;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 84
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->ah:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 85
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/friend/aO;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 86
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 87
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 96
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->ai:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 98
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 102
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 104
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 107
    packed-switch v1, :pswitch_data_2c

    .line 115
    iget-object v1, p0, Lcom/google/googlenav/friend/aO;->b:Lcom/google/googlenav/friend/aQ;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/googlenav/friend/aQ;->a(Lcom/google/googlenav/friend/aQ;Z)Z

    .line 117
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/f;->a(I)V

    .line 119
    :goto_25
    return v3

    .line 109
    :pswitch_26
    iget-object v0, p0, Lcom/google/googlenav/friend/aO;->b:Lcom/google/googlenav/friend/aQ;

    invoke-static {v0, v3}, Lcom/google/googlenav/friend/aQ;->a(Lcom/google/googlenav/friend/aQ;Z)Z

    goto :goto_25

    .line 107
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method

.method public synthetic k()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aO;->n()Lcom/google/googlenav/friend/aQ;

    move-result-object v0

    return-object v0
.end method

.method public l_()V
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Lac/b;->l_()V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/friend/aO;->a:Lcom/google/googlenav/friend/aP;

    if-eqz v0, :cond_18

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/friend/aO;->b:Lcom/google/googlenav/friend/aQ;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/friend/aO;->b:Lcom/google/googlenav/friend/aQ;

    invoke-static {v0}, Lcom/google/googlenav/friend/aQ;->a(Lcom/google/googlenav/friend/aQ;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/friend/aO;->a:Lcom/google/googlenav/friend/aP;

    invoke-interface {v0}, Lcom/google/googlenav/friend/aP;->a()V

    .line 135
    :cond_18
    :goto_18
    return-void

    .line 132
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/friend/aO;->a:Lcom/google/googlenav/friend/aP;

    invoke-interface {v0}, Lcom/google/googlenav/friend/aP;->b()V

    goto :goto_18
.end method

.method public n()Lcom/google/googlenav/friend/aQ;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/googlenav/friend/aO;->b:Lcom/google/googlenav/friend/aQ;

    return-object v0
.end method

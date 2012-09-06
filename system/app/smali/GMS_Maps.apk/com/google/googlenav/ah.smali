.class public Lcom/google/googlenav/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/googlenav/ah;->a:[I

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/google/googlenav/ah;->b:[I

    return-void

    .line 31
    :array_12
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_36
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/eu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 83
    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addBool(IZ)V

    .line 85
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 87
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 89
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 92
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 95
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 98
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 100
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 102
    return-object v0
.end method

.method public static a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x29

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 119
    invoke-static {}, Lcom/google/googlenav/ah;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 120
    sparse-switch p0, :sswitch_data_d8

    .line 187
    :goto_d
    return-void

    .line 122
    :sswitch_e
    const/16 v1, 0x1d

    invoke-virtual {p1, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 123
    const/16 v1, 0x28

    invoke-virtual {p1, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 124
    :goto_18
    sget-object v1, Lcom/google/googlenav/ah;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_27

    .line 125
    sget-object v1, Lcom/google/googlenav/ah;->a:[I

    aget v1, v1, v0

    invoke-virtual {p1, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 128
    :cond_27
    const/16 v0, 0x38

    invoke-virtual {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_d

    .line 131
    :sswitch_2d
    const/16 v1, 0x28

    invoke-virtual {p1, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v1, v0

    .line 132
    :goto_33
    sget-object v3, Lcom/google/googlenav/ah;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_42

    .line 133
    sget-object v3, Lcom/google/googlenav/ah;->a:[I

    aget v3, v3, v1

    invoke-virtual {p1, v5, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 136
    :cond_42
    :goto_42
    sget-object v1, Lcom/google/googlenav/ah;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_51

    .line 137
    sget-object v1, Lcom/google/googlenav/ah;->b:[I

    aget v1, v1, v0

    invoke-virtual {p1, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 140
    :cond_51
    const/16 v0, 0x2a

    invoke-virtual {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_d

    .line 143
    :sswitch_57
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 144
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 145
    if-eqz p2, :cond_71

    move v1, v0

    .line 146
    :goto_62
    sget-object v3, Lcom/google/googlenav/ah;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_71

    .line 147
    sget-object v3, Lcom/google/googlenav/ah;->a:[I

    aget v3, v3, v1

    invoke-virtual {p1, v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 151
    :cond_71
    :goto_71
    sget-object v1, Lcom/google/googlenav/ah;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_80

    .line 152
    sget-object v1, Lcom/google/googlenav/ah;->b:[I

    aget v1, v1, v0

    invoke-virtual {p1, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 155
    :cond_80
    invoke-virtual {p1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_d

    .line 158
    :sswitch_84
    if-eqz p2, :cond_96

    move v1, v0

    .line 159
    :goto_87
    sget-object v3, Lcom/google/googlenav/ah;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_96

    .line 160
    sget-object v3, Lcom/google/googlenav/ah;->a:[I

    aget v3, v3, v1

    invoke-virtual {p1, v4, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 164
    :cond_96
    :goto_96
    sget-object v1, Lcom/google/googlenav/ah;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_a5

    .line 165
    sget-object v1, Lcom/google/googlenav/ah;->b:[I

    aget v1, v1, v0

    invoke-virtual {p1, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 168
    :cond_a5
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto/16 :goto_d

    .line 171
    :sswitch_ab
    if-eqz p2, :cond_bf

    move v1, v0

    .line 172
    :goto_ae
    sget-object v3, Lcom/google/googlenav/ah;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_bf

    .line 173
    const/16 v3, 0x9

    sget-object v4, Lcom/google/googlenav/ah;->a:[I

    aget v4, v4, v1

    invoke-virtual {p1, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    .line 177
    :cond_bf
    :goto_bf
    sget-object v1, Lcom/google/googlenav/ah;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d0

    .line 178
    const/16 v1, 0x9

    sget-object v3, Lcom/google/googlenav/ah;->b:[I

    aget v3, v3, v0

    invoke-virtual {p1, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    .line 181
    :cond_d0
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto/16 :goto_d

    .line 120
    nop

    :sswitch_data_d8
    .sparse-switch
        0x25 -> :sswitch_2d
        0x2e -> :sswitch_e
        0x50 -> :sswitch_57
        0x5d -> :sswitch_ab
        0x77 -> :sswitch_84
    .end sparse-switch
.end method

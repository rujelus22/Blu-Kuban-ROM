.class public Lcom/sec/android/socialhub/sns/SnsErrorCode;
.super Ljava/lang/Object;
.source "SnsErrorCode.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorString(Landroid/content/Context;III)Ljava/lang/String;
    .registers 9
    .parameter "mContext"
    .parameter "httpStatus"
    .parameter "errCode"
    .parameter "errSubCode"

    .prologue
    const v4, 0x7f0800a5

    const v3, 0x7f0800ae

    const v2, 0x7f0800a9

    const v1, 0x7f0800a6

    .line 17
    const/4 v0, 0x0

    .line 20
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    sparse-switch p2, :sswitch_data_8a

    .line 143
    :goto_14
    return-object v0

    .line 31
    :sswitch_15
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    goto :goto_14

    .line 40
    :sswitch_1a
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    goto :goto_14

    .line 44
    :sswitch_1f
    packed-switch p3, :pswitch_data_e0

    goto :goto_14

    .line 47
    :pswitch_23
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 53
    :sswitch_28
    packed-switch p3, :pswitch_data_e6

    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    goto :goto_14

    .line 57
    :pswitch_30
    const v1, 0x7f0800a7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    goto :goto_14

    .line 67
    :sswitch_38
    packed-switch p3, :pswitch_data_ec

    :pswitch_3b
    goto :goto_14

    .line 71
    :pswitch_3c
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    goto :goto_14

    .line 75
    :pswitch_41
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 82
    :sswitch_46
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    goto :goto_14

    .line 87
    :sswitch_4b
    packed-switch p3, :pswitch_data_f6

    goto :goto_14

    .line 90
    :pswitch_4f
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 98
    :sswitch_54
    const v1, 0x7f0800ab

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    goto :goto_14

    .line 102
    :sswitch_5c
    packed-switch p3, :pswitch_data_fc

    goto :goto_14

    .line 105
    :pswitch_60
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    goto :goto_14

    .line 109
    :pswitch_65
    const v1, 0x7f0800b4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 116
    :sswitch_6d
    sparse-switch p3, :sswitch_data_104

    .line 130
    :goto_70
    :sswitch_70
    packed-switch p3, :pswitch_data_112

    goto :goto_14

    .line 133
    :pswitch_74
    const v1, 0x7f0800b2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 121
    :sswitch_7c
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    goto :goto_70

    .line 125
    :sswitch_81
    const v1, 0x7f0800aa

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    .line 22
    nop

    :sswitch_data_8a
    .sparse-switch
        0x3e8 -> :sswitch_15
        0x3eb -> :sswitch_15
        0x44c -> :sswitch_46
        0x7d0 -> :sswitch_15
        0x7d4 -> :sswitch_15
        0x8fd -> :sswitch_15
        0xca8 -> :sswitch_38
        0xcab -> :sswitch_5c
        0xe2e -> :sswitch_1a
        0xe31 -> :sswitch_1f
        0xeba -> :sswitch_1a
        0xebd -> :sswitch_6d
        0xec0 -> :sswitch_1a
        0xec1 -> :sswitch_1a
        0xf64 -> :sswitch_4b
        0xf65 -> :sswitch_70
        0xf66 -> :sswitch_6d
        0x1771 -> :sswitch_15
        0x238d -> :sswitch_1a
        0x238f -> :sswitch_54
        0x2390 -> :sswitch_28
    .end sparse-switch

    .line 44
    :pswitch_data_e0
    .packed-switch 0x8df0
        :pswitch_23
    .end packed-switch

    .line 53
    :pswitch_data_e6
    .packed-switch 0x163a1
        :pswitch_30
    .end packed-switch

    .line 67
    :pswitch_data_ec
    .packed-switch 0x7e91
        :pswitch_3c
        :pswitch_3b
        :pswitch_41
    .end packed-switch

    .line 87
    :pswitch_data_f6
    .packed-switch 0x99e9
        :pswitch_4f
    .end packed-switch

    .line 102
    :pswitch_data_fc
    .packed-switch 0x7eb1
        :pswitch_60
        :pswitch_65
    .end packed-switch

    .line 116
    :sswitch_data_104
    .sparse-switch
        0x9363 -> :sswitch_7c
        0x99fd -> :sswitch_7c
        0x99ff -> :sswitch_81
    .end sparse-switch

    .line 130
    :pswitch_data_112
    .packed-switch 0x99f4
        :pswitch_74
    .end packed-switch
.end method

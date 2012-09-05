.class public Landroid/os/PlayerSettingsParcel;
.super Ljava/lang/Object;
.source "PlayerSettingsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PlayerSettingsParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYER_SET_ATTR_MAX:B = 0x0t

.field public static final PLAYER_SET_EQUALIZER:B = 0x1t

.field public static final PLAYER_SET_EQUALIZER_OFF:B = 0x1t

.field public static final PLAYER_SET_EQUALIZER_ON:B = 0x2t

.field public static final PLAYER_SET_EQUALIZER_VAL_MAX:B = 0x2t

.field public static final PLAYER_SET_ILLEGAL:B = 0x0t

.field public static final PLAYER_SET_REPEAT:B = 0x2t

.field public static final PLAYER_SET_REPEAT_ALL:B = 0x3t

.field public static final PLAYER_SET_REPEAT_GROUP:B = 0x4t

.field public static final PLAYER_SET_REPEAT_OFF:B = 0x1t

.field public static final PLAYER_SET_REPEAT_SINGLE:B = 0x2t

.field public static final PLAYER_SET_REPEAT_VAL_MAX:B = 0x4t

.field public static final PLAYER_SET_SCAN:B = 0x4t

.field public static final PLAYER_SET_SCAN_ALL:B = 0x2t

.field public static final PLAYER_SET_SCAN_GROUP:B = 0x3t

.field public static final PLAYER_SET_SCAN_OFF:B = 0x1t

.field public static final PLAYER_SET_SCAN_VAL_MAX:B = 0x3t

.field public static final PLAYER_SET_SHUFFLE:B = 0x3t

.field public static final PLAYER_SET_SHUFFLE_ALL:B = 0x2t

.field public static final PLAYER_SET_SHUFFLE_GROUP:B = 0x3t

.field public static final PLAYER_SET_SHUFFLE_OFF:B = 0x1t

.field public static final PLAYER_SET_SHUFFLE_VAL_MAX:B = 0x3t


# instance fields
.field public mAttrCount:B

.field public mAttrs:[B

.field public mCurVal:[B

.field public mValCount:B

.field public mVals:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 165
    new-instance v0, Landroid/os/PlayerSettingsParcel$1;

    invoke-direct {v0}, Landroid/os/PlayerSettingsParcel$1;-><init>()V

    sput-object v0, Landroid/os/PlayerSettingsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    .line 97
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p0, p1}, Landroid/os/PlayerSettingsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/PlayerSettingsParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/os/PlayerSettingsParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public checkRange()Z
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 153
    iget-object v2, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aget-byte v2, v2, v1

    if-le v2, v4, :cond_c

    .line 162
    :cond_b
    :goto_b
    return v0

    .line 155
    :cond_c
    iget-object v2, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aget-byte v2, v2, v4

    if-gt v2, v5, :cond_b

    .line 157
    iget-object v2, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aget-byte v2, v2, v3

    if-gt v2, v3, :cond_b

    .line 159
    iget-object v2, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aget-byte v2, v2, v5

    if-gt v2, v3, :cond_b

    move v0, v1

    .line 162
    goto :goto_b
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailable(B)V
    .registers 8
    .parameter "attrId"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 100
    packed-switch p1, :pswitch_data_60

    .line 103
    iput-byte v4, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 134
    :goto_a
    return-void

    .line 106
    :pswitch_b
    iput-byte v2, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 107
    iget-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    .line 108
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v1, v0, v4

    .line 109
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v2, v0, v1

    goto :goto_a

    .line 112
    :pswitch_1c
    iput-byte v5, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 113
    iget-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    .line 114
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v1, v0, v4

    .line 115
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v2, v0, v1

    .line 116
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v3, v0, v2

    .line 117
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v5, v0, v3

    goto :goto_a

    .line 120
    :pswitch_35
    iput-byte v3, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 121
    iget-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    .line 122
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v1, v0, v4

    .line 123
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v2, v0, v1

    .line 124
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v3, v0, v2

    goto :goto_a

    .line 127
    :pswitch_4a
    iput-byte v3, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 128
    iget-byte v0, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    .line 129
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v1, v0, v4

    .line 130
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v2, v0, v1

    .line 131
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aput-byte v3, v0, v2

    goto :goto_a

    .line 100
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_b
        :pswitch_1c
        :pswitch_35
        :pswitch_4a
    .end packed-switch
.end method

.method public getCurrent(II)V
    .registers 6
    .parameter "shuffle"
    .parameter "repeat"

    .prologue
    .line 137
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    const/4 v1, 0x2

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 138
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 139
    return-void
.end method

.method public getRepeat()B
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public getShuffle()B
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, i:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    .line 201
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrs:[B

    .line 202
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    .line 203
    const/4 v0, 0x0

    :goto_14
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    if-ge v0, v1, :cond_2b

    .line 204
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrs:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 205
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 208
    :cond_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    .line 209
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    .line 210
    const/4 v0, 0x0

    :goto_38
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    if-ge v0, v1, :cond_47

    .line 211
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 212
    :cond_47
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "in"
    .parameter "count"

    .prologue
    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_9

    .line 217
    invoke-virtual {p0, p1}, Landroid/os/PlayerSettingsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, i:I
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 182
    const/4 v0, 0x0

    :goto_7
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrCount:B

    if-ge v0, v1, :cond_1c

    .line 183
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mAttrs:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mCurVal:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 187
    :cond_1c
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    const/4 v0, 0x0

    :goto_22
    iget-byte v1, p0, Landroid/os/PlayerSettingsParcel;->mValCount:B

    if-ge v0, v1, :cond_30

    .line 189
    iget-object v1, p0, Landroid/os/PlayerSettingsParcel;->mVals:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 190
    :cond_30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "count"

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_9

    .line 195
    invoke-virtual {p0, p1}, Landroid/os/PlayerSettingsParcel;->writeToParcel(Landroid/os/Parcel;)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_9
    return-void
.end method

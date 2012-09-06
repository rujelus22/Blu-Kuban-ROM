.class public Lcom/google/android/apps/plus/content/AvatarRequest;
.super Lcom/google/android/apps/plus/content/ImageRequest;
.source "AvatarRequest.java"


# instance fields
.field private final mContactLookupKey:Ljava/lang/String;

.field private final mGaiaId:Ljava/lang/String;

.field private mHashCode:I

.field private final mIdType:I

.field private mRectangularRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private final mRounded:Z

.field private final mSize:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 5
    .parameter "idType"
    .parameter "contactLookupKey"
    .parameter "size"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(ILjava/lang/String;IZ)V

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IZ)V
    .registers 6
    .parameter "idType"
    .parameter "contactLookupKey"
    .parameter "size"
    .parameter "rounded"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/ImageRequest;-><init>()V

    .line 50
    iput p1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mIdType:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mGaiaId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    .line 53
    iput p3, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    .line 54
    iput-boolean p4, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRounded:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "gaiaId"
    .parameter "size"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;IZ)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5
    .parameter "gaiaId"
    .parameter "size"
    .parameter "rounded"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/ImageRequest;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mIdType:I

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mGaiaId:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    .line 42
    iput-boolean p3, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRounded:Z

    .line 43
    return-void
.end method

.method public static sizeFromString(Ljava/lang/String;)I
    .registers 4
    .parameter "size"

    .prologue
    .line 192
    const-string v0, "tiny"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 193
    const/4 v0, 0x0

    .line 199
    :goto_9
    return v0

    .line 195
    :cond_a
    const-string v0, "small"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 196
    const/4 v0, 0x1

    goto :goto_9

    .line 198
    :cond_14
    const-string v0, "medium"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 199
    const/4 v0, 0x2

    goto :goto_9

    .line 201
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid avatar size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 148
    instance-of v2, p1, Lcom/google/android/apps/plus/content/AvatarRequest;

    if-nez v2, :cond_6

    .line 164
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 152
    check-cast v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 153
    .local v0, k:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget v2, v0, Lcom/google/android/apps/plus/content/AvatarRequest;->mIdType:I

    iget v3, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mIdType:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    iget v3, v0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRounded:Z

    iget-boolean v3, v0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRounded:Z

    if-ne v2, v3, :cond_5

    .line 157
    iget v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mIdType:I

    packed-switch v2, :pswitch_data_34

    goto :goto_5

    .line 159
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mGaiaId:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/apps/plus/content/AvatarRequest;->mGaiaId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_5

    .line 161
    :pswitch_2a
    iget-object v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_5

    .line 157
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_21
        :pswitch_2a
    .end packed-switch
.end method

.method public getContactLookupKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mGaiaId:Ljava/lang/String;

    return-object v0
.end method

.method public getRectangularAvatarRequest()Lcom/google/android/apps/plus/content/AvatarRequest;
    .registers 5

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRounded:Z

    if-nez v0, :cond_5

    .line 105
    .end local p0
    :goto_4
    return-object p0

    .line 94
    .restart local p0
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRectangularRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-nez v0, :cond_e

    .line 95
    iget v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mIdType:I

    packed-switch v0, :pswitch_data_2c

    .line 105
    :cond_e
    :goto_e
    iget-object p0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRectangularRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    goto :goto_4

    .line 97
    :pswitch_11
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget-object v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mGaiaId:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRectangularRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    goto :goto_e

    .line 101
    :pswitch_1d
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mIdType:I

    iget-object v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRectangularRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    goto :goto_e

    .line 95
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1d
    .end packed-switch
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    if-nez v0, :cond_1d

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    .line 136
    :goto_13
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRounded:Z

    if-eqz v0, :cond_1d

    .line 137
    iget v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    .line 140
    :cond_1d
    iget v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    return v0

    .line 131
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mGaiaId:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    goto :goto_13

    .line 134
    :cond_30
    iget v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    iput v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    goto :goto_13
.end method

.method public isEmpty()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    iget v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mIdType:I

    packed-switch v2, :pswitch_data_16

    move v0, v1

    .line 120
    :cond_8
    :goto_8
    return v0

    .line 115
    :pswitch_9
    iget-object v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mGaiaId:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 117
    :pswitch_f
    iget-object v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 113
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method

.method public isRounded()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRounded:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, size:Ljava/lang/String;
    iget v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    packed-switch v2, :pswitch_data_74

    .line 178
    :goto_6
    iget-boolean v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mRounded:Z

    if-eqz v2, :cond_1c

    const-string v0, "(rounded)"

    .line 179
    .local v0, rounded:Ljava/lang/String;
    :goto_c
    iget v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mIdType:I

    packed-switch v2, :pswitch_data_7e

    .line 185
    const/4 v2, 0x0

    :goto_12
    return-object v2

    .line 174
    .end local v0           #rounded:Ljava/lang/String;
    :pswitch_13
    const-string v1, "tiny"

    goto :goto_6

    .line 175
    :pswitch_16
    const-string v1, "small"

    goto :goto_6

    .line 176
    :pswitch_19
    const-string v1, "medium"

    goto :goto_6

    .line 178
    :cond_1c
    const-string v0, ""

    goto :goto_c

    .line 181
    .restart local v0       #rounded:Ljava/lang/String;
    :pswitch_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AvatarRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    .line 183
    :pswitch_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AvatarRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    .line 173
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch

    .line 179
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_49
    .end packed-switch
.end method

.class public Lcom/google/android/apps/plus/content/AvatarRequest;
.super Ljava/lang/Object;
.source "AvatarRequest.java"


# instance fields
.field private final mContactId:J

.field private final mContactLookupKey:Ljava/lang/String;

.field private mHashCode:I

.field private final mSize:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 24
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    .line 25
    return-void
.end method

.method public constructor <init>(JI)V
    .registers 5
    .parameter "contactId"
    .parameter "size"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactId:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "contactLookupKey"
    .parameter "size"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactId:J

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    .line 37
    return-void
.end method

.method public static sizeFromString(Ljava/lang/String;)I
    .registers 4
    .parameter "size"

    .prologue
    .line 114
    const-string v0, "tiny"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 115
    const/4 v0, 0x0

    .line 121
    :goto_9
    return v0

    .line 117
    :cond_a
    const-string v0, "small"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 118
    const/4 v0, 0x1

    goto :goto_9

    .line 120
    :cond_14
    const-string v0, "medium"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 121
    const/4 v0, 0x2

    goto :goto_9

    .line 123
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
    .registers 8
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 81
    .local v0, k:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget-object v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 89
    :cond_10
    :goto_10
    return v1

    .line 85
    :cond_11
    iget-object v2, v0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 89
    iget-wide v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactId:J

    iget-wide v4, v0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    iget v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    iget v3, v0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    if-ne v2, v3, :cond_10

    const/4 v1, 0x1

    goto :goto_10
.end method

.method public getContactId()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactId:J

    return-wide v0
.end method

.method public getContactLookupKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    if-nez v0, :cond_13

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    .line 72
    :cond_13
    :goto_13
    iget v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    return v0

    .line 69
    :cond_16
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactId:J

    iget-wide v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mHashCode:I

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, size:Ljava/lang/String;
    iget v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mSize:I

    packed-switch v1, :pswitch_data_60

    .line 103
    :goto_6
    iget-object v1, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvatarRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactLookupKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_2f
    return-object v1

    .line 99
    :pswitch_30
    const-string v0, "tiny"

    goto :goto_6

    .line 100
    :pswitch_33
    const-string v0, "small"

    goto :goto_6

    .line 101
    :pswitch_36
    const-string v0, "medium"

    goto :goto_6

    .line 106
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvatarRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/plus/content/AvatarRequest;->mContactId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    .line 98
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_30
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

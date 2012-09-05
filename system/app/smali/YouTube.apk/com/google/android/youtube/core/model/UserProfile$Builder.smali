.class public final Lcom/google/android/youtube/core/model/UserProfile$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/j;
.implements Ljava/io/Serializable;


# instance fields
.field private age:I

.field private channelViewsCount:J

.field private displayUsername:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private favoritesCount:I

.field private isLightweight:Z

.field private subscribersCount:I

.field private subscriptionsCount:I

.field private thumbnailUri:Landroid/net/Uri;

.field private uploadViewsCount:J

.field private uploadedCount:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 227
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 228
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    .line 229
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    .line 230
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    .line 231
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    .line 232
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    .line 234
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    .line 235
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 211
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 213
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 214
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 215
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 216
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 217
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 218
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 219
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 220
    return-void
.end method


# virtual methods
.method public final age(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 143
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 144
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/UserProfile;
    .registers 16

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    iget-object v5, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    iget v7, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    iget v8, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    iget v9, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    iget-wide v10, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    iget-wide v12, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    iget v14, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    invoke-direct/range {v0 .. v14}, Lcom/google/android/youtube/core/model/UserProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;ZIIIJJI)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public final channelViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 3
    .parameter

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    .line 174
    return-object p0
.end method

.method public final displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public final email(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public final favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 163
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    .line 164
    return-object p0
.end method

.method public final isLightweight(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight:Z

    .line 154
    return-object p0
.end method

.method public final subscribersCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 183
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    .line 184
    return-object p0
.end method

.method public final subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 168
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    .line 169
    return-object p0
.end method

.method public final thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 149
    return-object p0
.end method

.method public final uploadViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 3
    .parameter

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    .line 179
    return-object p0
.end method

.method public final uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 158
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    .line 159
    return-object p0
.end method

.method public final username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 129
    return-object p0
.end method

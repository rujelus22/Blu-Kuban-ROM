.class public final Lcom/google/android/youtube/core/model/UserProfile$Builder;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/ModelBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private age:I

.field private channelViewsCount:J

.field private favoritesCount:I

.field private subscribersCount:I

.field private subscriptionsCount:I

.field private thumbnailUri:Landroid/net/Uri;

.field private uploadViewsCount:J

.field private uploadedCount:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 178
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 179
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    .line 180
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    .line 181
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    .line 182
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    .line 185
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 165
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 167
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 168
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 170
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 171
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 172
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 173
    return-void
.end method


# virtual methods
.method public age(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter "age"

    .prologue
    .line 107
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 108
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/UserProfile;
    .registers 13

    .prologue
    .line 147
    new-instance v0, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    iget-object v3, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    iget v4, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    iget v5, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    iget v6, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    iget-wide v7, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    iget-wide v9, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    iget v11, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/core/model/UserProfile;-><init>(Ljava/lang/String;ILandroid/net/Uri;IIIJJI)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public channelViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 3
    .parameter "channelViewsCount"

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount:J

    .line 133
    return-object p0
.end method

.method public favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter "favoritesCount"

    .prologue
    .line 122
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    .line 123
    return-object p0
.end method

.method public subscribersCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter "subscribersCount"

    .prologue
    .line 142
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    .line 143
    return-object p0
.end method

.method public subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter "subscriptionsCount"

    .prologue
    .line 127
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    .line 128
    return-object p0
.end method

.method public thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter "thumbnailUri"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 113
    return-object p0
.end method

.method public uploadViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 3
    .parameter "uploadViewsCount"

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    .line 138
    return-object p0
.end method

.method public uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter "uploadedCount"

    .prologue
    .line 117
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    .line 118
    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 2
    .parameter "username"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 103
    return-object p0
.end method

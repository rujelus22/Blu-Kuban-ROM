.class public final Lcom/google/android/youtube/core/model/UserProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LEGAL_AGE:I = 0x12


# instance fields
.field public final age:I

.field public final channelViewsCount:J

.field public final displayUsername:Ljava/lang/String;

.field public final email:Ljava/lang/String;

.field public final favoritesCount:I

.field public final isLightweight:Z

.field public final subscribersCount:I

.field public final subscriptionsCount:I

.field public final thumbnailUri:Landroid/net/Uri;

.field public final uploadViewsCount:J

.field public final uploadedCount:I

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;ZIIIJJI)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_25

    move-object v0, p1

    :goto_6
    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_e
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/google/android/youtube/core/model/UserProfile;->email:Ljava/lang/String;

    .line 62
    iput p4, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    .line 63
    iput-object p5, p0, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    .line 64
    iput-boolean p6, p0, Lcom/google/android/youtube/core/model/UserProfile;->isLightweight:Z

    .line 65
    iput p7, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    .line 66
    iput p8, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesCount:I

    .line 67
    iput p9, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsCount:I

    .line 68
    iput-wide p10, p0, Lcom/google/android/youtube/core/model/UserProfile;->channelViewsCount:J

    .line 69
    iput-wide p12, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    .line 70
    iput p14, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    .line 71
    return-void

    :cond_25
    move-object v0, p3

    .line 59
    goto :goto_6

    :cond_27
    move-object p1, p2

    .line 60
    goto :goto_e
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 91
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile;->buildUpon()Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 4

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->isLightweight:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->channelViewsCount:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final hasAge()Z
    .registers 3

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final hasLegalAge()Z
    .registers 3

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->email:Ljava/lang/String;

    goto :goto_6
.end method

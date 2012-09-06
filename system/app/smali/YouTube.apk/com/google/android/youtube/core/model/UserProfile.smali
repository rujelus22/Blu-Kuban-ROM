.class public final Lcom/google/android/youtube/core/model/UserProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LEGAL_AGE:I = 0x12


# instance fields
.field public final activityUri:Landroid/net/Uri;

.field public final age:I

.field public final alternateUri:Landroid/net/Uri;

.field public final channelViewsCount:J

.field public final displayUsername:Ljava/lang/String;

.field public final email:Ljava/lang/String;

.field public final favoritesCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final favoritesUri:Landroid/net/Uri;

.field public final isLightweight:Z

.field public final playlistsUri:Landroid/net/Uri;

.field public final selfUri:Landroid/net/Uri;

.field public final subscribersCount:I

.field public final subscriptionsCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final subscriptionsUri:Landroid/net/Uri;

.field public final summary:Ljava/lang/String;

.field public final thumbnailUri:Landroid/net/Uri;

.field public final uploadViewsCount:J

.field public final uploadedCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final uploadsUri:Landroid/net/Uri;

.field public final uri:Landroid/net/Uri;

.field public final username:Ljava/lang/String;

.field public final watchHistoryUri:Landroid/net/Uri;

.field public final watchLaterUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;ILandroid/net/Uri;ILandroid/net/Uri;ILandroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JJI)V
    .registers 29
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
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uri:Landroid/net/Uri;

    .line 92
    iput-object p2, p0, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    .line 93
    iput-object p3, p0, Lcom/google/android/youtube/core/model/UserProfile;->alternateUri:Landroid/net/Uri;

    .line 95
    if-eqz p4, :cond_51

    move-object v2, p4

    :goto_c
    iput-object v2, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    .line 96
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_53

    :goto_14
    iput-object p4, p0, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lcom/google/android/youtube/core/model/UserProfile;->email:Ljava/lang/String;

    .line 98
    iput p7, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    .line 99
    iput-object p8, p0, Lcom/google/android/youtube/core/model/UserProfile;->summary:Ljava/lang/String;

    .line 100
    iput-object p9, p0, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    .line 101
    iput-boolean p10, p0, Lcom/google/android/youtube/core/model/UserProfile;->isLightweight:Z

    .line 102
    iput-object p11, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadsUri:Landroid/net/Uri;

    .line 103
    iput p12, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    .line 104
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesUri:Landroid/net/Uri;

    .line 105
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesCount:I

    .line 106
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsUri:Landroid/net/Uri;

    .line 107
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsCount:I

    .line 108
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->watchHistoryUri:Landroid/net/Uri;

    .line 109
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->watchLaterUri:Landroid/net/Uri;

    .line 110
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->playlistsUri:Landroid/net/Uri;

    .line 111
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->activityUri:Landroid/net/Uri;

    .line 112
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->channelViewsCount:J

    .line 113
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    .line 114
    move/from16 v0, p25

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    .line 115
    return-void

    :cond_51
    move-object v2, p6

    .line 95
    goto :goto_c

    :cond_53
    move-object p4, p5

    .line 96
    goto :goto_14
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 135
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile;->buildUpon()Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .registers 4

    .prologue
    .line 139
    new-instance v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->alternateUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->alternateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

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

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->isLightweight:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->watchHistoryUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->watchLaterUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->playlistsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->activityUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

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
    .line 122
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
    .line 118
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
    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->email:Ljava/lang/String;

    goto :goto_6
.end method

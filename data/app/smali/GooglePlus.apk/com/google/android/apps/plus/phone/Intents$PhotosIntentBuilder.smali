.class public Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotosIntentBuilder"
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActivityId:Ljava/lang/String;

.field private mAlbumId:Ljava/lang/Long;

.field private mAlbumName:Ljava/lang/String;

.field private mAlbumType:Ljava/lang/Integer;

.field private mAllowCrop:Ljava/lang/Boolean;

.field private mAllowPlusOne:Ljava/lang/Boolean;

.field private mCircleId:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mForceLoadId:Ljava/lang/Long;

.field private mGaiaId:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;

.field private mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

.field private mNotificationId:Ljava/lang/String;

.field private mPageHint:Ljava/lang/Integer;

.field private mPersonId:Ljava/lang/String;

.field private mPhotoId:Ljava/lang/Long;

.field private mPhotoIndex:Ljava/lang/Integer;

.field private mPhotoOfUserId:Ljava/lang/String;

.field private mPhotoOnly:Ljava/lang/Boolean;

.field private mPhotoPickerMediaRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoPickerMode:Ljava/lang/Integer;

.field private mPhotoPickerShareOnZeroSelected:Ljava/lang/Boolean;

.field private mPhotoPickerTitleResourceId:Ljava/lang/Integer;

.field private mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

.field private mPhotoUrl:Ljava/lang/String;

.field private mPhotosHome:Ljava/lang/Boolean;

.field private mShowCameraAlbum:Ljava/lang/Boolean;

.field private mStreamId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2612
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2613
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mIntent:Landroid/content/Intent;

    .line 2614
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/apps/plus/phone/Intents$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2547
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 2790
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v1, :cond_d

    .line 2791
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Account must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2794
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2795
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2796
    .local v7, extras:Landroid/os/Bundle;
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2798
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mActivityId:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 2799
    const-string v1, "activity_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mActivityId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    :cond_2b
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAlbumId:Ljava/lang/Long;

    if-eqz v1, :cond_3a

    .line 2803
    const-string v1, "album_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2806
    :cond_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAlbumName:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 2807
    const-string v1, "album_name"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    :cond_45
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAlbumType:Ljava/lang/Integer;

    if-eqz v1, :cond_54

    .line 2811
    const-string v1, "album_type"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAlbumType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2814
    :cond_54
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAllowPlusOne:Ljava/lang/Boolean;

    if-eqz v1, :cond_63

    .line 2815
    const-string v1, "allow_plusone"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAllowPlusOne:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2818
    :cond_63
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mCircleId:Ljava/lang/String;

    if-eqz v1, :cond_6e

    .line 2819
    const-string v1, "circle_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mCircleId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    :cond_6e
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_79

    .line 2823
    const-string v1, "display_name"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    :cond_79
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mEventId:Ljava/lang/String;

    if-eqz v1, :cond_84

    .line 2827
    const-string v1, "event_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mEventId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    :cond_84
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mForceLoadId:Ljava/lang/Long;

    if-eqz v1, :cond_93

    .line 2831
    const-string v1, "refresh"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mForceLoadId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2834
    :cond_93
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v1, :cond_9e

    .line 2835
    const-string v1, "mediarefs"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2838
    :cond_9e
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mNotificationId:Ljava/lang/String;

    if-eqz v1, :cond_a9

    .line 2839
    const-string v1, "notif_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mNotificationId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    :cond_a9
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mGaiaId:Ljava/lang/String;

    if-eqz v1, :cond_b4

    .line 2843
    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    :cond_b4
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPageHint:Ljava/lang/Integer;

    if-eqz v1, :cond_1a6

    .line 2847
    const-string v1, "page_hint"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPageHint:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2852
    :goto_c3
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPersonId:Ljava/lang/String;

    if-eqz v1, :cond_ce

    .line 2853
    const-string v1, "person_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPersonId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    :cond_ce
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoId:Ljava/lang/Long;

    if-eqz v1, :cond_dd

    .line 2857
    const-string v1, "photo_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2860
    :cond_dd
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_ec

    .line 2861
    const-string v1, "photo_index"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2864
    :cond_ec
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoOfUserId:Ljava/lang/String;

    if-eqz v1, :cond_f7

    .line 2865
    const-string v1, "photos_of_user_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoOfUserId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    :cond_f7
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoOnly:Ljava/lang/Boolean;

    if-eqz v1, :cond_103

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoOnly:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_107

    :cond_103
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v1, :cond_10d

    .line 2869
    :cond_107
    const-string v1, "show_photo_only"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2872
    :cond_10d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v1, :cond_1ae

    .line 2873
    const-string v1, "photo_ref"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2883
    :cond_118
    :goto_118
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoUrl:Ljava/lang/String;

    if-eqz v1, :cond_123

    .line 2884
    const-string v1, "photo_url"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    :cond_123
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotosHome:Ljava/lang/Boolean;

    if-eqz v1, :cond_132

    .line 2888
    const-string v1, "photos_home"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotosHome:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2891
    :cond_132
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mShowCameraAlbum:Ljava/lang/Boolean;

    if-eqz v1, :cond_141

    .line 2892
    const-string v1, "photos_show_camera_album"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mShowCameraAlbum:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2895
    :cond_141
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mStreamId:Ljava/lang/String;

    if-eqz v1, :cond_14c

    .line 2896
    const-string v1, "stream_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mStreamId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    :cond_14c
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerMode:Ljava/lang/Integer;

    if-eqz v1, :cond_15b

    .line 2900
    const-string v1, "photo_picker_mode"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerMode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2903
    :cond_15b
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerTitleResourceId:Ljava/lang/Integer;

    if-eqz v1, :cond_16a

    .line 2904
    const-string v1, "photo_picker_title"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerTitleResourceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2907
    :cond_16a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerShareOnZeroSelected:Ljava/lang/Boolean;

    if-eqz v1, :cond_179

    .line 2908
    const-string v1, "photo_picker_share_on_zero"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerShareOnZeroSelected:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2912
    :cond_179
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerMediaRefs:Ljava/util/ArrayList;

    if-eqz v1, :cond_18f

    .line 2913
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerMediaRefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v8, v1, [Lcom/google/android/apps/plus/api/MediaRef;

    .line 2914
    .local v8, mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerMediaRefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2915
    const-string v1, "photo_picker_selected"

    invoke-virtual {v7, v1, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2918
    .end local v8           #mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    :cond_18f
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAllowCrop:Ljava/lang/Boolean;

    if-eqz v1, :cond_19e

    .line 2919
    const-string v1, "allow_crop"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAllowCrop:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2922
    :cond_19e
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2923
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v1

    .line 2849
    :cond_1a6
    const-string v1, "page_hint"

    const/4 v2, -0x1

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_c3

    .line 2876
    :cond_1ae
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoId:Ljava/lang/Long;

    if-eqz v1, :cond_118

    .line 2877
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mGaiaId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 2879
    .local v0, photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    const-string v1, "photo_ref"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_118
.end method

.method public setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "account"

    .prologue
    .line 2618
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 2619
    return-object p0
.end method

.method public setAlbumId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "albumId"

    .prologue
    .line 2630
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAlbumId:Ljava/lang/Long;

    .line 2631
    return-object p0
.end method

.method public setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "albumName"

    .prologue
    .line 2636
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAlbumName:Ljava/lang/String;

    .line 2637
    return-object p0
.end method

.method public setAlbumType(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "albumType"

    .prologue
    .line 2642
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAlbumType:Ljava/lang/Integer;

    .line 2643
    return-object p0
.end method

.method public setAllowCrop(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "enabled"

    .prologue
    .line 2784
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mAllowCrop:Ljava/lang/Boolean;

    .line 2785
    return-object p0
.end method

.method public setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "gaiaId"

    .prologue
    .line 2678
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mGaiaId:Ljava/lang/String;

    .line 2679
    return-object p0
.end method

.method public setNotificationId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "notificationId"

    .prologue
    .line 2690
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mNotificationId:Ljava/lang/String;

    .line 2691
    return-object p0
.end method

.method public setPersonId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "personId"

    .prologue
    .line 2702
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPersonId:Ljava/lang/String;

    .line 2703
    return-object p0
.end method

.method public setPhotoOfUserId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "photoOfUserId"

    .prologue
    .line 2720
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoOfUserId:Ljava/lang/String;

    .line 2721
    return-object p0
.end method

.method public setPhotoPickerInitiallySelected(Ljava/util/ArrayList;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)",
            "Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;"
        }
    .end annotation

    .prologue
    .line 2773
    .local p1, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerMediaRefs:Ljava/util/ArrayList;

    .line 2774
    return-object p0
.end method

.method public setPhotoPickerMode(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "mode"

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerMode:Ljava/lang/Integer;

    .line 2763
    return-object p0
.end method

.method public setPhotoPickerShareOnZeroSelected(Z)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 3
    .parameter "shareOnZeroSelected"

    .prologue
    .line 2778
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerShareOnZeroSelected:Ljava/lang/Boolean;

    .line 2779
    return-object p0
.end method

.method public setPhotoPickerTitleResourceId(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "id"

    .prologue
    .line 2768
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotoPickerTitleResourceId:Ljava/lang/Integer;

    .line 2769
    return-object p0
.end method

.method public setPhotosHome(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "photosHome"

    .prologue
    .line 2744
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mPhotosHome:Ljava/lang/Boolean;

    .line 2745
    return-object p0
.end method

.method public setShowCameraAlbum(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "showCameraAlbum"

    .prologue
    .line 2750
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mShowCameraAlbum:Ljava/lang/Boolean;

    .line 2751
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 2
    .parameter "streamId"

    .prologue
    .line 2756
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->mStreamId:Ljava/lang/String;

    .line 2757
    return-object p0
.end method

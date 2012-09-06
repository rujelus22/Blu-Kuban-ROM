.class public Lcom/google/android/apps/plus/service/EsServiceListener;
.super Ljava/lang/Object;
.source "EsServiceListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountAdded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 35
    return-void
.end method

.method public onAccountRemoved(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 45
    return-void
.end method

.method public onAccountUpgraded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 55
    return-void
.end method

.method public onAddPeopleToCirclesComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 608
    return-void
.end method

.method public onChangeNotificationsRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 708
    return-void
.end method

.method public onCircleSyncComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 352
    return-void
.end method

.method public onCreateActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 123
    return-void
.end method

.method public onCreateAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 754
    return-void
.end method

.method public onCreateCircleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 653
    return-void
.end method

.method public onCreateComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "result"

    .prologue
    .line 208
    return-void
.end method

.method public onCreateEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 880
    return-void
.end method

.method public onCreatePhotoCommentComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 403
    return-void
.end method

.method public onCreatePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 273
    return-void
.end method

.method public onCreateProfilePlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 631
    return-void
.end method

.method public onDeleteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 159
    return-void
.end method

.method public onDeleteAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 765
    return-void
.end method

.method public onDeleteCirclesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 675
    return-void
.end method

.method public onDeleteComments(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentIds"
    .parameter "result"

    .prologue
    .line 234
    return-void
.end method

.method public onDeleteEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 898
    return-void
.end method

.method public onDeletePhotoCommentsComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 425
    return-void
.end method

.method public onDeletePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 285
    return-void
.end method

.method public onDeleteProfilePlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 642
    return-void
.end method

.method public onDismissSuggestedPeopleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 697
    return-void
.end method

.method public onEditActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 135
    return-void
.end method

.method public onEditComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "result"

    .prologue
    .line 221
    return-void
.end method

.method public onEditPhotoCommentComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 414
    return-void
.end method

.method public onEventHomeRequestComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 836
    return-void
.end method

.method public onEventInviteComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 916
    return-void
.end method

.method public onEventManageGuestComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 922
    return-void
.end method

.method public onGetActivities(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;ZILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 10
    .parameter "requestId"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "circleId"
    .parameter "view"
    .parameter "location"
    .parameter "newer"
    .parameter "streamSize"
    .parameter "result"

    .prologue
    .line 73
    return-void
.end method

.method public onGetActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 85
    return-void
.end method

.method public onGetActivityAudience(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/AudienceData;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "audienceData"
    .parameter "result"

    .prologue
    .line 98
    return-void
.end method

.method public onGetActivityPhotos(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 195
    return-void
.end method

.method public onGetAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 776
    return-void
.end method

.method public onGetAlbumComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 382
    return-void
.end method

.method public onGetAlbumListComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 372
    return-void
.end method

.method public onGetEditableActivityContent(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetEditableContentResponse;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "editableContent"
    .parameter "result"

    .prologue
    .line 111
    return-void
.end method

.method public onGetEventActivitiesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 854
    return-void
.end method

.method public onGetEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 845
    return-void
.end method

.method public onGetEventInviteesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "serviceResult"

    .prologue
    .line 930
    return-void
.end method

.method public onGetEventThemesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 907
    return-void
.end method

.method public onGetNotificationSettings(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"
    .parameter "notificationSettings"

    .prologue
    .line 720
    return-void
.end method

.method public onGetPhoto(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "photoId"
    .parameter "result"

    .prologue
    .line 526
    return-void
.end method

.method public onGetPhotoConsumptionStreamComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 481
    return-void
.end method

.method public onGetPhotoSettings(ILjava/lang/String;ZLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "gaiaId"
    .parameter "downloadAllowed"
    .parameter "result"

    .prologue
    .line 538
    return-void
.end method

.method public onGetPhotosOfUserComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 458
    return-void
.end method

.method public onGetPlusOnePeople(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/util/Set;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "plusOneId"
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/ServiceResult;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p5, personIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public onGetProfileAndContactComplete(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "personId"
    .parameter "result"

    .prologue
    .line 620
    return-void
.end method

.method public onGetStreamPhotosComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 392
    return-void
.end method

.method public onImageThumbnailUploaded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "response"
    .parameter "result"

    .prologue
    .line 743
    return-void
.end method

.method public onInsertCameraPhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 809
    return-void
.end method

.method public onLocalImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;II)Z
    .registers 6
    .parameter "ref"
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public onLocalPhotoDelete(ILjava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;",
            "Lcom/google/android/apps/plus/service/ServiceResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 515
    .local p2, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    return-void
.end method

.method public onLocationQuery(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "query"
    .parameter "result"

    .prologue
    .line 310
    return-void
.end method

.method public onModerateComments(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentIds"
    .parameter "result"

    .prologue
    .line 247
    return-void
.end method

.method public onModifyCirclePropertiesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 664
    return-void
.end method

.method public onMuteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 171
    return-void
.end method

.method public onNameTagApprovalComplete(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "photoId"
    .parameter "result"

    .prologue
    .line 470
    return-void
.end method

.method public onOobRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 562
    return-void
.end method

.method public onPhotoActionComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "action"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/apps/plus/service/ServiceResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 504
    .local p4, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    return-void
.end method

.method public onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 5
    .parameter "ref"
    .parameter "bitmap"
    .parameter "type"
    .parameter "cropType"

    .prologue
    .line 321
    return-void
.end method

.method public onPhotoPlusOneComplete(ILcom/google/android/apps/plus/content/EsAccount;ZLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "plusOned"
    .parameter "result"

    .prologue
    .line 448
    return-void
.end method

.method public onPhotosHomeComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 491
    return-void
.end method

.method public onPlusOneApplyResult(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 827
    return-void
.end method

.method public onPlusOneComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOne"
    .parameter "result"

    .prologue
    .line 261
    return-void
.end method

.method public onPostActivityResult(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 818
    return-void
.end method

.method public onReadEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 862
    return-void
.end method

.method public onRemovePeopleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 686
    return-void
.end method

.method public onReportAbuseRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 584
    return-void
.end method

.method public onReportActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 183
    return-void
.end method

.method public onReportAdPlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 787
    return-void
.end method

.method public onReportPhotoCommentsComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 436
    return-void
.end method

.method public onReshareActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 147
    return-void
.end method

.method public onSavePhoto(ILjava/io/File;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "saveToFile"
    .parameter "isFullRes"
    .parameter "description"
    .parameter "mimeType"
    .parameter "result"

    .prologue
    .line 552
    return-void
.end method

.method public onSearchActivitiesComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 798
    return-void
.end method

.method public onSendEventRsvpComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 871
    return-void
.end method

.method public onSetBlockedRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 573
    return-void
.end method

.method public onSetCircleMemebershipComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 595
    return-void
.end method

.method public onSetProfilePhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 731
    return-void
.end method

.method public onSyncComplete(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "tag"

    .prologue
    .line 362
    return-void
.end method

.method public onSyncNotifications(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 342
    return-void
.end method

.method public onUpdateEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 889
    return-void
.end method

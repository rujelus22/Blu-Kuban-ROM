.class public Lcom/google/android/apps/plus/phone/Intents;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/Intents$1;,
        Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;,
        Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    }
.end annotation


# direct methods
.method public static getAccountsActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "startIntent"

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/AccountSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    if-eqz p1, :cond_13

    .line 281
    const-string v1, "intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    :cond_13
    return-object v0
.end method

.method public static getAddedToCircleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[BLjava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "circleActionData"
    .parameter "notificationId"

    .prologue
    .line 1422
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/AddedToCircleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1423
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1424
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1425
    const-string v1, "circle_action_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1426
    const-string v1, "notif_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1428
    return-object v0
.end method

.method public static getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 1146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1148
    .local v0, f:Ljava/io/File;
    const-string v2, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1149
    return-object v1
.end method

.method public static getCameraPhotosPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Z)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "shareOnZeroSelected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 992
    .local p2, selectedMediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumType(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoPickerMode(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const v2, 0x7f0800b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoPickerTitleResourceId(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoPickerInitiallySelected(Ljava/util/ArrayList;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoPickerShareOnZeroSelected(Z)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v0

    .line 1000
    .local v0, builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static getCheckinActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1602
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/CheckinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1603
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1604
    const-string v1, "places_only"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1606
    return-object v0
.end method

.method public static getCheckinSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "location"

    .prologue
    .line 1645
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1646
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1647
    if-eqz p2, :cond_13

    .line 1648
    const-string v1, "location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1651
    :cond_13
    return-object v0
.end method

.method public static getChooseLocationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "placesOnly"
    .parameter "location"

    .prologue
    .line 1624
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/CheckinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1625
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1626
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1627
    const-string v1, "places_only"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1628
    if-eqz p3, :cond_1d

    .line 1629
    const-string v1, "location"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1632
    :cond_1d
    return-object v0
.end method

.method public static getCircleMembershipActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "personName"
    .parameter "emptySelectionAllowed"

    .prologue
    .line 1667
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1668
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1669
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    const-string v1, "empty_selection_allowed"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1672
    return-object v0
.end method

.method public static getCirclePeopleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "circleId"

    .prologue
    .line 1210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1211
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1212
    const-string v1, "destination"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1213
    const-string v1, "people_view_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1214
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    return-object v0
.end method

.method public static getCirclePostsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "circleId"

    .prologue
    .line 1191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1192
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1194
    const-string v1, "destination"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    return-object v0
.end method

.method public static getCirclesActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1174
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1176
    const-string v1, "destination"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1177
    return-object v0
.end method

.method public static getClearRealTimeChatIntent(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 3
    .parameter "account"

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.realtimechat.reset"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    return-object v0
.end method

.method public static getContactsSyncConfigActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1845
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/ContactsSyncConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1846
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1847
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1848
    return-object v0
.end method

.method public static getConversationActivityHangoutTileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "isGroup"

    .prologue
    .line 356
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 357
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tile"

    const-class v2, Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    return-object v0
.end method

.method public static getConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "isGroup"

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unique"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 330
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 331
    const-string v1, "is_group"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    return-object v0
.end method

.method public static getConversationInvititationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "inviterId"
    .parameter "isGroup"

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/InvitationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 375
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 376
    const-string v1, "inviter_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v1, "is_group"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    return-object v0
.end method

.method public static getCreateEventActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 826
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/NewEventActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 827
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 830
    return-object v0
.end method

.method public static getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;
    .registers 19
    .parameter "context"
    .parameter "account"
    .parameter "activityTitle"
    .parameter "audience"
    .parameter "circleUsageType"
    .parameter "includePhoneOnlyContacts"
    .parameter "includePlusPages"
    .parameter "includePublicProfiles"
    .parameter "filterNullGaiaIds"

    .prologue
    .line 1771
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZZ)Landroid/content/Intent;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "activityTitle"
    .parameter "audience"
    .parameter "circleUsageType"
    .parameter "includePhoneOnlyContacts"
    .parameter "includePlusPages"
    .parameter "includePublicProfiles"
    .parameter "filterNullGaiaIds"
    .parameter "audienceIsReadOnly"

    .prologue
    .line 1796
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/EditAudienceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1797
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1798
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1799
    const-string v1, "audience"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1800
    const-string v1, "circle_usage_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1801
    const-string v1, "search_phones_enabled"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1802
    const-string v1, "search_plus_pages_enabled"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1803
    const-string v1, "search_pub_profiles_enabled"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1804
    const-string v1, "filter_null_gaia_ids"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1805
    const-string v1, "audience_is_read_only"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1806
    return-object v0
.end method

.method public static getEditCommentActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "comment"
    .parameter "photoId"
    .parameter "gaiaId"

    .prologue
    .line 693
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/EditCommentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 694
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 695
    const-string v1, "activity_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v1, "comment"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    if-eqz p5, :cond_22

    .line 699
    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 701
    :cond_22
    if-eqz p6, :cond_29

    .line 702
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    :cond_29
    return-object v0
.end method

.method public static getEditEventActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"

    .prologue
    .line 882
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/EditEventActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 883
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 885
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    return-object v0
.end method

.method public static getEditPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 1464
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/EditPostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1465
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1467
    const-string v1, "activity_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1469
    return-object v0
.end method

.method public static getEventFinishedIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 6
    .parameter "context"
    .parameter "eventId"

    .prologue
    const/4 v3, 0x0

    .line 788
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/google/android/apps/plus/service/EventFinishedReceiver;->sIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 789
    .local v0, eventFinishedIntent:Landroid/content/Intent;
    if-eqz p1, :cond_f

    .line 790
    const-string v2, "event_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    :cond_f
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 793
    .local v1, intent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method public static getEventHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "eventId"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2041
    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$RoomType;->EXTERNAL:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    sget-object v3, Lcom/google/android/apps/plus/service/Hangout;->CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

    const-string v4, "event"

    sget-object v7, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Event:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v9, v8

    move-object v10, v6

    invoke-static/range {v0 .. v10}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;ZZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getEventInviteeListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"

    .prologue
    .line 808
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 809
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 811
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    return-object v0
.end method

.method public static getEventLocationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/plusi/model/Place;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "location"

    .prologue
    .line 860
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/EventLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 861
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 863
    if-eqz p2, :cond_20

    .line 864
    const-string v1, "location"

    invoke-static {}, Lcom/google/api/services/plusi/model/PlaceJson;->getInstance()Lcom/google/api/services/plusi/model/PlaceJson;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/api/services/plusi/model/PlaceJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 867
    :cond_20
    return-object v0
.end method

.method public static getEventThemePickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 842
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/EventThemePickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 843
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 846
    return-object v0
.end method

.method public static getEventsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 716
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 717
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 719
    const-string v1, "destination"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    return-object v0
.end method

.method public static getFakeConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Data$Participant;Z)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "participant"
    .parameter "isGroup"

    .prologue
    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unique"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 349
    const-string v1, "participant"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 350
    const-string v1, "is_group"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    return-object v0
.end method

.method public static getGoogleFeedbackIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter "context"

    .prologue
    .line 1833
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHangoutActivityAudienceIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;ZLcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "hangoutInfo"
    .parameter "skipGreenRoom"
    .parameter "audience"

    .prologue
    .line 2100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/hangout/HangoutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2101
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unique"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2102
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2103
    const-string v1, "hangout_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2104
    const-string v1, "hangout_skip_green_room"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2105
    if-eqz p4, :cond_37

    .line 2106
    const-string v1, "audience"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2108
    :cond_37
    return-object v0
.end method

.method public static getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 620
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 623
    const-string v1, "destination"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    return-object v0
.end method

.method public static getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/ArrayList;)Landroid/content/Intent;
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "hangoutInfo"
    .parameter "skipGreenRoom"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/service/Hangout$Info;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 2080
    .local p4, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/hangout/HangoutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2081
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unique"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2082
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2083
    const-string v1, "hangout_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2084
    const-string v1, "hangout_skip_green_room"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2085
    const-string v1, "hangout_participants"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2086
    return-object v0
.end method

.method public static getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;ZZLjava/util/ArrayList;)Landroid/content/Intent;
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "hangoutRoomType"
    .parameter "hangoutDomain"
    .parameter "serviceId"
    .parameter "hangoutId"
    .parameter "inviteeNick"
    .parameter "hangoutLaunchSource"
    .parameter "ringInvitees"
    .parameter "skipGreenRoom"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/service/Hangout$RoomType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/Hangout$LaunchSource;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 2061
    .local p10, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    new-instance v10, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/plus/hangout/HangoutActivity;

    invoke-direct {v10, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2062
    .local v10, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unique"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2063
    const-string v3, "account"

    invoke-virtual {v10, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2064
    new-instance v2, Lcom/google/android/apps/plus/service/Hangout$Info;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;Z)V

    .line 2066
    .local v2, hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    move/from16 v0, p9

    move-object/from16 v1, p10

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getHangoutParticipantListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 2174
    .local p2, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/hangout/HangoutParticipantListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2175
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2176
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2177
    const-string v1, "conversation_row_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2178
    const-string v1, "hangout_participants"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2179
    return-object v0
.end method

.method public static getHangoutRingingActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$Info;Z)Landroid/content/Intent;
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "inviteId"
    .parameter "inviterId"
    .parameter "inviterName"
    .parameter "hangoutInfo"
    .parameter "isHangoutLite"

    .prologue
    .line 2159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2160
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unique"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2161
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2162
    const-string v1, "hangout_inviter_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2163
    const-string v1, "hangout_inviter_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2164
    const-string v1, "hangout_info"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2165
    const-string v1, "hangout_is_lite"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2166
    return-object v0
.end method

.method public static getHomeOobActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "startIntent"
    .parameter "oob"

    .prologue
    .line 546
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 549
    const-string v1, "run_oob"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 550
    if-eqz p3, :cond_1e

    .line 551
    const-string v1, "network_oob"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 553
    :cond_1e
    if-eqz p2, :cond_25

    .line 554
    const-string v1, "intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 557
    :cond_25
    return-object v0
.end method

.method public static getHostNavigationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 569
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 573
    return-object v0
.end method

.method public static getHostedEventIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"
    .parameter "invitationToken"

    .prologue
    const/4 v3, 0x0

    .line 735
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getHostedEventIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getHostedEventIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "typeString"
    .parameter "ownerId"
    .parameter "invitationToken"
    .parameter "notificationId"

    .prologue
    .line 748
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/EventActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 749
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 752
    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string v1, "invitation_token"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    const-string v1, "notif_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string v1, "notif_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    return-object v0
.end method

.method public static getHostedProfileAlbumsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "notificationId"

    .prologue
    .line 1358
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1359
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    const-string v3, "destination"

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1361
    const-string v3, "account"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1362
    const-string v3, "person_id"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    const-string v3, "notif_id"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, gaiaId:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v2

    .line 1367
    .local v2, showPhotosHome:Z
    const-string v3, "photos_home"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1368
    return-object v1
.end method

.method public static getHostedProfileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "notificationId"
    .parameter "viewType"

    .prologue
    .line 1329
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1330
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1331
    packed-switch p4, :pswitch_data_2e

    .line 1340
    :goto_f
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1341
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    const-string v1, "notif_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    return-object v0

    .line 1333
    :pswitch_1f
    const-string v1, "destination"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_f

    .line 1337
    :pswitch_26
    const-string v1, "destination"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_f

    .line 1331
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_26
    .end packed-switch
.end method

.method public static getInstantUploadAlbumIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "notificationId"

    .prologue
    .line 1039
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, albumName:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumType(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v2

    const-string v3, "camera_sync_created"

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setNotificationId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    .line 1049
    .local v1, builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public static getLicenseActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter "context"

    .prologue
    .line 2008
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/LicenseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2009
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static getLocalReviewActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;II)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "reviewType"
    .parameter "reviewIndex"

    .prologue
    .line 1444
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/LocalReviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1445
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1447
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    const-string v1, "local_review_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1449
    const-string v1, "local_review_index"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1450
    return-object v0
.end method

.method public static getLocationSettingActivityIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 2207
    invoke-static {}, Lcom/google/android/apps/plus/phone/Intents;->isPreJellyBeanMR0()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 2210
    .local v0, action:Ljava/lang/String;
    :goto_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 2207
    .end local v0           #action:Ljava/lang/String;
    :cond_e
    const-string v0, "com.google.android.gsf.GOOGLE_LOCATION_SETTINGS"

    goto :goto_8
.end method

.method public static getMessengerActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1403
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1404
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1405
    const-string v1, "destination"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1406
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1407
    return-object v0
.end method

.method public static getMissedHangoutCallbackIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "originalHangoutInfo"
    .parameter "audience"

    .prologue
    const/4 v7, 0x1

    .line 2120
    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/hangout/HangoutActivity;

    invoke-direct {v8, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2121
    .local v8, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unique"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2122
    const-string v1, "account"

    invoke-virtual {v8, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2123
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/Hangout$Info;->getDomain()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/Hangout$Info;->getNick()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->MissedCall:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;Z)V

    .line 2127
    .local v0, hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    const-string v1, "hangout_info"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2128
    const-string v1, "hangout_skip_green_room"

    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2129
    const-string v1, "audience"

    invoke-virtual {v8, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2130
    return-object v8
.end method

.method public static getMuteActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 903
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/StreamOneUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 904
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 906
    const-string v1, "activity_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const-string v1, "mute"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 909
    return-object v0
.end method

.method public static getNetworkRequestsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2016
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/NetworkTransactionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2017
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2018
    return-object v0
.end method

.method public static getNetworkStatisticsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2025
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/NetworkStatisticsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2026
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2027
    return-object v0
.end method

.method public static getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "audience"

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    const-string v1, "audience"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 313
    return-object v0
.end method

.method public static getNewHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "ringInvitees"
    .parameter "audience"

    .prologue
    .line 2144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/hangout/HangoutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2145
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unique"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2146
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2147
    const-string v1, "audience"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2148
    const-string v1, "hangout_ring_invitees"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2149
    const-string v1, "hangout_skip_green_room"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2150
    return-object v0
.end method

.method public static getNextOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "intent"

    .prologue
    .line 526
    const-string v1, "oob_intents"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/OobIntents;

    .line 527
    .local v0, intents:Lcom/google/android/apps/plus/phone/OobIntents;
    if-nez v0, :cond_c

    .line 528
    const/4 v1, 0x0

    .line 531
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/plus/phone/OobIntents;->getNextIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_b
.end method

.method public static getNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 586
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 589
    const-string v1, "show_notifications"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 591
    return-object v0
.end method

.method public static getOobContactsSyncIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "oobIntents"

    .prologue
    .line 510
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/OobContactsSyncActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 513
    const-string v1, "oob_intents"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 515
    return-object v0
.end method

.method public static getOobInstantUploadIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "oobIntents"

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 495
    const-string v1, "oob_intents"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 497
    return-object v0
.end method

.method public static getOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "oob"

    .prologue
    .line 413
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/phone/OobIntents;->getInitialIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getOobSuggestedPeopleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "oobIntents"

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/OobSuggestedPeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 478
    const-string v1, "oob_intents"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 479
    return-object v0
.end method

.method public static getOutOfBoxActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "oobIntents"
    .parameter "oob"

    .prologue
    .line 457
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/OutOfBoxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    const-string v1, "oob_intents"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 461
    const-string v1, "network_oob"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 462
    return-object v0
.end method

.method public static getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "url"
    .parameter "param"

    .prologue
    const/4 v6, -0x1

    .line 1858
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object v1, p1

    .line 1859
    .local v1, queryParam:Ljava/lang/String;
    :goto_a
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1861
    .local v3, start:I
    if-eq v3, v6, :cond_3b

    .line 1862
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 1864
    const/16 v4, 0x26

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1867
    .local v0, end:I
    if-ne v0, v6, :cond_36

    .line 1868
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1874
    .end local v0           #end:I
    :goto_21
    return-object v2

    .line 1858
    .end local v1           #queryParam:Ljava/lang/String;
    .end local v3           #start:I
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1870
    .restart local v0       #end:I
    .restart local v1       #queryParam:Ljava/lang/String;
    .restart local v3       #start:I
    :cond_36
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, queryValue:Ljava/lang/String;
    goto :goto_21

    .line 1874
    .end local v0           #end:I
    .end local v2           #queryValue:Ljava/lang/String;
    :cond_3b
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public static getParticipantListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZZ)Landroid/content/Intent;
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "conversationName"
    .parameter "isGroup"
    .parameter "fromHangoutTile"

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/ParticipantListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 398
    const-string v1, "conversation_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "is_group"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    if-eqz p6, :cond_2d

    .line 401
    const-string v1, "tile"

    const-class v2, Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    :cond_2d
    return-object v0
.end method

.method public static getPeopleSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZIZZZZZ)Landroid/content/Intent;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "query"
    .parameter "pickerMode"
    .parameter "circleUsageType"
    .parameter "publicProfileSearchEnabled"
    .parameter "phoneOnlyContactsEnabled"
    .parameter "plusPagesEnabled"
    .parameter "peopleInCirclesEnabled"
    .parameter "filterNullGaiaIds"

    .prologue
    .line 1740
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1741
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1742
    const-string v1, "picker_mode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1743
    const-string v1, "search_circles_usage"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1744
    const-string v1, "search_pub_profiles_enabled"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1745
    const-string v1, "search_phones_enabled"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1746
    const-string v1, "search_plus_pages_enabled"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1747
    const-string v1, "search_in_circles_enabled"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1748
    const-string v1, "query"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1749
    const-string v1, "filter_null_gaia_ids"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1750
    return-object v0
.end method

.method public static getPeopleSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZIZZZZZ)Landroid/content/Intent;
    .registers 19
    .parameter "context"
    .parameter "account"
    .parameter "pickerMode"
    .parameter "circleUsageType"
    .parameter "publicProfileSearchEnabled"
    .parameter "phoneOnlyContactsEnabled"
    .parameter "plusPagesEnabled"
    .parameter "peopleInCirclesEnabled"
    .parameter "filterNullGaiaIds"

    .prologue
    .line 1711
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/google/android/apps/plus/phone/Intents;->getPeopleSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZIZZZZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;Z)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "displayName"
    .parameter "mediaRef"
    .parameter "allowCrop"

    .prologue
    .line 1104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1105
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1107
    const-string v1, "photo_picker_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1108
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const-string v1, "mediarefs"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1110
    const-string v1, "allow_crop"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1112
    return-object v0
.end method

.method public static getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "mediaRef"

    .prologue
    .line 1504
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1505
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    if-eqz p2, :cond_13

    .line 1507
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1510
    :cond_13
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1512
    return-object v0
.end method

.method public static getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "location"

    .prologue
    .line 1564
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1565
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1567
    if-eqz p2, :cond_18

    .line 1568
    const-string v1, "location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1571
    :cond_18
    return-object v0
.end method

.method public static getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1544
    .local p2, photoUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1545
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1546
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1547
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1549
    return-object v0
.end method

.method public static getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 923
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/StreamOneUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 924
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 926
    const-string v1, "activity_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    const-string v1, "refresh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 929
    return-object v0
.end method

.method public static getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "notificationId"
    .parameter "notificationType"
    .parameter "refresh"

    .prologue
    .line 967
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/StreamOneUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 968
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 970
    const-string v1, "activity_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    if-eqz p3, :cond_22

    .line 972
    const-string v1, "notif_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const-string v1, "notif_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    :cond_22
    const-string v1, "refresh"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 977
    return-object v0
.end method

.method public static getPostSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "query"

    .prologue
    .line 2192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/PostSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2194
    if-eqz p2, :cond_13

    .line 2195
    const-string v1, "query"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2197
    :cond_13
    return-object v0
.end method

.method public static getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "notificationId"

    .prologue
    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p3, v1}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "notificationId"

    .prologue
    .line 1307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1308
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1310
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    const-string v1, "notif_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1313
    return-object v0
.end method

.method public static getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "notificationId"
    .parameter "viewType"

    .prologue
    .line 1385
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1386
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1388
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    const-string v1, "profile_view_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1390
    return-object v0
.end method

.method public static getReshareActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "limited"

    .prologue
    .line 1484
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/ReshareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1485
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1487
    const-string v1, "activity_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    const-string v1, "limited"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1490
    return-object v0
.end method

.method public static getSettingsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 673
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 674
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 677
    return-object v0
.end method

.method public static getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 603
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 606
    const-string v1, "destination"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    return-object v0
.end method

.method public static getStreamOneUpActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 943
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/StreamOneUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 944
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 946
    const-string v1, "activity_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    const-string v1, "refresh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 949
    return-object v0
.end method

.method public static getSuggestedPeopleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1818
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1819
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1820
    const-string v1, "destination"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1821
    const-string v1, "people_view_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1822
    return-object v0
.end method

.method public static getTargetIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 2239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2241
    .local v0, result:Landroid/content/Intent;
    const-string v2, "calling_package"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2244
    const-string v2, "intent"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2246
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_34

    .line 2248
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/ads/LegacyPlusOneActivity;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2249
    const-string v1, "com.google.circles.platform.intent.action.PLUS1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2250
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/apps/plus/ads/PlusOneActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2267
    .end local v0           #result:Landroid/content/Intent;
    :goto_31
    return-object v0

    .restart local v0       #result:Landroid/content/Intent;
    :cond_32
    move-object v0, v1

    .line 2252
    goto :goto_31

    .line 2254
    :cond_34
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.circles.platform.intent.action.PLUS1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2255
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/apps/plus/ads/PlusOneActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_31

    .line 2257
    :cond_4b
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.apps.plus.action.PLUSONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2258
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/apps/plus/phone/PlusOneActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_31

    .line 2260
    :cond_62
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.apps.plus.SHARE_GOOGLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2263
    :cond_86
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/apps/plus/phone/ShareActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_31

    :cond_91
    move-object v0, v1

    .line 2265
    goto :goto_31
.end method

.method public static getVideoViewActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J[B)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "photoId"
    .parameter "videoData"

    .prologue
    .line 1127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/VideoViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1128
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1129
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1130
    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    const-string v1, "photo_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1132
    const-string v1, "data"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1134
    return-object v0
.end method

.method public static getViewEventActivityNotificationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"

    .prologue
    .line 772
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Lcom/google/android/apps/plus/phone/Intents;->getHostedEventIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 774
    .local v1, notificationIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 776
    .local v0, intent:Landroid/app/PendingIntent;
    return-object v0
.end method

.method public static getWhatsHotCircleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1230
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1232
    const-string v1, "destination"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1233
    const-string v1, "circle_id"

    const-string v2, "v.whatshot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    return-object v0
.end method

.method public static getWidgetCameraLauncherActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1683
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/widget/EsWidgetCameraLauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1684
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1685
    return-object v0
.end method

.method public static isCameraIntentRegistered(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 1157
    const-string v3, "camera-photo.jpg"

    invoke-static {p0, v3}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1158
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1159
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1161
    .local v2, receiverList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18

    const/4 v3, 0x1

    :goto_17
    return v3

    :cond_18
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public static isHashtagUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"

    .prologue
    .line 2931
    const-string v0, "gplus://app/stream/search?query=%23"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInitialOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Z
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "intent"

    .prologue
    .line 423
    const-string v1, "oob_intents"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/OobIntents;

    .line 424
    .local v0, intents:Lcom/google/android/apps/plus/phone/OobIntents;
    if-nez v0, :cond_c

    .line 425
    const/4 v1, 0x1

    .line 428
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/OobIntents;->isInitialIntent()Z

    move-result v1

    goto :goto_b
.end method

.method public static isLastOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Z
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "intent"

    .prologue
    .line 438
    const-string v1, "oob_intents"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/OobIntents;

    .line 439
    .local v0, intents:Lcom/google/android/apps/plus/phone/OobIntents;
    if-nez v0, :cond_c

    .line 440
    const/4 v1, 0x1

    .line 443
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/plus/phone/OobIntents;->isLastIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    goto :goto_b
.end method

.method public static isPreJellyBeanMR0()Z
    .registers 5

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2217
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v4, :cond_a

    move v1, v2

    .line 2223
    .local v0, release:Ljava/lang/String;
    :cond_9
    :goto_9
    return v1

    .line 2219
    .end local v0           #release:Ljava/lang/String;
    :cond_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v4, :cond_9

    .line 2222
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2223
    .restart local v0       #release:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "4.1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "4.1.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "4.1.1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_2e
    move v1, v2

    goto :goto_9
.end method

.method public static isProfileUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"

    .prologue
    .line 1973
    const-string v0, "#~loop:svt=person&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static makeProfileUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "personId"

    .prologue
    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#~loop:svt=person&view=stream&pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newAlbumsActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 4
    .parameter "context"

    .prologue
    .line 1089
    new-instance v0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    const-class v1, Lcom/google/android/apps/plus/phone/HostAlbumsActivity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/apps/plus/phone/Intents$1;)V

    return-object v0
.end method

.method public static newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 4
    .parameter "context"

    .prologue
    .line 1059
    new-instance v0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    const-class v1, Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/apps/plus/phone/Intents$1;)V

    return-object v0
.end method

.method public static newPhotoViewFragmentIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .registers 4
    .parameter "context"

    .prologue
    .line 1069
    new-instance v0, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    const-class v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/apps/plus/phone/Intents$1;)V

    return-object v0
.end method

.method public static newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .registers 4
    .parameter "context"

    .prologue
    .line 1079
    new-instance v0, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    const-class v1, Lcom/google/android/apps/plus/phone/HostPhotosActivity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/apps/plus/phone/Intents$1;)V

    return-object v0
.end method

.method public static viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 25
    .parameter "context"
    .parameter "account"
    .parameter "url"

    .prologue
    .line 1885
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/phone/Intents;->isProfileUrl(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_28

    .line 1886
    const-string v20, "pid="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1887
    .local v16, gaiaId:Ljava/lang/String;
    if-eqz v16, :cond_27

    .line 1889
    const/16 v20, 0x0

    :try_start_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_27} :catch_18e

    .line 1967
    .end local v16           #gaiaId:Ljava/lang/String;
    :cond_27
    :goto_27
    return-void

    .line 1896
    :cond_28
    const-string v20, "#~loop:svt=album&"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_fe

    .line 1897
    const-string v20, "aid="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1898
    .local v5, aid:Ljava/lang/String;
    const-string v20, "eid="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1899
    .local v15, eid:Ljava/lang/String;
    const-string v20, "sid="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1900
    .local v12, astream:Ljava/lang/String;
    const-string v20, "oid="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1901
    .local v17, ownerId:Ljava/lang/String;
    const-string v20, "aname="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1903
    .local v11, aname:Ljava/lang/String;
    if-eqz v15, :cond_84

    .line 1905
    invoke-static {v15}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getHostedEventIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 1908
    .local v19, startIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_27

    .line 1909
    .end local v19           #startIntent:Landroid/content/Intent;
    :cond_84
    if-eqz v12, :cond_c0

    if-eqz v17, :cond_c0

    .line 1911
    :try_start_88
    invoke-static {v12}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1912
    .local v9, albumStream:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1913
    .local v8, albumName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v13

    .line 1919
    .local v13, builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    invoke-virtual {v13}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_bb} :catch_bd

    goto/16 :goto_27

    .line 1920
    .end local v8           #albumName:Ljava/lang/String;
    .end local v9           #albumStream:Ljava/lang/String;
    .end local v13           #builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    :catch_bd
    move-exception v20

    goto/16 :goto_27

    .line 1923
    :cond_c0
    if-eqz v5, :cond_27

    if-eqz v17, :cond_27

    .line 1925
    :try_start_c4
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1926
    .local v6, albumId:J
    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1927
    .restart local v8       #albumName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v13

    .line 1933
    .restart local v13       #builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    invoke-virtual {v13}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_c4 .. :try_end_f9} :catch_fb

    goto/16 :goto_27

    .line 1934
    .end local v6           #albumId:J
    .end local v8           #albumName:Ljava/lang/String;
    .end local v13           #builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    :catch_fb
    move-exception v20

    goto/16 :goto_27

    .line 1946
    .end local v5           #aid:Ljava/lang/String;
    .end local v11           #aname:Ljava/lang/String;
    .end local v12           #astream:Ljava/lang/String;
    .end local v15           #eid:Ljava/lang/String;
    .end local v17           #ownerId:Ljava/lang/String;
    :cond_fe
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1947
    .local v10, albumUri:Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    .line 1948
    .local v18, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_185

    const-string v20, "photos"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_185

    const-string v20, "albums"

    const/16 v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_185

    .line 1951
    const/16 v20, 0x1

    :try_start_138
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1952
    .restart local v17       #ownerId:Ljava/lang/String;
    const/16 v20, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1953
    .restart local v6       #albumId:J
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v13

    .line 1958
    .restart local v13       #builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    invoke-virtual {v13}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_179
    .catch Ljava/lang/NumberFormatException; {:try_start_138 .. :try_end_179} :catch_17b

    goto/16 :goto_27

    .line 1959
    .end local v6           #albumId:J
    .end local v13           #builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .end local v17           #ownerId:Ljava/lang/String;
    :catch_17b
    move-exception v14

    .line 1961
    .local v14, e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->viewUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 1964
    .end local v14           #e:Ljava/lang/NumberFormatException;
    :cond_185
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->viewUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 1892
    .end local v10           #albumUri:Landroid/net/Uri;
    .end local v18           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16       #gaiaId:Ljava/lang/String;
    :catch_18e
    move-exception v20

    goto/16 :goto_27
.end method

.method public static viewUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "url"

    .prologue
    .line 1994
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1995
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1996
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1997
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1998
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 2002
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1f
    return-void

    .line 1999
    :catch_20
    move-exception v0

    .line 2000
    .local v0, exception:Landroid/content/ActivityNotFoundException;
    const-string v2, "Intents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.class public final Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notification"
.end annotation


# instance fields
.field private appData_:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

.field private appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field private cachedSize:I

.field private docTitle_:Ljava/lang/String;

.field private docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private hasAppData:Z

.field private hasAppDeliveryData:Z

.field private hasDocTitle:Z

.field private hasDocid:Z

.field private hasInAppNotificationData:Z

.field private hasLibraryDirtyData:Z

.field private hasLibraryUpdate:Z

.field private hasNotificationId:Z

.field private hasNotificationType:Z

.field private hasPurchaseDeclinedData:Z

.field private hasPurchaseRemovalData:Z

.field private hasTimestamp:Z

.field private hasUserEmail:Z

.field private hasUserNotificationData:Z

.field private inAppNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

.field private libraryDirtyData_:Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

.field private libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

.field private notificationId_:Ljava/lang/String;

.field private notificationType_:I

.field private purchaseDeclinedData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

.field private purchaseRemovalData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

.field private timestamp_:J

.field private userEmail_:Ljava/lang/String;

.field private userNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 772
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 785
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationType_:I

    .line 802
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationId_:Ljava/lang/String;

    .line 819
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->timestamp_:J

    .line 836
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 856
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docTitle_:Ljava/lang/String;

    .line 873
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userEmail_:Ljava/lang/String;

    .line 890
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 910
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appData_:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    .line 930
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 950
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseRemovalData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    .line 970
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseDeclinedData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    .line 990
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    .line 1010
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->inAppNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    .line 1030
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryDirtyData_:Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    .line 1129
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->cachedSize:I

    .line 772
    return-void
.end method


# virtual methods
.method public getAppData()Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
    .registers 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appData_:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    return-object v0
.end method

.method public getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1131
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->cachedSize:I

    if-gez v0, :cond_7

    .line 1133
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getSerializedSize()I

    .line 1135
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->cachedSize:I

    return v0
.end method

.method public getDocTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getInAppNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    .registers 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->inAppNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    return-object v0
.end method

.method public getLibraryDirtyData()Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
    .registers 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryDirtyData_:Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    return-object v0
.end method

.method public getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .registers 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    return-object v0
.end method

.method public getNotificationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationType()I
    .registers 2

    .prologue
    .line 787
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationType_:I

    return v0
.end method

.method public getPurchaseDeclinedData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    .registers 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseDeclinedData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    return-object v0
.end method

.method public getPurchaseRemovalData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
    .registers 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseRemovalData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 1139
    const/4 v0, 0x0

    .line 1140
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1141
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1144
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1145
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getTimestamp()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1148
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocid()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1149
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1152
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocTitle()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1153
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1156
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserEmail()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1157
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1160
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppData()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1161
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getAppData()Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1164
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppDeliveryData()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1165
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1168
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseRemovalData()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1169
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getPurchaseRemovalData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1172
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserNotificationData()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1173
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1176
    :cond_94
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasInAppNotificationData()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1177
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getInAppNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1180
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseDeclinedData()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1181
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getPurchaseDeclinedData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1184
    :cond_b6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationId()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 1185
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1188
    :cond_c7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryUpdate()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 1189
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1192
    :cond_d8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryDirtyData()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 1193
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryDirtyData()Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1196
    :cond_e9
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->cachedSize:I

    .line 1197
    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 820
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->timestamp_:J

    return-wide v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    .registers 2

    .prologue
    .line 992
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    return-object v0
.end method

.method public hasAppData()Z
    .registers 2

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppData:Z

    return v0
.end method

.method public hasAppDeliveryData()Z
    .registers 2

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppDeliveryData:Z

    return v0
.end method

.method public hasDocTitle()Z
    .registers 2

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocTitle:Z

    return v0
.end method

.method public hasDocid()Z
    .registers 2

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocid:Z

    return v0
.end method

.method public hasInAppNotificationData()Z
    .registers 2

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasInAppNotificationData:Z

    return v0
.end method

.method public hasLibraryDirtyData()Z
    .registers 2

    .prologue
    .line 1031
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryDirtyData:Z

    return v0
.end method

.method public hasLibraryUpdate()Z
    .registers 2

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryUpdate:Z

    return v0
.end method

.method public hasNotificationId()Z
    .registers 2

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationId:Z

    return v0
.end method

.method public hasNotificationType()Z
    .registers 2

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationType:Z

    return v0
.end method

.method public hasPurchaseDeclinedData()Z
    .registers 2

    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseDeclinedData:Z

    return v0
.end method

.method public hasPurchaseRemovalData()Z
    .registers 2

    .prologue
    .line 951
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseRemovalData:Z

    return v0
.end method

.method public hasTimestamp()Z
    .registers 2

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasTimestamp:Z

    return v0
.end method

.method public hasUserEmail()Z
    .registers 2

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserEmail:Z

    return v0
.end method

.method public hasUserNotificationData()Z
    .registers 2

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserNotificationData:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1205
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_a6

    .line 1209
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1210
    :sswitch_d
    return-object p0

    .line 1215
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setNotificationType(I)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1219
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setTimestamp(J)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1223
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 1224
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1225
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1229
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setDocTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1233
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setUserEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1237
    :sswitch_3a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;-><init>()V

    .line 1238
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1239
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setAppData(Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1243
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
    :sswitch_46
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    .line 1244
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1245
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1249
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    :sswitch_52
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;-><init>()V

    .line 1250
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1251
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setPurchaseRemovalData(Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1255
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;
    :sswitch_5e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;-><init>()V

    .line 1256
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1257
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setUserNotificationData(Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1261
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    :sswitch_6a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;-><init>()V

    .line 1262
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1263
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setInAppNotificationData(Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto :goto_0

    .line 1267
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;
    :sswitch_76
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;-><init>()V

    .line 1268
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1269
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setPurchaseDeclinedData(Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto/16 :goto_0

    .line 1273
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;
    :sswitch_83
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setNotificationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto/16 :goto_0

    .line 1277
    :sswitch_8c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;-><init>()V

    .line 1278
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1279
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto/16 :goto_0

    .line 1283
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    :sswitch_99
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;-><init>()V

    .line 1284
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1285
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->setLibraryDirtyData(Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    goto/16 :goto_0

    .line 1205
    :sswitch_data_a6
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x18 -> :sswitch_16
        0x22 -> :sswitch_1e
        0x2a -> :sswitch_2a
        0x32 -> :sswitch_32
        0x3a -> :sswitch_3a
        0x42 -> :sswitch_46
        0x4a -> :sswitch_52
        0x52 -> :sswitch_5e
        0x5a -> :sswitch_6a
        0x62 -> :sswitch_76
        0x6a -> :sswitch_83
        0x72 -> :sswitch_8c
        0x7a -> :sswitch_99
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAppData(Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 914
    if-nez p1, :cond_8

    .line 915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 917
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppData:Z

    .line 918
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appData_:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    .line 919
    return-object p0
.end method

.method public setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 934
    if-nez p1, :cond_8

    .line 935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 937
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppDeliveryData:Z

    .line 938
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 939
    return-object p0
.end method

.method public setDocTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocTitle:Z

    .line 861
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docTitle_:Ljava/lang/String;

    .line 862
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 840
    if-nez p1, :cond_8

    .line 841
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 843
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocid:Z

    .line 844
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 845
    return-object p0
.end method

.method public setInAppNotificationData(Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 1014
    if-nez p1, :cond_8

    .line 1015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1017
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasInAppNotificationData:Z

    .line 1018
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->inAppNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    .line 1019
    return-object p0
.end method

.method public setLibraryDirtyData(Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 1034
    if-nez p1, :cond_8

    .line 1035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1037
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryDirtyData:Z

    .line 1038
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryDirtyData_:Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    .line 1039
    return-object p0
.end method

.method public setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 894
    if-nez p1, :cond_8

    .line 895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 897
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryUpdate:Z

    .line 898
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 899
    return-object p0
.end method

.method public setNotificationId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationId:Z

    .line 807
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationId_:Ljava/lang/String;

    .line 808
    return-object p0
.end method

.method public setNotificationType(I)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationType:Z

    .line 790
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->notificationType_:I

    .line 791
    return-object p0
.end method

.method public setPurchaseDeclinedData(Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 974
    if-nez p1, :cond_8

    .line 975
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 977
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseDeclinedData:Z

    .line 978
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseDeclinedData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    .line 979
    return-object p0
.end method

.method public setPurchaseRemovalData(Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 954
    if-nez p1, :cond_8

    .line 955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 957
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseRemovalData:Z

    .line 958
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->purchaseRemovalData_:Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    .line 959
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 4
    .parameter "value"

    .prologue
    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasTimestamp:Z

    .line 824
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->timestamp_:J

    .line 825
    return-object p0
.end method

.method public setUserEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserEmail:Z

    .line 878
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userEmail_:Ljava/lang/String;

    .line 879
    return-object p0
.end method

.method public setUserNotificationData(Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .registers 3
    .parameter "value"

    .prologue
    .line 994
    if-nez p1, :cond_8

    .line 995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 997
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserNotificationData:Z

    .line 998
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->userNotificationData_:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    .line 999
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1086
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1088
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1089
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1091
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1092
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1094
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasDocTitle()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1095
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1097
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserEmail()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1098
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1100
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppData()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1101
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getAppData()Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1103
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppDeliveryData()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1104
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1106
    :cond_63
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseRemovalData()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1107
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getPurchaseRemovalData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1109
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasUserNotificationData()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1110
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1112
    :cond_81
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasInAppNotificationData()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1113
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getInAppNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1115
    :cond_90
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseDeclinedData()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1116
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getPurchaseDeclinedData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1118
    :cond_9f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasNotificationId()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1119
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1121
    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1122
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1124
    :cond_bd
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryDirtyData()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1125
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryDirtyData()Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1127
    :cond_cc
    return-void
.end method

.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiSettingsOrBuilder;
.super Ljava/lang/Object;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiSettingsOrBuilder"
.end annotation


# virtual methods
.method public abstract getCallPresentationEnabled()Z
.end method

.method public abstract getClearSmsVmailNotifications()Z
.end method

.method public abstract getDefaultGreetingId()I
.end method

.method public abstract getDoNotDisturb()Z
.end method

.method public abstract getEmailNotificationAddress(I)Ljava/lang/String;
.end method

.method public abstract getEmailNotificationAddressBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEmailNotificationAddressCount()I
.end method

.method public abstract getEmailNotificationAddressList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmailNotificationEnabled()Z
.end method

.method public abstract getForwardingPhone(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
.end method

.method public abstract getForwardingPhoneCount()I
.end method

.method public abstract getForwardingPhoneList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForwardingPhoneName(I)Ljava/lang/String;
.end method

.method public abstract getForwardingPhoneNameBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getForwardingPhoneNameCount()I
.end method

.method public abstract getForwardingPhoneNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGaiaEmailAddress(I)Ljava/lang/String;
.end method

.method public abstract getGaiaEmailAddressBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGaiaEmailAddressCount()I
.end method

.method public abstract getGaiaEmailAddressList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGreeting(I)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
.end method

.method public abstract getGreetingCount()I
.end method

.method public abstract getGreetingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGreeting;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxForwardingPhones()I
.end method

.method public abstract getScreenBehavior()I
.end method

.method public abstract getSmsInSubjectOfNotificationEnabled()Z
.end method

.method public abstract getSmsNotificationPhoneName(I)Ljava/lang/String;
.end method

.method public abstract getSmsNotificationPhoneNameBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSmsNotificationPhoneNameCount()I
.end method

.method public abstract getSmsNotificationPhoneNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmsToEmailEnabled()Z
.end method

.method public abstract getSmsVmailNotification(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
.end method

.method public abstract getSmsVmailNotificationCount()I
.end method

.method public abstract getSmsVmailNotificationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTemporaryForwardingPhone()Ljava/lang/String;
.end method

.method public abstract getTemporaryForwardingPhoneBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTemporaryForwardingPhoneFormatted()Ljava/lang/String;
.end method

.method public abstract getTemporaryForwardingPhoneFormattedBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUseDidAsCallerId()Z
.end method

.method public abstract hasCallPresentationEnabled()Z
.end method

.method public abstract hasClearSmsVmailNotifications()Z
.end method

.method public abstract hasDefaultGreetingId()Z
.end method

.method public abstract hasDoNotDisturb()Z
.end method

.method public abstract hasEmailNotificationEnabled()Z
.end method

.method public abstract hasMaxForwardingPhones()Z
.end method

.method public abstract hasScreenBehavior()Z
.end method

.method public abstract hasSmsInSubjectOfNotificationEnabled()Z
.end method

.method public abstract hasSmsToEmailEnabled()Z
.end method

.method public abstract hasTemporaryForwardingPhone()Z
.end method

.method public abstract hasTemporaryForwardingPhoneFormatted()Z
.end method

.method public abstract hasUseDidAsCallerId()Z
.end method

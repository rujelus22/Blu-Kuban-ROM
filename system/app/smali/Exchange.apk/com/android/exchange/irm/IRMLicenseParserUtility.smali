.class public Lcom/android/exchange/irm/IRMLicenseParserUtility;
.super Ljava/lang/Object;
.source "IRMLicenseParserUtility.java"


# static fields
.field public static mRenewLicense:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/exchange/irm/IRMLicenseParserUtility;->mRenewLicense:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLicense(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/adapter/AbstractSyncParser;)V
    .registers 6
    .parameter "msg"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    iput v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    .line 101
    :goto_3
    const/16 v1, 0x608

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c1

    .line 105
    iget v1, p1, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_c2

    .line 229
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_3

    .line 109
    :pswitch_15
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    goto :goto_3

    .line 115
    :pswitch_1c
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    goto :goto_3

    .line 121
    :pswitch_23
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    goto :goto_3

    .line 127
    :pswitch_2a
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    .line 129
    .local v0, temp:I
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    shl-int/lit8 v2, v0, 0x2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    goto :goto_3

    .line 135
    .end local v0           #temp:I
    :pswitch_36
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    .line 137
    .restart local v0       #temp:I
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    shl-int/lit8 v2, v0, 0x3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    goto :goto_3

    .line 143
    .end local v0           #temp:I
    :pswitch_42
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    .line 145
    .restart local v0       #temp:I
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    shl-int/lit8 v2, v0, 0x0

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    goto :goto_3

    .line 151
    .end local v0           #temp:I
    :pswitch_4e
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    .line 153
    .restart local v0       #temp:I
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    shl-int/lit8 v2, v0, 0x1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    goto :goto_3

    .line 159
    .end local v0           #temp:I
    :pswitch_5a
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    .line 161
    .restart local v0       #temp:I
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    goto :goto_3

    .line 167
    .end local v0           #temp:I
    :pswitch_66
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    .line 169
    .restart local v0       #temp:I
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    goto :goto_3

    .line 175
    .end local v0           #temp:I
    :pswitch_72
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    .line 177
    .restart local v0       #temp:I
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    shl-int/lit8 v2, v0, 0x5

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    goto :goto_3

    .line 183
    .end local v0           #temp:I
    :pswitch_7e
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    const-string v2, "12082020t6789407z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 187
    sput-boolean v3, Lcom/android/exchange/irm/IRMLicenseParserUtility;->mRenewLicense:Z

    goto/16 :goto_3

    .line 193
    :cond_92
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/exchange/irm/IRMLicenseParserUtility;->mRenewLicense:Z

    goto/16 :goto_3

    .line 199
    :pswitch_97
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    .line 201
    .restart local v0       #temp:I
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    shl-int/lit8 v2, v0, 0x7

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    goto/16 :goto_3

    .line 207
    .end local v0           #temp:I
    :pswitch_a4
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v0

    .line 209
    .restart local v0       #temp:I
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    goto/16 :goto_3

    .line 215
    .end local v0           #temp:I
    :pswitch_b1
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    goto/16 :goto_3

    .line 221
    :pswitch_b9
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    goto/16 :goto_3

    .line 235
    :cond_c1
    return-void

    .line 105
    :pswitch_data_c2
    .packed-switch 0x609
        :pswitch_36
        :pswitch_42
        :pswitch_2a
        :pswitch_4e
        :pswitch_66
        :pswitch_72
        :pswitch_97
        :pswitch_5a
        :pswitch_a4
        :pswitch_15
        :pswitch_7e
        :pswitch_1c
        :pswitch_b1
        :pswitch_b9
        :pswitch_23
    .end packed-switch
.end method

.method public static renewLicense(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 11
    .parameter "mExpiryDate"
    .parameter "mMessageId"
    .parameter "mContext"

    .prologue
    const/4 v7, 0x0

    .line 255
    const-string v5, "IRMParserUtility"

    const-string v6, "Inside renew license if IRM"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v0, expiryIntent:Landroid/content/Intent;
    const-string v5, "expiry"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v5, "MessageId"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-static {p2, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 265
    .local v4, sender:Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 267
    .local v3, manager:Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v1

    .line 269
    .local v1, mExpiryDateInMillis:J
    invoke-virtual {v3, v7, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 271
    return-void
.end method

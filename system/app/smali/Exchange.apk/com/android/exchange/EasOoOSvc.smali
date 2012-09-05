.class public Lcom/android/exchange/EasOoOSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasOoOSvc.java"


# instance fields
.field private mEndDate:Ljava/util/Date;

.field private mExternalKnownMsg:Ljava/lang/String;

.field private mExternalUnKnownMsg:Ljava/lang/String;

.field private mInternalMsg:Ljava/lang/String;

.field private mIsExtKnown:Z

.field private mIsExtUnKnown:Z

.field private mIsGlobal:Z

.field private mIsInternal:Z

.field private mIsTimeBased:Z

.field private mStartDate:Ljava/util/Date;

.field private mSvcData:Lcom/android/emailcommon/service/OoODataList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/service/OoODataList;)V
    .registers 7
    .parameter "_context"
    .parameter "_acc"
    .parameter "data"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 153
    iput-object p3, p0, Lcom/android/exchange/EasOoOSvc;->mSvcData:Lcom/android/emailcommon/service/OoODataList;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    iput-boolean v0, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    iput-boolean v0, p0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    iput-boolean v0, p0, Lcom/android/exchange/EasOoOSvc;->mIsGlobal:Z

    iput-boolean v0, p0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    .line 157
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mStartDate:Ljava/util/Date;

    .line 159
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mEndDate:Ljava/util/Date;

    .line 163
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 171
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    sget-wide v1, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_OoO:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 173
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 175
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const-string v1, "OoO"

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 179
    return-void
.end method

.method private convertLocalToUTC(J)Ljava/lang/String;
    .registers 9
    .parameter "millis"

    .prologue
    const/4 v5, 0x0

    .line 185
    new-instance v2, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 187
    .local v2, utcTime:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 189
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, result:Ljava/lang/String;
    const-string v3, "000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, actualResult:[Ljava/lang/String;
    if-eqz v0, :cond_35

    .line 197
    aget-object v3, v0, v5

    if-eqz v3, :cond_35

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "000Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 201
    aget-object v3, v0, v5

    .line 207
    :goto_34
    return-object v3

    :cond_35
    const/4 v3, 0x0

    goto :goto_34
.end method

.method private getOoO()I
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    .line 657
    const/4 v11, 0x0

    .line 661
    .local v11, result:I
    new-instance v27, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v27 .. v27}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 665
    .local v27, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v2, 0x485

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x489

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x487

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x493

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 677
    :try_start_47
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v2, :cond_75

    .line 679
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "getOoO(): Wbxml:"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v18

    .line 683
    .local v18, b:[B
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 685
    .local v19, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v24, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 687
    .local v24, logA:Lcom/android/exchange/adapter/LogAdapter;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 695
    .end local v18           #b:[B
    .end local v19           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v24           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_75
    const-string v2, "Settings"

    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const v4, 0x13880

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/exchange/EasOoOSvc;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_88} :catch_ea

    move-result-object v25

    .line 711
    .local v25, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v29

    .line 717
    .local v29, status:I
    const-string v2, "getOoO(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 721
    const/16 v2, 0xc8

    move/from16 v0, v29

    if-ne v0, v2, :cond_140

    .line 723
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    .line 725
    .local v21, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v23, v0

    .line 727
    .local v23, len:I
    if-eqz v23, :cond_12f

    .line 729
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v22

    .line 731
    .local v22, in:Ljava/io/InputStream;
    new-instance v28, Lcom/android/exchange/adapter/OoOCommandParser;

    new-instance v2, Lcom/android/exchange/adapter/SettingsCommandAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/android/exchange/adapter/SettingsCommandAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/OoOCommandParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 737
    .local v28, sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :try_start_c5
    invoke-virtual/range {v28 .. v28}, Lcom/android/exchange/adapter/OoOCommandParser;->parse()Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 739
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 747
    .local v7, parserResult:Landroid/os/Bundle;
    sget-object v2, Lcom/android/emailcommon/utility/OoOConstants;->OOO_GET_DATA:Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Lcom/android/exchange/adapter/OoOCommandParser;->getParsedData()Lcom/android/emailcommon/service/OoODataList;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_e7} :catch_119

    .end local v7           #parserResult:Landroid/os/Bundle;
    .end local v21           #entity:Lorg/apache/http/HttpEntity;
    .end local v22           #in:Ljava/io/InputStream;
    .end local v23           #len:I
    .end local v28           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :goto_e7
    move/from16 v26, v11

    .line 811
    .end local v11           #result:I
    .end local v25           #resp:Lorg/apache/http/HttpResponse;
    .end local v29           #status:I
    .local v26, result:I
    :goto_e9
    return v26

    .line 699
    .end local v26           #result:I
    .restart local v11       #result:I
    :catch_ea
    move-exception v20

    .line 701
    .local v20, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, -0x3

    const/16 v6, 0x64

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    move/from16 v26, v11

    .line 705
    .end local v11           #result:I
    .restart local v26       #result:I
    goto :goto_e9

    .line 757
    .end local v20           #e:Ljava/lang/Exception;
    .end local v26           #result:I
    .restart local v11       #result:I
    .restart local v21       #entity:Lorg/apache/http/HttpEntity;
    .restart local v22       #in:Ljava/io/InputStream;
    .restart local v23       #len:I
    .restart local v25       #resp:Lorg/apache/http/HttpResponse;
    .restart local v28       #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    .restart local v29       #status:I
    :cond_fe
    :try_start_fe
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->isProvisionError(I)Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 759
    const/16 v11, 0x17

    .line 769
    :goto_10a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v12, 0x64

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_118} :catch_119

    goto :goto_e7

    .line 775
    :catch_119
    move-exception v20

    .line 777
    .restart local v20       #e:Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v13, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v15, -0x9

    const/16 v16, 0x64

    const/16 v17, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v17}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    goto :goto_e7

    .line 763
    .end local v20           #e:Ljava/lang/Exception;
    :cond_12d
    const/4 v11, -0x8

    goto :goto_10a

    .line 787
    .end local v22           #in:Ljava/io/InputStream;
    .end local v28           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :cond_12f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v13, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v15, 0x0

    const/16 v16, 0x64

    const/16 v17, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v17}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    goto :goto_e7

    .line 793
    .end local v21           #entity:Lorg/apache/http/HttpEntity;
    .end local v23           #len:I
    :cond_140
    const/16 v11, 0x15

    .line 795
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->isProvisionError(I)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 797
    const/16 v11, 0x17

    .line 805
    :cond_14e
    :goto_14e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v12, 0x64

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    goto :goto_e7

    .line 799
    :cond_15d
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->isAuthError(I)Z

    move-result v2

    if-eqz v2, :cond_14e

    .line 801
    const/16 v11, 0x16

    goto :goto_14e
.end method

.method private outOfOfficeCb(JIILandroid/os/Bundle;)V
    .registers 12
    .parameter "accId"
    .parameter "status"
    .parameter "progress"
    .parameter "results"

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->oOOfStatus(JIILandroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 225
    :goto_b
    return-void

    .line 219
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method private prepareSetCommand()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 231
    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsGlobal:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    .line 235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mSvcData:Lcom/android/emailcommon/service/OoODataList;

    invoke-virtual {v2}, Lcom/android/emailcommon/service/OoODataList;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_92

    .line 237
    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mSvcData:Lcom/android/emailcommon/service/OoODataList;

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/service/OoODataList;->getItem(I)Lcom/android/emailcommon/service/OoOData;

    move-result-object v1

    .line 243
    .local v1, singleData:Lcom/android/emailcommon/service/OoOData;
    if-eqz v1, :cond_22

    .line 247
    iget v2, v1, Lcom/android/emailcommon/service/OoOData;->state:I

    packed-switch v2, :pswitch_data_94

    .line 235
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 251
    :pswitch_25
    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsGlobal:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    goto :goto_22

    .line 261
    :pswitch_30
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsGlobal:Z

    .line 263
    iget v2, v1, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v2, :pswitch_data_9e

    goto :goto_22

    .line 267
    :pswitch_38
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    .line 269
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 271
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mInternalMsg:Ljava/lang/String;

    goto :goto_22

    .line 277
    :pswitch_43
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    .line 279
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 281
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mExternalKnownMsg:Ljava/lang/String;

    goto :goto_22

    .line 287
    :pswitch_4e
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    .line 289
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 291
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mExternalUnKnownMsg:Ljava/lang/String;

    goto :goto_22

    .line 305
    :pswitch_59
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    .line 307
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    if-eqz v2, :cond_63

    .line 309
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mStartDate:Ljava/util/Date;

    .line 311
    :cond_63
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    if-eqz v2, :cond_6b

    .line 313
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mEndDate:Ljava/util/Date;

    .line 317
    :cond_6b
    iget v2, v1, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v2, :pswitch_data_a8

    goto :goto_22

    .line 321
    :pswitch_71
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    .line 323
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 325
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mInternalMsg:Ljava/lang/String;

    goto :goto_22

    .line 331
    :pswitch_7c
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    .line 333
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 335
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mExternalKnownMsg:Ljava/lang/String;

    goto :goto_22

    .line 341
    :pswitch_87
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    .line 343
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 345
    iget-object v2, v1, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mExternalUnKnownMsg:Ljava/lang/String;

    goto :goto_22

    .line 369
    .end local v1           #singleData:Lcom/android/emailcommon/service/OoOData;
    :cond_92
    return-void

    .line 247
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_25
        :pswitch_30
        :pswitch_59
    .end packed-switch

    .line 263
    :pswitch_data_9e
    .packed-switch 0x4
        :pswitch_38
        :pswitch_43
        :pswitch_4e
    .end packed-switch

    .line 317
    :pswitch_data_a8
    .packed-switch 0x4
        :pswitch_71
        :pswitch_7c
        :pswitch_87
    .end packed-switch
.end method

.method private setOoO()I
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    .line 379
    const/16 v22, 0x0

    .line 381
    .local v22, result:I
    new-instance v23, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v23 .. v23}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 385
    .local v23, s:Lcom/android/exchange/adapter/Serializer;
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasOoOSvc;->prepareSetCommand()V

    .line 389
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    if-nez v2, :cond_107

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasOoOSvc;->mIsGlobal:Z

    if-nez v2, :cond_107

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    if-nez v2, :cond_107

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    if-nez v2, :cond_107

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    if-nez v2, :cond_107

    .line 391
    const/16 v2, 0x485

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x489

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x488

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x48a

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 517
    :goto_69
    const/16 v21, 0x0

    .line 523
    .local v21, resp:Lorg/apache/http/HttpResponse;
    :try_start_6b
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v2, :cond_93

    .line 525
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "setOoO(): Wbxml:"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {v23 .. v23}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v14

    .line 529
    .local v14, b:[B
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 531
    .local v15, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v20, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 533
    .local v20, logA:Lcom/android/exchange/adapter/LogAdapter;
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 539
    .end local v14           #b:[B
    .end local v15           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v20           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_93
    const-string v2, "Settings"

    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v23 .. v23}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const v4, 0x13880

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/exchange/EasOoOSvc;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_a6} :catch_37e

    move-result-object v21

    .line 557
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    .line 563
    .local v25, status:I
    const-string v2, "setOoO(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 567
    const/16 v2, 0xc8

    move/from16 v0, v25

    if-ne v0, v2, :cond_3ca

    .line 569
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 571
    .local v17, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v19, v0

    .line 573
    .local v19, len:I
    if-eqz v19, :cond_3b7

    .line 575
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    .line 577
    .local v18, in:Ljava/io/InputStream;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 579
    .local v7, bundle:Landroid/os/Bundle;
    new-instance v24, Lcom/android/exchange/adapter/OoOCommandParser;

    new-instance v2, Lcom/android/exchange/adapter/SettingsCommandAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/android/exchange/adapter/SettingsCommandAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/OoOCommandParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 583
    .local v24, sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    invoke-virtual/range {v24 .. v24}, Lcom/android/exchange/adapter/OoOCommandParser;->parse()Z

    move-result v2

    if-eqz v2, :cond_394

    .line 585
    sget-object v2, Lcom/android/emailcommon/utility/OoOConstants;->OOO_SET_DATA:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    move/from16 v5, v22

    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v17           #entity:Lorg/apache/http/HttpEntity;
    .end local v18           #in:Ljava/io/InputStream;
    .end local v19           #len:I
    .end local v22           #result:I
    .end local v24           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    .local v5, result:I
    :goto_104
    move/from16 v22, v5

    .line 637
    .end local v5           #result:I
    .end local v25           #status:I
    :goto_106
    return v22

    .line 399
    .end local v21           #resp:Lorg/apache/http/HttpResponse;
    .restart local v22       #result:I
    :cond_107
    const/16 v2, 0x485

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x489

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x488

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    .line 403
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    if-eqz v2, :cond_242

    .line 405
    const/16 v2, 0x48a

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    .line 411
    const/16 v2, 0x48b

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasOoOSvc;->mStartDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/exchange/EasOoOSvc;->convertLocalToUTC(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    .line 415
    const/16 v2, 0x48c

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasOoOSvc;->mEndDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/exchange/EasOoOSvc;->convertLocalToUTC(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    .line 425
    :goto_16f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    if-eqz v2, :cond_256

    .line 427
    const/16 v2, 0x48d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x48e

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x491

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x492

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasOoOSvc;->mInternalMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x493

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    .line 449
    :goto_1bd
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    if-eqz v2, :cond_298

    .line 453
    const/16 v2, 0x48d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x48f

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x491

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x492

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasOoOSvc;->mExternalKnownMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x493

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    .line 463
    const/16 v2, 0x48d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x490

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x491

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    .line 509
    :goto_231
    invoke-virtual/range {v23 .. v23}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    .line 511
    invoke-virtual/range {v23 .. v23}, Lcom/android/exchange/adapter/Serializer;->done()V

    goto/16 :goto_69

    .line 421
    :cond_242
    const/16 v2, 0x48a

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    goto/16 :goto_16f

    .line 437
    :cond_256
    const/16 v2, 0x48d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x48e

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x491

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x492

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x493

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    goto/16 :goto_1bd

    .line 469
    :cond_298
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    if-eqz v2, :cond_330

    .line 471
    const/16 v2, 0x48d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x48f

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x491

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x492

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasOoOSvc;->mExternalUnKnownMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x493

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    .line 481
    const/16 v2, 0x48d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x490

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x491

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x492

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasOoOSvc;->mExternalUnKnownMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x493

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    goto/16 :goto_231

    .line 493
    :cond_330
    const/16 v2, 0x48d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x48f

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x491

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    .line 499
    const/16 v2, 0x48d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x490

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x491

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v23

    goto/16 :goto_231

    .line 543
    .restart local v21       #resp:Lorg/apache/http/HttpResponse;
    :catch_37e
    move-exception v16

    .line 545
    .local v16, e:Ljava/lang/Exception;
    const/16 v22, 0x0

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, -0x3

    const/16 v6, 0x64

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    move/from16 v5, v22

    .line 549
    .end local v22           #result:I
    .restart local v5       #result:I
    goto/16 :goto_106

    .line 593
    .end local v5           #result:I
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v17       #entity:Lorg/apache/http/HttpEntity;
    .restart local v18       #in:Ljava/io/InputStream;
    .restart local v19       #len:I
    .restart local v22       #result:I
    .restart local v24       #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    .restart local v25       #status:I
    :cond_394
    sget-object v2, Lcom/android/emailcommon/utility/OoOConstants;->OOO_SET_DATA:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 595
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->isProvisionError(I)Z

    move-result v2

    if-eqz v2, :cond_3b5

    .line 597
    const/16 v5, 0x17

    .line 605
    .end local v22           #result:I
    .restart local v5       #result:I
    :goto_3a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v6, 0x64

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    goto/16 :goto_104

    .line 601
    .end local v5           #result:I
    .restart local v22       #result:I
    :cond_3b5
    const/4 v5, -0x7

    .end local v22           #result:I
    .restart local v5       #result:I
    goto :goto_3a6

    .line 613
    .end local v5           #result:I
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v18           #in:Ljava/io/InputStream;
    .end local v24           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    .restart local v22       #result:I
    :cond_3b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v11, 0x0

    const/16 v12, 0x64

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    move/from16 v5, v22

    .end local v22           #result:I
    .restart local v5       #result:I
    goto/16 :goto_104

    .line 619
    .end local v5           #result:I
    .end local v17           #entity:Lorg/apache/http/HttpEntity;
    .end local v19           #len:I
    .restart local v22       #result:I
    :cond_3ca
    const/16 v5, 0x15

    .line 621
    .end local v22           #result:I
    .restart local v5       #result:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->isProvisionError(I)Z

    move-result v2

    if-eqz v2, :cond_3e9

    .line 623
    const/16 v5, 0x17

    .line 631
    :cond_3d8
    :goto_3d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v12, 0x64

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v11, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    goto/16 :goto_104

    .line 625
    :cond_3e9
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->isAuthError(I)Z

    move-result v2

    if-eqz v2, :cond_3d8

    .line 627
    const/16 v5, 0x16

    goto :goto_3d8
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/16 v4, 0x17

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 821
    invoke-virtual {p0}, Lcom/android/exchange/EasOoOSvc;->setupService()Z

    .line 825
    const/4 v3, 0x0

    :try_start_8
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 829
    const/4 v1, 0x0

    .line 831
    .local v1, result:I
    iget-object v3, p0, Lcom/android/exchange/EasOoOSvc;->mSvcData:Lcom/android/emailcommon/service/OoODataList;

    if-nez v3, :cond_35

    .line 833
    invoke-direct {p0}, Lcom/android/exchange/EasOoOSvc;->getOoO()I

    move-result v1

    .line 843
    :goto_17
    if-ne v1, v4, :cond_1c

    .line 845
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 851
    :cond_1c
    const/16 v3, 0x16

    if-ne v1, v3, :cond_3a

    .line 853
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_f7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_23} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_cd

    .line 899
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "OoO finished"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 901
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 903
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1b2

    .line 937
    .end local v1           #result:I
    :goto_34
    return-void

    .line 837
    .restart local v1       #result:I
    :cond_35
    :try_start_35
    invoke-direct {p0}, Lcom/android/exchange/EasOoOSvc;->setOoO()I

    move-result v1

    goto :goto_17

    .line 857
    :cond_3a
    const/16 v3, 0x15

    if-ne v1, v3, :cond_63

    .line 859
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_f7
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_41} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_41} :catch_cd

    .line 899
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "OoO finished"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 901
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 903
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1b8

    goto :goto_34

    .line 907
    :pswitch_53
    const/16 v2, 0x17

    .line 917
    .local v2, status:I
    sget-boolean v3, Lcom/android/exchange/EasOoOSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_179

    .line 919
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v6

    .end local v1           #result:I
    :goto_5f
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    goto :goto_34

    .line 869
    .end local v2           #status:I
    .restart local v1       #result:I
    :cond_63
    if-ne v1, v4, :cond_87

    .line 871
    const/4 v3, 0x4

    :try_start_66
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_f7
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_68} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_68} :catch_cd

    .line 899
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "OoO finished"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 901
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 903
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1be

    goto :goto_34

    .line 907
    :pswitch_7a
    const/16 v2, 0x17

    .line 917
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasOoOSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_18c

    .line 919
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v6

    goto :goto_5f

    .line 881
    .end local v2           #status:I
    :cond_87
    const/4 v3, 0x0

    :try_start_88
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_f7
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8a} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8a} :catch_cd

    .line 899
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "OoO finished"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 901
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 903
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1c4

    goto :goto_34

    .line 907
    :pswitch_9c
    const/16 v2, 0x17

    .line 917
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasOoOSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_19f

    .line 919
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v6

    goto :goto_5f

    .line 883
    .end local v1           #result:I
    .end local v2           #status:I
    :catch_a9
    move-exception v0

    .line 885
    .local v0, e:Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_ab
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_ad
    .catchall {:try_start_ab .. :try_end_ad} :catchall_f7

    .line 899
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "OoO finished"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 901
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 903
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1ca

    goto/16 :goto_34

    .line 907
    :pswitch_c0
    const/16 v2, 0x17

    .line 917
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasOoOSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_12f

    .line 919
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v6

    goto :goto_5f

    .line 887
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #status:I
    :catch_cd
    move-exception v0

    .line 889
    .local v0, e:Ljava/lang/Exception;
    :try_start_ce
    const-string v3, "Exception caught in EasOOFSvc"

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 891
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_f7

    .line 899
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "OoO finished"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 901
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 903
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1d0

    goto/16 :goto_34

    .line 907
    :pswitch_e9
    const/16 v2, 0x17

    .line 917
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasOoOSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_145

    .line 919
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v6

    goto/16 :goto_5f

    .line 897
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #status:I
    :catchall_f7
    move-exception v3

    .line 899
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "OoO finished"

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 901
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 903
    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v4, :pswitch_data_1d6

    .line 897
    :goto_109
    throw v3

    .line 907
    :pswitch_10a
    const/16 v2, 0x17

    .line 917
    .restart local v2       #status:I
    sget-boolean v4, Lcom/android/exchange/EasOoOSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v4, :cond_11a

    .line 919
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    goto :goto_109

    .line 923
    :cond_11a
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 925
    sget-object v4, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 927
    sput-boolean v7, Lcom/android/exchange/EasOoOSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto :goto_109

    .line 923
    .local v0, e:Ljava/io/IOException;
    :cond_12f
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 925
    sget-object v3, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 927
    .end local v0           #e:Ljava/io/IOException;
    :goto_141
    sput-boolean v7, Lcom/android/exchange/EasOoOSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto/16 :goto_34

    .line 923
    .local v0, e:Ljava/lang/Exception;
    :cond_145
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 925
    sget-object v3, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_141

    .line 907
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #status:I
    .restart local v1       #result:I
    :pswitch_158
    const/16 v2, 0x17

    .line 917
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasOoOSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_166

    .line 919
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v6

    goto/16 :goto_5f

    .line 923
    :cond_166
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 925
    sget-object v3, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_141

    .line 923
    :cond_179
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 925
    sget-object v3, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_141

    .line 923
    :cond_18c
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 925
    sget-object v3, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_141

    .line 923
    :cond_19f
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 925
    sget-object v3, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_141

    .line 903
    :pswitch_data_1b2
    .packed-switch 0x4
        :pswitch_158
    .end packed-switch

    :pswitch_data_1b8
    .packed-switch 0x4
        :pswitch_53
    .end packed-switch

    :pswitch_data_1be
    .packed-switch 0x4
        :pswitch_7a
    .end packed-switch

    :pswitch_data_1c4
    .packed-switch 0x4
        :pswitch_9c
    .end packed-switch

    :pswitch_data_1ca
    .packed-switch 0x4
        :pswitch_c0
    .end packed-switch

    :pswitch_data_1d0
    .packed-switch 0x4
        :pswitch_e9
    .end packed-switch

    :pswitch_data_1d6
    .packed-switch 0x4
        :pswitch_10a
    .end packed-switch
.end method

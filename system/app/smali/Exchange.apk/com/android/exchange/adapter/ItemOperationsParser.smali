.class public Lcom/android/exchange/adapter/ItemOperationsParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "ItemOperationsParser.java"


# instance fields
.field private isDoc:Z

.field private isSigned:Z

.field private mBindArguments:[Ljava/lang/String;

.field private mEstimateSize:J

.field private mIrmLicensePresent:Z

.field private mMailboxIdAsString:Ljava/lang/String;

.field private mObserver:Ljava/util/Observer;

.field private mOs:Ljava/io/OutputStream;

.field private mResult:Z

.field mServerId:Ljava/lang/String;

.field private mStatus:I

.field public outStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 5
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;J)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;J)V
    .registers 8
    .parameter "in"
    .parameter "adapter"
    .parameter "estimateSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 89
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    .line 107
    iput v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    .line 111
    iput-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mOs:Ljava/io/OutputStream;

    .line 115
    iput-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mObserver:Ljava/util/Observer;

    .line 123
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->isSigned:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mIrmLicensePresent:Z

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mEstimateSize:J

    .line 161
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 162
    iput-wide p3, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mEstimateSize:J

    .line 163
    iput-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->outStream:Ljava/io/InputStream;

    .line 164
    return-void
.end method

.method private fetchDocPropertiesParser(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
    .registers 11
    .parameter "msg"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1590
    const-wide/16 v3, 0x0

    .line 1591
    .local v3, total:J
    const/4 v2, 0x0

    .line 1592
    .local v2, range:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1593
    .local v5, version:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1594
    .local v1, docDataBase64:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1596
    .local v0, docData:[B
    :goto_6
    const/16 v6, 0x50b

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_38

    .line 1597
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v6, :pswitch_data_3a

    .line 1615
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_6

    .line 1599
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v6

    int-to-long v3, v6

    .line 1600
    goto :goto_6

    .line 1602
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1603
    goto :goto_6

    .line 1605
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1606
    invoke-static {v1}, Lmyorg/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 1609
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->outStream:Ljava/io/InputStream;

    goto :goto_6

    .line 1612
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1613
    goto :goto_6

    .line 1619
    :cond_38
    return-void

    .line 1597
    nop

    :pswitch_data_3a
    .packed-switch 0x509
        :pswitch_1e
        :pswitch_18
        :pswitch_14
        :pswitch_23
        :pswitch_14
        :pswitch_14
        :pswitch_33
    .end packed-switch
.end method

.method private fetchPropertiesBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
    .registers 37
    .parameter "msg"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    const/16 v28, 0x0

    .line 762
    .local v28, msgData:Ljava/lang/String;
    const/16 v29, -0x1

    .line 766
    .local v29, msgType:I
    const/16 v23, 0x0

    .line 768
    .local v23, isTruncated:Z
    const-wide/16 v6, 0x0

    .line 772
    .local v6, size:J
    :cond_8
    :goto_8
    const/16 v2, 0x44a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_42f

    .line 774
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v2, :pswitch_data_456

    .line 1400
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_8

    .line 778
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v2

    int-to-long v6, v2

    .line 780
    goto :goto_8

    .line 784
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v29

    .line 786
    goto :goto_8

    .line 798
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    const/16 v23, 0x1

    .line 800
    :goto_32
    if-eqz v23, :cond_3d

    .line 804
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    goto :goto_8

    .line 798
    :cond_3a
    const/16 v23, 0x0

    goto :goto_32

    .line 808
    :cond_3d
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    goto :goto_8

    .line 820
    :pswitch_43
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v2, :cond_8b

    .line 824
    const-string v5, "tempFile"

    .line 826
    .local v5, file:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag(ZLandroid/content/Context;Ljava/lang/String;J)Z

    .line 832
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exchange/adapter/ItemOperationsParser;->isSigned:Z

    .line 836
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v16, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    new-instance v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 844
    .local v14, attach:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v2, "cmdj_signed"

    iput-object v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 846
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 848
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 850
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 854
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    if-eqz v2, :cond_8a

    .line 856
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 1466
    .end local v5           #file:Ljava/lang/String;
    .end local v14           #attach:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16           #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_8a
    :goto_8a
    return-void

    .line 862
    :cond_8b
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e0

    .line 872
    if-eqz v23, :cond_cd

    .line 878
    const-wide/32 v6, 0x100000

    .line 886
    :goto_9e
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 888
    .local v17, bodystream:Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 890
    .local v11, buffOutStream:Ljava/io/BufferedOutputStream;
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v8, p0

    move-wide v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag(ZLandroid/content/Context;Ljava/io/BufferedOutputStream;J)Z

    .line 892
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 894
    const-string v2, "UTF-8"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 896
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_d3

    .line 898
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto/16 :goto_8

    .line 882
    .end local v11           #buffOutStream:Ljava/io/BufferedOutputStream;
    .end local v17           #bodystream:Ljava/io/ByteArrayOutputStream;
    :cond_cd
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    goto :goto_9e

    .line 900
    .restart local v11       #buffOutStream:Ljava/io/BufferedOutputStream;
    .restart local v17       #bodystream:Ljava/io/ByteArrayOutputStream;
    :cond_d3
    const/4 v2, 0x2

    move/from16 v0, v29

    if-ne v0, v2, :cond_8

    .line 902
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto/16 :goto_8

    .line 910
    .end local v11           #buffOutStream:Ljava/io/BufferedOutputStream;
    .end local v17           #bodystream:Ljava/io/ByteArrayOutputStream;
    :cond_e0
    const-string v5, "tempFile"

    .line 912
    .restart local v5       #file:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag(ZLandroid/content/Context;Ljava/lang/String;J)Z

    .line 916
    new-instance v20, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 918
    .local v20, is:Ljava/io/InputStream;
    const/16 v26, 0x0

    .line 922
    .local v26, mimeMsg:Lcom/android/emailcommon/internet/MimeMessage;
    :try_start_114
    new-instance v27, Lcom/android/emailcommon/internet/MimeMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V
    :try_end_11d
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_114 .. :try_end_11d} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_11d} :catch_1f0

    .end local v26           #mimeMsg:Lcom/android/emailcommon/internet/MimeMessage;
    .local v27, mimeMsg:Lcom/android/emailcommon/internet/MimeMessage;
    move-object/from16 v26, v27

    .line 946
    .end local v27           #mimeMsg:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v26       #mimeMsg:Lcom/android/emailcommon/internet/MimeMessage;
    :goto_11f
    :try_start_11f
    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageDispostion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12f

    .line 950
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v2, v2, 0x800

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 954
    :cond_12f
    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getReturnPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13f

    .line 958
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v2, v2, 0x1000

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 966
    :cond_13f
    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v31

    .line 968
    .local v31, tempBody2:Lcom/android/emailcommon/mail/Body;
    new-instance v25, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 976
    .local v25, mimeBody:Lcom/android/emailcommon/internet/MimeBodyPart;
    const/16 v24, 0x0

    .line 978
    .local v24, mimBodyStringTest:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_216

    .line 980
    const-string v2, "EmailSyncAdapter.....2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. mimeMsg.getContentType() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v33, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v15, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 990
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_193
    :goto_193
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/emailcommon/mail/Part;

    .line 992
    .local v32, viewable:Lcom/android/emailcommon/mail/Part;
    const-string v2, "EMAILSYNCADAPTER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text/html: VIEWABLE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v32 .. v32}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-static/range {v32 .. v32}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v24

    .line 998
    invoke-interface/range {v32 .. v32}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f7

    .line 1000
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_1dd

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    .line 1004
    :cond_1dd
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;
    :try_end_1e3
    .catch Ljava/lang/NullPointerException; {:try_start_11f .. :try_end_1e3} :catch_1e4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_11f .. :try_end_1e3} :catch_210

    goto :goto_193

    .line 1370
    .end local v15           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v24           #mimBodyStringTest:Ljava/lang/String;
    .end local v25           #mimeBody:Lcom/android/emailcommon/internet/MimeBodyPart;
    .end local v31           #tempBody2:Lcom/android/emailcommon/mail/Body;
    .end local v32           #viewable:Lcom/android/emailcommon/mail/Part;
    .end local v33           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :catch_1e4
    move-exception v30

    .line 1372
    .local v30, npe:Ljava/lang/NullPointerException;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_8

    .line 924
    .end local v30           #npe:Ljava/lang/NullPointerException;
    :catch_1ea
    move-exception v18

    .line 928
    .local v18, e:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual/range {v18 .. v18}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_11f

    .line 930
    .end local v18           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1f0
    move-exception v18

    .line 934
    .local v18, e:Ljava/io/IOException;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 936
    throw v18

    .line 1008
    .end local v18           #e:Ljava/io/IOException;
    .restart local v15       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v24       #mimBodyStringTest:Ljava/lang/String;
    .restart local v25       #mimeBody:Lcom/android/emailcommon/internet/MimeBodyPart;
    .restart local v31       #tempBody2:Lcom/android/emailcommon/mail/Body;
    .restart local v32       #viewable:Lcom/android/emailcommon/mail/Part;
    .restart local v33       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_1f7
    :try_start_1f7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_209

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    .line 1012
    :cond_209
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;
    :try_end_20f
    .catch Ljava/lang/NullPointerException; {:try_start_1f7 .. :try_end_20f} :catch_1e4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1f7 .. :try_end_20f} :catch_210

    goto :goto_193

    .line 1374
    .end local v15           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v24           #mimBodyStringTest:Ljava/lang/String;
    .end local v25           #mimeBody:Lcom/android/emailcommon/internet/MimeBodyPart;
    .end local v31           #tempBody2:Lcom/android/emailcommon/mail/Body;
    .end local v32           #viewable:Lcom/android/emailcommon/mail/Part;
    .end local v33           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :catch_210
    move-exception v18

    .line 1378
    .local v18, e:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual/range {v18 .. v18}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_8

    .line 1024
    .end local v18           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v24       #mimBodyStringTest:Ljava/lang/String;
    .restart local v25       #mimeBody:Lcom/android/emailcommon/internet/MimeBodyPart;
    .restart local v31       #tempBody2:Lcom/android/emailcommon/mail/Body;
    :cond_216
    :try_start_216
    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/alternative"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_246

    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/mixed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_246

    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/report"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b5

    .line 1036
    :cond_246
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .restart local v33       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .restart local v15       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1044
    const/16 v21, 0x0

    .line 1046
    .local v21, isReadHtml:Z
    const/16 v22, 0x0

    .line 1050
    .local v22, isReadText:Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_25f
    :goto_25f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/emailcommon/mail/Part;

    .line 1058
    .restart local v32       #viewable:Lcom/android/emailcommon/mail/Part;
    invoke-static/range {v32 .. v32}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v24

    .line 1060
    invoke-interface/range {v32 .. v32}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_298

    .line 1064
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_28d

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25f

    :cond_28d
    if-nez v21, :cond_25f

    .line 1068
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 1070
    const/16 v21, 0x1

    goto :goto_25f

    .line 1074
    :cond_298
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_2aa

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25f

    :cond_2aa
    if-nez v22, :cond_25f

    .line 1078
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 1080
    const/16 v22, 0x1

    goto :goto_25f

    .line 1092
    .end local v15           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #isReadHtml:Z
    .end local v22           #isReadText:Z
    .end local v32           #viewable:Lcom/android/emailcommon/mail/Part;
    .end local v33           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_2b5
    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/related"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_346

    .line 1100
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    .restart local v33       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .restart local v15       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1106
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :goto_2da
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/emailcommon/mail/Part;

    .line 1108
    .restart local v32       #viewable:Lcom/android/emailcommon/mail/Part;
    const-string v2, "EMAILSYNCADAPTER2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/related: VIEWABLE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v32 .. v32}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-static/range {v32 .. v32}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v24

    .line 1124
    invoke-interface/range {v32 .. v32}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_333

    .line 1142
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 1176
    :cond_318
    :goto_318
    const-string v2, "EMAILSYNCADAPTER2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/related: VIEWABLE to textfrompart = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2da

    .line 1152
    :cond_333
    invoke-interface/range {v32 .. v32}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_318

    .line 1160
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_318

    .line 1184
    .end local v15           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v32           #viewable:Lcom/android/emailcommon/mail/Part;
    .end local v33           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_346
    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/signed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f0

    .line 1190
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exchange/adapter/ItemOperationsParser;->isSigned:Z

    .line 1194
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .restart local v33       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .restart local v15       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1202
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_370
    :goto_370
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3be

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/emailcommon/mail/Part;

    .line 1210
    .restart local v32       #viewable:Lcom/android/emailcommon/mail/Part;
    invoke-static/range {v32 .. v32}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v24

    .line 1212
    invoke-interface/range {v32 .. v32}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a5

    .line 1214
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_39e

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_370

    .line 1218
    :cond_39e
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_370

    .line 1220
    :cond_3a5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_3b7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_370

    .line 1224
    :cond_3b7
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_370

    .line 1232
    .end local v32           #viewable:Lcom/android/emailcommon/mail/Part;
    :cond_3be
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .restart local v16       #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    new-instance v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1240
    .restart local v14       #attach:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v2, "cmdj_signed"

    iput-object v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1242
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1244
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 1268
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1338
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    if-eqz v2, :cond_8

    .line 1340
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    goto/16 :goto_8

    .line 1346
    .end local v14           #attach:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v15           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v16           #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v33           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_3f0
    const-string v2, "EmailSyncAdapter.....2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. mimeMsg.getContentType() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-static/range {v25 .. v25}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v24

    .line 1352
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_422

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1356
    :cond_422
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 1360
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;
    :try_end_42d
    .catch Ljava/lang/NullPointerException; {:try_start_216 .. :try_end_42d} :catch_1e4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_216 .. :try_end_42d} :catch_210

    goto/16 :goto_8

    .line 1410
    .end local v5           #file:Ljava/lang/String;
    .end local v20           #is:Ljava/io/InputStream;
    .end local v24           #mimBodyStringTest:Ljava/lang/String;
    .end local v25           #mimeBody:Lcom/android/emailcommon/internet/MimeBodyPart;
    .end local v26           #mimeMsg:Lcom/android/emailcommon/internet/MimeMessage;
    .end local v31           #tempBody2:Lcom/android/emailcommon/mail/Body;
    :cond_42f
    packed-switch v29, :pswitch_data_46a

    .line 1440
    :goto_432
    packed-switch v29, :pswitch_data_472

    goto/16 :goto_8a

    .line 1446
    :pswitch_437
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto/16 :goto_8a

    .line 1416
    :pswitch_43f
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_432

    .line 1424
    :pswitch_446
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_432

    .line 1454
    :pswitch_44d
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto/16 :goto_8a

    .line 774
    nop

    :pswitch_data_456
    .packed-switch 0x446
        :pswitch_24
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_43
        :pswitch_1e
        :pswitch_29
    .end packed-switch

    .line 1410
    :pswitch_data_46a
    .packed-switch 0x1
        :pswitch_43f
        :pswitch_446
    .end packed-switch

    .line 1440
    :pswitch_data_472
    .packed-switch 0x1
        :pswitch_437
        :pswitch_44d
    .end packed-switch
.end method

.method private fetchPropertiesParser()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 537
    const/4 v3, 0x0

    .line 539
    .local v3, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    const/4 v0, 0x0

    .line 541
    .local v0, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    const/4 v6, 0x0

    .line 543
    .local v6, range:Ljava/lang/String;
    const/4 v8, 0x0

    .line 547
    .local v8, total:Ljava/lang/String;
    :cond_5
    :goto_5
    const/16 v10, 0x50b

    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_b2

    .line 549
    iget v10, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v10, :sswitch_data_11e

    .line 716
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_5

    .line 553
    :sswitch_17
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 555
    goto :goto_5

    .line 561
    :sswitch_1c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 563
    goto :goto_5

    .line 571
    :sswitch_21
    iget-object v10, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mOs:Ljava/io/OutputStream;

    iget-object v11, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mObserver:Ljava/util/Observer;

    iget-wide v12, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mEstimateSize:J

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue(Ljava/io/OutputStream;Ljava/util/Observer;J)I

    move-result v2

    .line 573
    .local v2, length:I
    goto :goto_5

    .line 579
    .end local v2           #length:I
    :sswitch_2c
    const/4 v5, 0x0

    .line 583
    .local v5, parsed:Z
    iget-object v10, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    if-eqz v10, :cond_7e

    .line 589
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    iget-object v7, v10, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    .line 593
    .local v7, svc:Lcom/android/exchange/EasSyncService;
    instance-of v10, v7, Lcom/android/exchange/EasLoadMoreSvc;

    if-eqz v10, :cond_11b

    .line 595
    const-string v10, "ItemOperationsParser"

    const-string v11, "svc(Adapter.mService) is instanceof EasLoadMoreSvc"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v10, "ItemOperationsParser"

    const-string v11, "get message from service"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    check-cast v7, Lcom/android/exchange/EasLoadMoreSvc;

    .end local v7           #svc:Lcom/android/exchange/EasSyncService;
    iget-object v3, v7, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object v4, v3

    .line 605
    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .local v4, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_4c
    if-nez v4, :cond_118

    .line 607
    const-string v10, "ItemOperationsParser"

    const-string v11, "get message from restore cursor func()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v10, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/exchange/adapter/ItemOperationsParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 615
    .local v1, c:Landroid/database/Cursor;
    :try_start_5d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_115

    .line 617
    new-instance v3, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_96

    .line 619
    .end local v4           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v3       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_start_68
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_113

    .line 625
    :goto_6b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 655
    .end local v1           #c:Landroid/database/Cursor;
    :goto_6e
    if-eqz v3, :cond_7e

    .line 657
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v11, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    .line 659
    if-eqz v0, :cond_7e

    .line 661
    invoke-direct {p0, v3, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->fetchPropertiesBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V

    .line 663
    const/4 v5, 0x1

    .line 673
    :cond_7e
    if-eqz v5, :cond_9c

    .line 677
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 679
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v10, v11, v3, v0}, Lcom/android/exchange/adapter/LoadMoreUtility;->updateEmail(Lcom/android/exchange/AbstractSyncService;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V

    .line 681
    iget-boolean v10, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->isSigned:Z

    if-eqz v10, :cond_5

    .line 683
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v10, v3}, Lcom/android/exchange/adapter/LoadMoreUtility;->updateAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_5

    .line 625
    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v4       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catchall_96
    move-exception v10

    move-object v3, v4

    .end local v4           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v3       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v10

    .line 691
    .end local v1           #c:Landroid/database/Cursor;
    :cond_9c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto/16 :goto_5

    .line 698
    .end local v5           #parsed:Z
    :sswitch_a1
    iput-boolean v14, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->isDoc:Z

    .line 699
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    goto/16 :goto_5

    .line 706
    :sswitch_ab
    iput-boolean v14, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mIrmLicensePresent:Z

    .line 708
    invoke-static {v3, p0}, Lcom/android/exchange/irm/IRMLicenseParserUtility;->parseLicense(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/adapter/AbstractSyncParser;)V

    goto/16 :goto_5

    .line 726
    :cond_b2
    iget-boolean v10, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mIrmLicensePresent:Z

    if-nez v10, :cond_112

    if-eqz v3, :cond_112

    .line 728
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 730
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "IRMContentExpiryDate"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v10, "IRMContentOwner"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v10, "IRMLicenseFlag"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    const-string v10, "IRMOwner"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v10, "IRMTemplateId"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v10, "IRMTemplateName"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v10, "IRMTemplateDescription"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 750
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_112
    return-void

    .line 625
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v5       #parsed:Z
    :catchall_113
    move-exception v10

    goto :goto_98

    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v4       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_115
    move-object v3, v4

    .end local v4           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v3       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    goto/16 :goto_6b

    .end local v1           #c:Landroid/database/Cursor;
    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v4       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_118
    move-object v3, v4

    .end local v4           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v3       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    goto/16 :goto_6e

    .restart local v7       #svc:Lcom/android/exchange/EasSyncService;
    :cond_11b
    move-object v4, v3

    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v4       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    goto/16 :goto_4c

    .line 549
    :sswitch_data_11e
    .sparse-switch
        0x44a -> :sswitch_2c
        0x4c5 -> :sswitch_a1
        0x509 -> :sswitch_17
        0x50a -> :sswitch_1c
        0x50c -> :sswitch_21
        0x608 -> :sswitch_ab
    .end sparse-switch
.end method

.method private getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "serverId"
    .parameter "projection"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 174
    iget-object v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 176
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private itemOperationsEmptyFolderContentsParser()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1472
    const/4 v0, 0x0

    .line 1474
    .local v0, collectionId:Ljava/lang/String;
    const/4 v1, -0x1

    .line 1476
    .local v1, status:I
    :cond_4
    :goto_4
    const/16 v4, 0x512

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3a

    .line 1478
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v4, :sswitch_data_4a

    .line 1504
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_4

    .line 1484
    :sswitch_16
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 1486
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ItemOperations failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_4

    .line 1498
    :sswitch_35
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1500
    goto :goto_4

    .line 1512
    :cond_3a
    const/4 v4, -0x1

    if-eq v1, v4, :cond_46

    if-eqz v0, :cond_46

    .line 1516
    if-ne v1, v2, :cond_44

    :goto_41
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 1524
    :goto_43
    return-void

    :cond_44
    move v2, v3

    .line 1516
    goto :goto_41

    .line 1520
    :cond_46
    iput-boolean v3, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    goto :goto_43

    .line 1478
    nop

    :sswitch_data_4a
    .sparse-switch
        0x12 -> :sswitch_35
        0x50d -> :sswitch_16
    .end sparse-switch
.end method

.method private itemOperationsFetchParser()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 376
    const/4 v2, 0x0

    .line 380
    .local v2, fileReference:Ljava/lang/String;
    const/4 v3, 0x0

    .line 381
    .local v3, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    const/4 v0, 0x0

    .line 383
    .local v0, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    iput-boolean v9, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->isDoc:Z

    .line 384
    :cond_7
    :goto_7
    const/16 v5, 0x506

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8c

    .line 386
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v5, :sswitch_data_9a

    .line 495
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_7

    .line 410
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v5

    iput v5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    if-eq v5, v8, :cond_7

    .line 412
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ItemOperations failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_7

    .line 442
    :sswitch_3c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    goto :goto_7

    .line 447
    :sswitch_43
    iput-boolean v8, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->isDoc:Z

    .line 448
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    goto :goto_7

    .line 456
    :sswitch_4c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 458
    goto :goto_7

    .line 462
    :sswitch_51
    iget-boolean v5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->isDoc:Z

    if-nez v5, :cond_59

    .line 463
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->fetchPropertiesParser()V

    goto :goto_7

    .line 467
    :cond_59
    iget-object v5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 469
    iget-object v5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mServerId:Ljava/lang/String;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/exchange/adapter/ItemOperationsParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 471
    .local v1, c:Landroid/database/Cursor;
    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_74

    .line 472
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_87

    .line 473
    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .local v4, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_start_70
    invoke-virtual {v4, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_96

    move-object v3, v4

    .line 476
    .end local v4           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v3       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_74
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 480
    if-eqz v3, :cond_7

    .line 481
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v6, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_7

    .line 483
    invoke-direct {p0, v3, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->fetchDocPropertiesParser(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V

    goto :goto_7

    .line 476
    :catchall_87
    move-exception v5

    :goto_88
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5

    .line 513
    .end local v1           #c:Landroid/database/Cursor;
    :cond_8c
    iget v5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    if-ne v5, v8, :cond_93

    .line 515
    iput-boolean v8, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 527
    :goto_92
    return-void

    .line 519
    :cond_93
    iput-boolean v9, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    goto :goto_92

    .line 476
    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v4       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catchall_96
    move-exception v5

    move-object v3, v4

    .end local v4           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v3       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    goto :goto_88

    .line 386
    nop

    :sswitch_data_9a
    .sparse-switch
        0xd -> :sswitch_3c
        0x3d8 -> :sswitch_3c
        0x451 -> :sswitch_4c
        0x4c5 -> :sswitch_43
        0x50b -> :sswitch_51
        0x50d -> :sswitch_19
    .end sparse-switch
.end method

.method private itemOperationsMoveParser()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1534
    const/4 v1, -0x1

    .line 1536
    .local v1, status:I
    const/4 v0, 0x0

    .line 1538
    .local v0, convId:[B
    :cond_4
    :goto_4
    const/16 v2, 0x516

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3f

    .line 1540
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x50d

    if-ne v2, v3, :cond_34

    .line 1542
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    .line 1548
    if-eq v1, v5, :cond_4

    .line 1550
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemOperation:Move  failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1552
    iput-boolean v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    goto :goto_4

    .line 1560
    :cond_34
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x518

    if-ne v2, v3, :cond_4

    .line 1562
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueOpaque()[B

    move-result-object v0

    goto :goto_4

    .line 1570
    :cond_3f
    if-ne v1, v5, :cond_46

    if-eqz v0, :cond_46

    .line 1574
    iput-boolean v5, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 1584
    :goto_45
    return-void

    .line 1580
    :cond_46
    iput-boolean v6, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    goto :goto_45
.end method

.method private itemOperationsResponsesParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    :goto_0
    const/16 v0, 0x50e

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    .line 330
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_20

    .line 360
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 334
    :sswitch_12
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsFetchParser()V

    goto :goto_0

    .line 340
    :sswitch_16
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsEmptyFolderContentsParser()V

    goto :goto_0

    .line 350
    :sswitch_1a
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsMoveParser()V

    goto :goto_0

    .line 368
    :cond_1e
    return-void

    .line 330
    nop

    :sswitch_data_20
    .sparse-switch
        0x506 -> :sswitch_12
        0x512 -> :sswitch_16
        0x516 -> :sswitch_1a
    .end sparse-switch
.end method


# virtual methods
.method public commandsParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    return-void
.end method

.method public commit()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    return-void
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    return v0
.end method

.method public parse()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x505

    if-eq v0, v1, :cond_13

    .line 222
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 282
    :pswitch_10
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->itemOperationsResponsesParser()V

    .line 226
    :cond_13
    :goto_13
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_67

    .line 228
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_6a

    .line 288
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_13

    .line 238
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    if-eq v0, v4, :cond_13

    .line 240
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemOperations failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 250
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->isProvisioningStatus(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 252
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 254
    iput-boolean v3, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    .line 264
    :cond_53
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatus:I

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->isDeviceAccessDenied(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 266
    new-instance v0, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v1, 0x40001

    const v2, 0x7f060014

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v0

    .line 296
    :cond_67
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mResult:Z

    return v0

    .line 228
    :pswitch_data_6a
    .packed-switch 0x50d
        :pswitch_23
        :pswitch_10
    .end packed-switch
.end method

.method public responsesParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    return-void
.end method

.method public setObserver(Ljava/util/Observer;)V
    .registers 2
    .parameter "observer"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mObserver:Ljava/util/Observer;

    .line 206
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "os"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mOs:Ljava/io/OutputStream;

    .line 198
    return-void
.end method

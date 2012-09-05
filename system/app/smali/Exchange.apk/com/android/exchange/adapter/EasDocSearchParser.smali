.class public Lcom/android/exchange/adapter/EasDocSearchParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "EasDocSearchParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private docs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Document;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldId:J

.field private msgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private res:Lcom/android/exchange/provider/EmailResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/android/exchange/adapter/EasDocSearchParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/EasDocSearchParser;->TAG:Ljava/lang/String;

    return-void
.end method

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
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->docs:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->msgs:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcom/android/exchange/provider/EmailResult;

    invoke-direct {v0}, Lcom/android/exchange/provider/EmailResult;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    .line 68
    return-void
.end method

.method private addDocData(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/emailcommon/provider/EmailContent$Document;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .registers 24
    .parameter "parser"
    .parameter "doc"
    .parameter "msg"
    .parameter "loopTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v12, 0x0

    .line 79
    .local v12, fileName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 80
    .local v14, length:Ljava/lang/String;
    const/16 v16, 0x0

    .line 81
    .local v16, location:Ljava/lang/String;
    const/4 v13, 0x0

    .line 82
    .local v13, isFolder:Z
    const/4 v15, 0x0

    .line 83
    .local v15, linkId:Ljava/lang/String;
    const/16 v17, 0x0

    .line 84
    .local v17, parentLinkId:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v10, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 86
    .local v2, cal:Ljava/util/GregorianCalendar;
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 87
    :goto_17
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_16d

    .line 88
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v3, :pswitch_data_200

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_17

    .line 90
    :pswitch_2d
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLinkId:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLinkId:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 93
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLinkId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 94
    goto :goto_17

    .line 96
    :pswitch_44
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 99
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    .line 100
    goto :goto_17

    .line 102
    :pswitch_61
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_75

    const/4 v13, 0x1

    .line 103
    :goto_69
    move-object/from16 v0, p2

    iput-boolean v13, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagFolder:Z

    .line 104
    if-nez v13, :cond_77

    const/4 v3, 0x1

    :goto_70
    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    goto :goto_17

    .line 102
    :cond_75
    const/4 v13, 0x0

    goto :goto_69

    .line 104
    :cond_77
    const/4 v3, 0x0

    goto :goto_70

    .line 107
    :pswitch_79
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, date:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x7

    invoke-virtual {v11, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x8

    const/16 v6, 0xa

    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xb

    const/16 v7, 0xd

    invoke-virtual {v11, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xe

    const/16 v8, 0x10

    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x11

    const/16 v18, 0x13

    move/from16 v0, v18

    invoke-virtual {v11, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 114
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 115
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mTimeStamp:J

    .line 116
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mTimeStamp:J

    move-object/from16 v0, p3

    iput-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    goto/16 :goto_17

    .line 119
    .end local v11           #date:Ljava/lang/String;
    :pswitch_e3
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f1

    const/4 v3, 0x1

    :goto_eb
    move-object/from16 v0, p2

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagHidden:Z

    goto/16 :goto_17

    :cond_f1
    const/4 v3, 0x0

    goto :goto_eb

    .line 123
    :pswitch_f3
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 124
    .restart local v11       #date:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x7

    invoke-virtual {v11, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x8

    const/16 v6, 0xa

    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xb

    const/16 v7, 0xd

    invoke-virtual {v11, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xe

    const/16 v8, 0x10

    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x11

    const/16 v18, 0x13

    move/from16 v0, v18

    invoke-virtual {v11, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 130
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 131
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLastModTime:J

    goto/16 :goto_17

    .line 134
    .end local v11           #date:Ljava/lang/String;
    :pswitch_155
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 135
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mContentLength:J

    goto/16 :goto_17

    .line 138
    :pswitch_163
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mContentType:Ljava/lang/String;

    goto/16 :goto_17

    .line 144
    :cond_16d
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagFolder:Z

    if-eqz v3, :cond_1cf

    .line 145
    const-string v3, "SharePoint-UNC : folder"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 152
    :goto_179
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLinkId:Ljava/lang/String;

    .line 153
    const/4 v3, 0x0

    const-string v4, "\\"

    invoke-virtual {v15, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 154
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Document;->mParentFolderLinkId:Ljava/lang/String;

    .line 157
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 159
    if-nez v13, :cond_1c4

    if-eqz v12, :cond_1c4

    if-eqz v14, :cond_1c4

    if-eqz v16, :cond_1c4

    .line 160
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 161
    .local v9, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v3, "base64"

    iput-object v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 163
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 164
    iput-object v12, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 165
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 166
    invoke-static {v12}, Lcom/android/exchange/adapter/ParserUtility;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 167
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 170
    .end local v9           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1c4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1ce

    .line 171
    move-object/from16 v0, p3

    iput-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 173
    :cond_1ce
    return-void

    .line 147
    :cond_1cf
    const-string v3, "SharePoint-UNC"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mContentLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto/16 :goto_179

    .line 88
    :pswitch_data_200
    .packed-switch 0x4c5
        :pswitch_2d
        :pswitch_44
        :pswitch_61
        :pswitch_79
        :pswitch_f3
        :pswitch_e3
        :pswitch_155
        :pswitch_163
    .end packed-switch
.end method

.method private parsePropertiesTag(Lcom/android/emailcommon/provider/EmailContent$Document;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 4
    .parameter "doc"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const/16 v0, 0x3cf

    invoke-direct {p0, p0, p1, p2, v0}, Lcom/android/exchange/adapter/EasDocSearchParser;->addDocData(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/emailcommon/provider/EmailContent$Document;Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 177
    iget-object v0, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->docs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method private parseResultTag()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x62

    .line 182
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Document;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Document;-><init>()V

    .line 183
    .local v0, doc:Lcom/android/emailcommon/provider/EmailContent$Document;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAccountKey:J

    .line 184
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mMailboxKey:J

    .line 186
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 187
    .local v1, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 188
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 190
    const/4 v3, 0x1

    iput v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 192
    :goto_33
    const/16 v3, 0x3ce

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/EasDocSearchParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_50

    .line 193
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v4, 0x3cf

    if-ne v3, v4, :cond_46

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/android/exchange/adapter/EasDocSearchParser;->parsePropertiesTag(Lcom/android/emailcommon/provider/EmailContent$Document;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_33

    .line 196
    :cond_46
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasDocSearchParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, otherValue:Ljava/lang/String;
    sget-object v3, Lcom/android/exchange/adapter/EasDocSearchParser;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 200
    .end local v2           #otherValue:Ljava/lang/String;
    :cond_50
    return-void
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
    .line 283
    return-void
.end method

.method public commit()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v6, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->docs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Document;

    .line 289
    .local v0, doc:Lcom/android/emailcommon/provider/EmailContent$Document;
    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Document;->addSaveOps(Ljava/util/ArrayList;)V

    goto :goto_b

    .line 291
    .end local v0           #doc:Lcom/android/emailcommon/provider/EmailContent$Document;
    :cond_1b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v5, opsMsg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v6, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 293
    .local v3, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v6, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-nez v6, :cond_36

    .line 295
    :cond_36
    invoke-virtual {v3, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    goto :goto_26

    .line 298
    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_3a
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v6}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 300
    :try_start_41
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v6}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 301
    monitor-exit v7
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_99

    .line 319
    :goto_4a
    return-void

    .line 303
    :cond_4b
    :try_start_4b
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "com.android.email.provider"

    invoke-virtual {v6, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 304
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "document search"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " total rows: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/EasDocSearchParser;->userLog([Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_4b .. :try_end_77} :catchall_99
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_77} :catch_9c
    .catch Landroid/content/OperationApplicationException; {:try_start_4b .. :try_end_77} :catch_a5

    .line 311
    :goto_77
    :try_start_77
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "com.android.email.provider"

    invoke-virtual {v6, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 312
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v9, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, " SyncKey saved as: "

    aput-object v9, v6, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v9, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v9, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/EasDocSearchParser;->userLog([Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_77 .. :try_end_97} :catchall_99
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_97} :catch_ae
    .catch Landroid/content/OperationApplicationException; {:try_start_77 .. :try_end_97} :catch_b7

    .line 318
    :goto_97
    :try_start_97
    monitor-exit v7

    goto :goto_4a

    :catchall_99
    move-exception v6

    monitor-exit v7
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_99

    throw v6

    .line 305
    :catch_9c
    move-exception v1

    .line 306
    .local v1, e:Landroid/os/RemoteException;
    :try_start_9d
    sget-object v6, Lcom/android/exchange/adapter/EasDocSearchParser;->TAG:Ljava/lang/String;

    const-string v8, "Failed at mContentResolver.applyBatch."

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 307
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_a5
    move-exception v1

    .line 308
    .local v1, e:Landroid/content/OperationApplicationException;
    sget-object v6, Lcom/android/exchange/adapter/EasDocSearchParser;->TAG:Ljava/lang/String;

    const-string v8, "Failed at mContentResolver.applyBatch."

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 313
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catch_ae
    move-exception v1

    .line 314
    .local v1, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/android/exchange/adapter/EasDocSearchParser;->TAG:Ljava/lang/String;

    const-string v8, "Failed at mContentResolver.applyBatch."

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_97

    .line 315
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_b7
    move-exception v1

    .line 316
    .local v1, e:Landroid/content/OperationApplicationException;
    sget-object v6, Lcom/android/exchange/adapter/EasDocSearchParser;->TAG:Ljava/lang/String;

    const-string v8, "Failed at mContentResolver.applyBatch."

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catchall {:try_start_9d .. :try_end_bf} :catchall_99

    goto :goto_97
.end method

.method public parse()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EasDocSearchParser;->nextTag(I)I

    move-result v4

    const/16 v5, 0x3c5

    if-eq v4, v5, :cond_16

    .line 210
    new-instance v2, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v2

    .line 217
    .local v1, status:I
    :pswitch_12
    iget-object v4, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iput v3, v4, Lcom/android/exchange/provider/EmailResult;->result:I

    .line 212
    .end local v1           #status:I
    :cond_16
    :goto_16
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EasDocSearchParser;->nextTag(I)I

    move-result v4

    if-eq v4, v7, :cond_c5

    .line 213
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v5, 0x3cc

    if-ne v4, v5, :cond_82

    .line 214
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasDocSearchParser;->getValueInt()I

    move-result v1

    .line 215
    .restart local v1       #status:I
    packed-switch v1, :pswitch_data_d2

    .line 260
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    .line 278
    .end local v1           #status:I
    :goto_2e
    return v2

    .line 221
    .restart local v1       #status:I
    :pswitch_2f
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iput v6, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 224
    :pswitch_34
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iput v7, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 227
    :pswitch_39
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v4, 0x9

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 230
    :pswitch_40
    iget-object v4, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v5, 0xb

    iput v5, v4, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_16

    .line 233
    :pswitch_47
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v4, 0x8

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 236
    :pswitch_4e
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v4, 0xa

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 239
    :pswitch_55
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v4, 0xc

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 242
    :pswitch_5c
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/4 v4, 0x4

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 245
    :pswitch_62
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/4 v4, 0x5

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 248
    :pswitch_68
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/4 v4, 0x6

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 251
    :pswitch_6e
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/4 v4, 0x7

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 254
    :pswitch_74
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v4, 0xd

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 257
    :pswitch_7b
    iget-object v3, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v4, 0xe

    iput v4, v3, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_2e

    .line 263
    .end local v1           #status:I
    :cond_82
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v5, 0x3ce

    if-ne v4, v5, :cond_8c

    .line 264
    invoke-direct {p0}, Lcom/android/exchange/adapter/EasDocSearchParser;->parseResultTag()V

    goto :goto_16

    .line 265
    :cond_8c
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v5, 0x3cb

    if-ne v4, v5, :cond_b5

    .line 266
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasDocSearchParser;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, range:[Ljava/lang/String;
    array-length v4, v0

    if-ne v4, v6, :cond_16

    .line 268
    iget-object v4, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/exchange/provider/EmailResult;->startRange:I

    .line 269
    iget-object v4, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    aget-object v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/exchange/provider/EmailResult;->endRange:I

    goto/16 :goto_16

    .line 271
    .end local v0           #range:[Ljava/lang/String;
    :cond_b5
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v5, 0x3d0

    if-ne v4, v5, :cond_16

    .line 272
    iget-object v4, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasDocSearchParser;->getValueInt()I

    move-result v5

    iput v5, v4, Lcom/android/exchange/provider/EmailResult;->total:I

    goto/16 :goto_16

    .line 275
    :cond_c5
    iget-object v2, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iget v2, v2, Lcom/android/exchange/provider/EmailResult;->total:I

    if-lez v2, :cond_ce

    .line 276
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasDocSearchParser;->commit()V

    :cond_ce
    move v2, v3

    .line 278
    goto/16 :goto_2e

    .line 215
    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_12
        :pswitch_2f
        :pswitch_34
        :pswitch_5c
        :pswitch_62
        :pswitch_68
        :pswitch_6e
        :pswitch_47
        :pswitch_39
        :pswitch_4e
        :pswitch_40
        :pswitch_55
        :pswitch_74
        :pswitch_7b
    .end packed-switch
.end method

.method public parse_doc_response()Lcom/android/exchange/provider/EmailResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasDocSearchParser;->parse()Z

    .line 204
    iget-object v0, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    return-object v0
.end method

.method public responsesParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    return-void
.end method

.method public setFoldId(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/exchange/adapter/EasDocSearchParser;->mFoldId:J

    .line 73
    return-void
.end method

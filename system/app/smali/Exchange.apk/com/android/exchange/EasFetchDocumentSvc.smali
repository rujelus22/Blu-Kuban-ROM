.class public Lcom/android/exchange/EasFetchDocumentSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasFetchDocumentSvc.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field mContentUriString:Ljava/lang/String;

.field mDestinationFile:Ljava/lang/String;

.field private msg:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string v0, "EasFetchDocumentSvc"

    sput-object v0, Lcom/android/exchange/EasFetchDocumentSvc;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "_context"
    .parameter "_m"
    .parameter "_msg"
    .parameter "_att"
    .parameter "destinationFile"
    .parameter "contentUriString"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 65
    iput-object p4, p0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 66
    iput-object p3, p0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 67
    iput-object p5, p0, Lcom/android/exchange/EasFetchDocumentSvc;->mDestinationFile:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/android/exchange/EasFetchDocumentSvc;->mContentUriString:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_21

    .line 71
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 74
    :cond_21
    return-void
.end method

.method private fetchDocument()I
    .registers 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/16 v40, 0x0

    .line 86
    .local v40, result:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/exchange/EasFetchDocumentSvc;->fetchDocumentCb(JJII)V

    .line 88
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4028

    cmpg-double v4, v4, v6

    if-gez v4, :cond_495

    .line 91
    const/16 v9, 0x14

    .line 92
    .end local v40           #result:I
    .local v9, result:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/exchange/EasFetchDocumentSvc;->fetchDocumentCb(JJII)V

    .line 93
    const/4 v9, 0x0

    .line 96
    :goto_38
    sget-object v4, Lcom/android/exchange/EasFetchDocumentSvc;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/admin/DevicePolicyManager;

    .line 114
    .local v33, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "fetchDocument() from SharePoing/UNC at "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog([Ljava/lang/String;)V

    .line 115
    new-instance v41, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v41 .. v41}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 116
    .local v41, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v21, 0x0

    .line 117
    .local v21, commandType:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 120
    .local v42, sizeStr:Ljava/lang/String;
    const-string v21, "ItemOperations"

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eqz v4, :cond_245

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";MULTIPART"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 128
    :goto_9b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 129
    .local v25, fileTypes:[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    .line 130
    .local v26, fileTypesLen:I
    const/4 v4, 0x2

    move/from16 v0, v26

    if-lt v0, v4, :cond_126

    add-int/lit8 v4, v26, -0x1

    aget-object v4, v25, v4

    const-string v5, "txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_111

    add-int/lit8 v4, v26, -0x1

    aget-object v4, v25, v4

    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_111

    add-int/lit8 v4, v26, -0x1

    aget-object v4, v25, v4

    const-string v5, "doc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_111

    add-int/lit8 v4, v26, -0x1

    aget-object v4, v25, v4

    const-string v5, "ppt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_111

    add-int/lit8 v4, v26, -0x1

    aget-object v4, v25, v4

    const-string v5, "xls"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_111

    add-int/lit8 v4, v26, -0x1

    aget-object v4, v25, v4

    const-string v5, "rtf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_111

    add-int/lit8 v4, v26, -0x1

    aget-object v4, v25, v4

    const-string v5, "xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_111

    add-int/lit8 v4, v26, -0x1

    aget-object v4, v25, v4

    const-string v5, "bmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_126

    .line 139
    :cond_111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";GZIP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 142
    :cond_126
    const/16 v4, 0x505

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x506

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x507

    const-string v6, "DocumentLibrary"

    invoke-virtual {v4, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_150

    .line 145
    const/16 v4, 0x4c5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 147
    :cond_150
    const/16 v4, 0x508

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x509

    move-object/from16 v0, v42

    invoke-virtual {v4, v5, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 152
    const/4 v4, 0x1

    :try_start_170
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchDocument() - cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog([Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {v41 .. v41}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/android/exchange/EasFetchDocumentSvc;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_19a} :catch_25c

    move-result-object v38

    .line 160
    .local v38, res:Lorg/apache/http/HttpResponse;
    if-eqz v38, :cond_28f

    invoke-interface/range {v38 .. v38}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    .line 161
    .local v20, code:I
    :goto_1a5
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchDocument() - resp code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog([Ljava/lang/String;)V

    .line 163
    if-eqz v38, :cond_472

    const/16 v4, 0xc8

    move/from16 v0, v20

    if-ne v0, v4, :cond_472

    .line 164
    invoke-interface/range {v38 .. v38}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    .line 165
    .local v24, e:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v31, v0

    .line 169
    .local v31, len:I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasFetchDocumentSvc;->getHttpInputStream(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v30

    .line 172
    .local v30, is:Ljava/io/InputStream;
    const/16 v43, 0x0

    .line 173
    .local v43, startPos:I
    const/16 v32, 0x0

    .line 174
    .local v32, length:I
    if-eqz v30, :cond_3b5

    .line 175
    const/16 v44, 0x1

    .line 179
    .local v44, successp:Z
    const-string v4, "Content-Type"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v39

    .line 180
    .local v39, respContentType:Lorg/apache/http/Header;
    if-eqz v39, :cond_2d2

    invoke-interface/range {v39 .. v39}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/vnd.ms-sync.multipart"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d2

    .line 184
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "fetchDocument() - resp: multipart"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog([Ljava/lang/String;)V

    .line 186
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v18, v0

    .line 187
    .local v18, b:[B
    move-object/from16 v27, v30

    .line 189
    .local v27, instream:Ljava/io/InputStream;
    const/16 v4, 0x14

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v37

    .line 190
    .local v37, read:I
    const/16 v4, 0x14

    move/from16 v0, v37

    if-ge v0, v4, :cond_293

    .line 192
    const/16 v44, 0x0

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v11, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v13, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/high16 v15, 0x4

    const/16 v16, 0x64

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/exchange/EasFetchDocumentSvc;->fetchDocumentCb(JJII)V

    .line 195
    sget-object v4, Lcom/android/exchange/EasFetchDocumentSvc;->TAG:Ljava/lang/String;

    const-string v5, "ERROR_FETCH_FAILURE "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v4, 0x0

    .line 331
    .end local v18           #b:[B
    .end local v20           #code:I
    .end local v24           #e:Lorg/apache/http/HttpEntity;
    .end local v27           #instream:Ljava/io/InputStream;
    .end local v30           #is:Ljava/io/InputStream;
    .end local v31           #len:I
    .end local v32           #length:I
    .end local v37           #read:I
    .end local v38           #res:Lorg/apache/http/HttpResponse;
    .end local v39           #respContentType:Lorg/apache/http/Header;
    .end local v43           #startPos:I
    .end local v44           #successp:Z
    :goto_244
    return v4

    .line 124
    .end local v25           #fileTypes:[Ljava/lang/String;
    .end local v26           #fileTypesLen:I
    :cond_245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";INLINE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_9b

    .line 154
    .restart local v25       #fileTypes:[Ljava/lang/String;
    .restart local v26       #fileTypesLen:I
    :catch_25c
    move-exception v24

    .line 155
    .local v24, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/exchange/EasFetchDocumentSvc;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchDocument() - resp exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v11, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v13, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v15, -0x3

    const/16 v16, 0x64

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/exchange/EasFetchDocumentSvc;->fetchDocumentCb(JJII)V

    move v4, v9

    .line 157
    goto :goto_244

    .line 160
    .end local v24           #e:Ljava/lang/Exception;
    .restart local v38       #res:Lorg/apache/http/HttpResponse;
    :cond_28f
    const/16 v20, -0x1

    goto/16 :goto_1a5

    .line 198
    .restart local v18       #b:[B
    .restart local v20       #code:I
    .local v24, e:Lorg/apache/http/HttpEntity;
    .restart local v27       #instream:Ljava/io/InputStream;
    .restart local v30       #is:Ljava/io/InputStream;
    .restart local v31       #len:I
    .restart local v32       #length:I
    .restart local v37       #read:I
    .restart local v39       #respContentType:Lorg/apache/http/Header;
    .restart local v43       #startPos:I
    .restart local v44       #successp:Z
    :cond_293
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/emailcommon/utility/Utility;->byteArrayToInt([BI)I

    move-result v34

    .line 199
    .local v34, numParts:I
    const/16 v4, 0xc

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/emailcommon/utility/Utility;->byteArrayToInt([BI)I

    move-result v4

    add-int/lit8 v43, v4, -0x14

    .line 200
    const/16 v4, 0x10

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/emailcommon/utility/Utility;->byteArrayToInt([BI)I

    move-result v32

    .line 201
    const/4 v4, 0x2

    move/from16 v0, v34

    if-ge v0, v4, :cond_2f9

    .line 203
    const/16 v44, 0x0

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v11, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v13, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/high16 v15, 0x4

    const/16 v16, 0x64

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/exchange/EasFetchDocumentSvc;->fetchDocumentCb(JJII)V

    .line 206
    sget-object v4, Lcom/android/exchange/EasFetchDocumentSvc;->TAG:Ljava/lang/String;

    const-string v5, "ERROR_FETCH_FAILURE "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v4, 0x0

    goto/16 :goto_244

    .line 211
    .end local v18           #b:[B
    .end local v27           #instream:Ljava/io/InputStream;
    .end local v34           #numParts:I
    .end local v37           #read:I
    :cond_2d2
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "fetchDocument() - resp: inLine"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog([Ljava/lang/String;)V

    .line 213
    :try_start_2df
    new-instance v29, Lcom/android/exchange/adapter/ItemOperationsParser;

    new-instance v4, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 215
    .local v29, iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    move-result v44

    .line 216
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/exchange/adapter/ItemOperationsParser;->outStream:Ljava/io/InputStream;

    move-object/from16 v30, v0
    :try_end_2f9
    .catch Ljava/io/IOException; {:try_start_2df .. :try_end_2f9} :catch_3b9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2df .. :try_end_2f9} :catch_3f0
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_2df .. :try_end_2f9} :catch_427

    .line 244
    .end local v29           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    :cond_2f9
    :goto_2f9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v17

    .line 245
    .local v17, attachmentUri:Landroid/net/Uri;
    const/16 v36, 0x0

    .line 248
    .local v36, os:Ljava/io/OutputStream;
    :try_start_30b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_314
    .catchall {:try_start_30b .. :try_end_314} :catchall_468

    move-result-object v36

    .line 249
    const/16 v45, 0x0

    .line 253
    .local v45, totalRead:I
    if-eqz v31, :cond_374

    .line 255
    const/16 v4, 0x4000

    :try_start_31b
    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 259
    .local v19, bytes:[B
    const-string v4, "fetchDocument() - resp: content-length "

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog(Ljava/lang/String;I)V

    .line 261
    :goto_328
    const/4 v4, 0x0

    const/16 v5, 0x4000

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v37

    .line 263
    .restart local v37       #read:I
    if-gez v37, :cond_42d

    .line 264
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchDocument() - Document load reached EOF,  totalRead: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog([Ljava/lang/String;)V
    :try_end_361
    .catchall {:try_start_31b .. :try_end_361} :catchall_453

    .line 285
    :try_start_361
    const-string v4, "fetchDocument() - total bytes: "

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog(Ljava/lang/String;I)V

    .line 287
    if-eqz v36, :cond_374

    .line 288
    invoke-virtual/range {v36 .. v36}, Ljava/io/OutputStream;->flush()V

    .line 289
    invoke-virtual/range {v36 .. v36}, Ljava/io/OutputStream;->close()V
    :try_end_372
    .catchall {:try_start_361 .. :try_end_372} :catchall_468

    .line 290
    const/16 v36, 0x0

    .line 296
    .end local v19           #bytes:[B
    .end local v37           #read:I
    :cond_374
    if-eqz v36, :cond_37c

    .line 297
    invoke-virtual/range {v36 .. v36}, Ljava/io/OutputStream;->flush()V

    .line 298
    invoke-virtual/range {v36 .. v36}, Ljava/io/OutputStream;->close()V

    .line 305
    :cond_37c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_3b5

    .line 310
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v22, cv:Landroid/content/ContentValues;
    const-string v4, "contentUri"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    sget-object v5, Lcom/android/exchange/EasFetchDocumentSvc;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v11, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v13, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v15, 0x0

    const/16 v16, 0x64

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/exchange/EasFetchDocumentSvc;->fetchDocumentCb(JJII)V

    .line 318
    .end local v17           #attachmentUri:Landroid/net/Uri;
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v36           #os:Ljava/io/OutputStream;
    .end local v39           #respContentType:Lorg/apache/http/Header;
    .end local v44           #successp:Z
    .end local v45           #totalRead:I
    :cond_3b5
    const/4 v9, 0x0

    .end local v24           #e:Lorg/apache/http/HttpEntity;
    .end local v30           #is:Ljava/io/InputStream;
    .end local v31           #len:I
    .end local v32           #length:I
    .end local v43           #startPos:I
    :goto_3b6
    move v4, v9

    .line 331
    goto/16 :goto_244

    .line 217
    .restart local v24       #e:Lorg/apache/http/HttpEntity;
    .restart local v30       #is:Ljava/io/InputStream;
    .restart local v31       #len:I
    .restart local v32       #length:I
    .restart local v39       #respContentType:Lorg/apache/http/Header;
    .restart local v43       #startPos:I
    .restart local v44       #successp:Z
    :catch_3b9
    move-exception v28

    .line 218
    .local v28, ioe:Ljava/io/IOException;
    const/16 v44, 0x0

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v11, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v13, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/high16 v15, 0x3

    const/16 v16, 0x64

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/exchange/EasFetchDocumentSvc;->fetchDocumentCb(JJII)V

    .line 222
    sget-object v4, Lcom/android/exchange/EasFetchDocumentSvc;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR_FETCH_RESPONSE_PARSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v4, 0x0

    goto/16 :goto_244

    .line 224
    .end local v28           #ioe:Ljava/io/IOException;
    :catch_3f0
    move-exception v35

    .line 225
    .local v35, ome:Ljava/lang/OutOfMemoryError;
    const/16 v44, 0x0

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v11, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v13, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/high16 v15, 0x5

    const/16 v16, 0x64

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/exchange/EasFetchDocumentSvc;->fetchDocumentCb(JJII)V

    .line 230
    sget-object v4, Lcom/android/exchange/EasFetchDocumentSvc;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR_FETCH_OUTOFMEMORY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v4, 0x0

    goto/16 :goto_244

    .line 232
    .end local v35           #ome:Ljava/lang/OutOfMemoryError;
    :catch_427
    move-exception v23

    .line 234
    .local v23, dae:Lcom/android/emailcommon/utility/DeviceAccessException;
    invoke-virtual/range {v23 .. v23}, Lcom/android/emailcommon/utility/DeviceAccessException;->printStackTrace()V

    goto/16 :goto_2f9

    .line 268
    .end local v23           #dae:Lcom/android/emailcommon/utility/DeviceAccessException;
    .restart local v17       #attachmentUri:Landroid/net/Uri;
    .restart local v19       #bytes:[B
    .restart local v36       #os:Ljava/io/OutputStream;
    .restart local v37       #read:I
    .restart local v45       #totalRead:I
    :cond_42d
    :try_start_42d
    const-string v4, "fetchDocument() - looping read bytes: "

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog(Ljava/lang/String;I)V

    .line 269
    move/from16 v0, v37

    move/from16 v1, v43

    if-lt v0, v1, :cond_44f

    .line 270
    sub-int v37, v37, v43

    .line 274
    add-int v45, v45, v37

    .line 277
    move-object/from16 v0, v36

    move-object/from16 v1, v19

    move/from16 v2, v43

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_44b
    .catchall {:try_start_42d .. :try_end_44b} :catchall_453

    .line 278
    const/16 v43, 0x0

    goto/16 :goto_328

    .line 281
    :cond_44f
    sub-int v43, v43, v37

    goto/16 :goto_328

    .line 285
    .end local v19           #bytes:[B
    .end local v37           #read:I
    :catchall_453
    move-exception v4

    :try_start_454
    const-string v5, "fetchDocument() - total bytes: "

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog(Ljava/lang/String;I)V

    .line 287
    if-eqz v36, :cond_467

    .line 288
    invoke-virtual/range {v36 .. v36}, Ljava/io/OutputStream;->flush()V

    .line 289
    invoke-virtual/range {v36 .. v36}, Ljava/io/OutputStream;->close()V

    .line 290
    const/16 v36, 0x0

    .line 285
    :cond_467
    throw v4
    :try_end_468
    .catchall {:try_start_454 .. :try_end_468} :catchall_468

    .line 296
    .end local v45           #totalRead:I
    :catchall_468
    move-exception v4

    if-eqz v36, :cond_471

    .line 297
    invoke-virtual/range {v36 .. v36}, Ljava/io/OutputStream;->flush()V

    .line 298
    invoke-virtual/range {v36 .. v36}, Ljava/io/OutputStream;->close()V

    .line 296
    :cond_471
    throw v4

    .line 321
    .end local v17           #attachmentUri:Landroid/net/Uri;
    .end local v24           #e:Lorg/apache/http/HttpEntity;
    .end local v30           #is:Ljava/io/InputStream;
    .end local v31           #len:I
    .end local v32           #length:I
    .end local v36           #os:Ljava/io/OutputStream;
    .end local v39           #respContentType:Lorg/apache/http/Header;
    .end local v43           #startPos:I
    .end local v44           #successp:Z
    :cond_472
    const/16 v9, 0x15

    .line 323
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasFetchDocumentSvc;->isAuthError(I)Z

    move-result v4

    if-eqz v4, :cond_480

    .line 324
    const/16 v9, 0x16

    .line 326
    :cond_480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/exchange/EasFetchDocumentSvc;->fetchDocumentCb(JJII)V

    .line 327
    const/4 v9, 0x0

    goto/16 :goto_3b6

    .end local v9           #result:I
    .end local v20           #code:I
    .end local v21           #commandType:Ljava/lang/String;
    .end local v25           #fileTypes:[Ljava/lang/String;
    .end local v26           #fileTypesLen:I
    .end local v33           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v38           #res:Lorg/apache/http/HttpResponse;
    .end local v41           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v42           #sizeStr:Ljava/lang/String;
    .restart local v40       #result:I
    :cond_495
    move/from16 v9, v40

    .end local v40           #result:I
    .restart local v9       #result:I
    goto/16 :goto_38
.end method

.method private fetchDocumentCb(JJII)V
    .registers 14
    .parameter "msgId"
    .parameter "attId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 82
    :goto_b
    return-void

    .line 79
    :catch_c
    move-exception v0

    goto :goto_b
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/android/exchange/EasFetchDocumentSvc;->setupService()Z

    .line 339
    :try_start_6
    sget-object v2, Lcom/android/exchange/EasFetchDocumentSvc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 341
    invoke-direct {p0}, Lcom/android/exchange/EasFetchDocumentSvc;->fetchDocument()I

    move-result v1

    .line 342
    .local v1, result:I
    packed-switch v1, :pswitch_data_90

    .line 350
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_75
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_36
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_55

    .line 359
    :goto_18
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "fetch document finished: "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog([Ljava/lang/String;)V

    .line 360
    const-string v2, "fetch document exit status: "

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v2, v3}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog(Ljava/lang/String;I)V

    .line 361
    .end local v1           #result:I
    :goto_2e
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 363
    return-void

    .line 344
    .restart local v1       #result:I
    :pswitch_32
    const/4 v2, 0x2

    :try_start_33
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_75
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_35} :catch_55

    goto :goto_18

    .line 353
    .end local v1           #result:I
    :catch_36
    move-exception v0

    .line 354
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_38
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_75

    .line 359
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "fetch document finished: "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog([Ljava/lang/String;)V

    .line 360
    const-string v2, "fetch document exit status: "

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v2, v3}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog(Ljava/lang/String;I)V

    goto :goto_2e

    .line 347
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #result:I
    :pswitch_51
    const/4 v2, 0x3

    :try_start_52
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_54
    .catchall {:try_start_52 .. :try_end_54} :catchall_75
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_54} :catch_36
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_54} :catch_55

    goto :goto_18

    .line 355
    .end local v1           #result:I
    :catch_55
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/Exception;
    :try_start_56
    const-string v2, "EasFetchDocumentSvc exception: "

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 357
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_75

    .line 359
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "fetch document finished: "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog([Ljava/lang/String;)V

    .line 360
    const-string v2, "fetch document exit status: "

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v2, v3}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog(Ljava/lang/String;I)V

    goto :goto_2e

    .line 359
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_75
    move-exception v2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "fetch document finished: "

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/exchange/EasFetchDocumentSvc;->att:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog([Ljava/lang/String;)V

    .line 360
    const-string v3, "fetch document exit status: "

    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasFetchDocumentSvc;->userLog(Ljava/lang/String;I)V

    .line 361
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 359
    throw v2

    .line 342
    :pswitch_data_90
    .packed-switch 0x15
        :pswitch_51
        :pswitch_32
    .end packed-switch
.end method

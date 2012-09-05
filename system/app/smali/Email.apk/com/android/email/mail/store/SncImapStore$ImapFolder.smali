.class Lcom/android/email/mail/store/SncImapStore$ImapFolder;
.super Lcom/android/emailcommon/mail/Folder;
.source "SncImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/SncImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapFolder"
.end annotation


# instance fields
.field protected mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

.field private mDelimiter:I

.field protected mExists:Z

.field protected mMessageCount:I

.field protected mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

.field protected final mName:Ljava/lang/String;

.field private mSelect:Z

.field protected final mStore:Lcom/android/email/mail/store/SncImapStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)V
    .registers 4
    .parameter "store"
    .parameter "name"

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 840
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMessageCount:I

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mSelect:Z

    .line 846
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mDelimiter:I

    .line 850
    iput-object p1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    .line 851
    iput-object p2, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    .line 852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    .line 853
    return-void
.end method

.method private checkOpen()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_27

    .line 2206
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2208
    :cond_27
    return-void
.end method

.method private decodeBody(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;
    .registers 12
    .parameter "in"
    .parameter "contentTransferEncoding"
    .parameter "size"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1809
    invoke-static {p1, p2}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 1810
    new-instance v4, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v4}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 1811
    .local v4, tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v4}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 1812
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x4000

    new-array v0, v5, [B

    .line 1813
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 1814
    .local v2, n:I
    const/4 v1, 0x0

    .line 1815
    .local v1, count:I
    :cond_13
    :goto_13
    const/4 v5, -0x1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v5, v2, :cond_2a

    .line 1816
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1817
    add-int/2addr v1, v2

    .line 1818
    if-eqz p4, :cond_13

    .line 1819
    mul-int/lit8 v5, v1, 0x64

    div-int/2addr v5, p3

    sget-object v6, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->SNCIMAPSTORE:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    invoke-interface {p4, v5, v6}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V

    goto :goto_13

    .line 1823
    :cond_2a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1824
    return-object v4
.end method

.method private handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1851
    const/4 v0, 0x1

    const-string v1, "EXISTS"

    invoke-virtual {p1, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1852
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMessageCount:I

    .line 1854
    :cond_14
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1839
    .local p1, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1840
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_4

    .line 1842
    .end local v1           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_14
    return-void
.end method

.method private static parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1859
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1863
    new-instance v1, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 1864
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v2

    :goto_15
    if-ge v0, v2, :cond_77

    .line 1865
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v3

    .line 1866
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1871
    new-instance v3, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v3}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 1872
    const-string v4, "TEXT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1873
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    .line 1878
    :goto_3b
    invoke-virtual {v1, v3}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 1864
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1876
    :cond_41
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    goto :goto_3b

    .line 1881
    :cond_62
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1882
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1887
    :cond_77
    invoke-interface {p1, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 2039
    :goto_7a
    return-void

    .line 1898
    :cond_7b
    const/4 v0, 0x0

    .line 1899
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    .line 1900
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    .line 1901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1904
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 1905
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v4

    .line 1906
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    .line 1907
    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v6

    .line 1935
    :try_start_c1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1941
    const/4 v1, 0x1

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v8

    :goto_cb
    if-ge v1, v8, :cond_f4

    .line 1947
    const-string v9, ";\n %s=\"%s\""

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v3, v12}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    add-int/lit8 v1, v1, 0x2

    goto :goto_cb

    .line 1952
    :cond_f4
    const-string v1, "Content-Type"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    const-string v1, "TEXT"

    invoke-virtual {v2, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_175

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    if-eqz v1, :cond_175

    .line 1962
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    :try_end_116
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c1 .. :try_end_116} :catch_17c

    move-result-object v0

    .line 1971
    :goto_117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1973
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v2

    if-lez v2, :cond_19b

    .line 1974
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1976
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_138

    .line 1977
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    :cond_138
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    .line 1981
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19b

    .line 1986
    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v3

    :goto_148
    if-ge v0, v3, :cond_19b

    .line 1989
    const-string v7, ";\n %s=\"%s\""

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v2, v10}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    add-int/lit8 v0, v0, 0x2

    goto :goto_148

    .line 1964
    :cond_175
    const/16 v1, 0x8

    :try_start_177
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    :try_end_17a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_177 .. :try_end_17a} :catch_17c

    move-result-object v0

    goto :goto_117

    .line 1966
    :catch_17c
    move-exception v1

    .line 1967
    const-string v1, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!! IndexOutOfBoundsException !! bs.getsize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_117

    .line 1997
    :cond_19b
    if-lez v6, :cond_1bc

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "size"

    invoke-static {v0, v2}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1bc

    .line 1999
    const-string v0, ";\n size=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    :cond_1bc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1cb

    .line 2007
    const-string v0, "Content-Disposition"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    :cond_1cb
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1da

    .line 2016
    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    :cond_1da
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e9

    .line 2024
    const-string v0, "Content-ID"

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    :cond_1e9
    if-lez v6, :cond_1f5

    .line 2028
    instance-of v0, p1, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    if-eqz v0, :cond_1fc

    move-object v0, p1

    .line 2029
    check-cast v0, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setSize(I)V

    .line 2036
    :cond_1f5
    :goto_1f5
    const-string v0, "X-Android-Attachment-StoreData"

    invoke-interface {p1, v0, p2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 2030
    :cond_1fc
    instance-of v0, p1, Lcom/android/emailcommon/internet/MimeBodyPart;

    if-eqz v0, :cond_207

    move-object v0, p1

    .line 2031
    check-cast v0, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-virtual {v0, v6}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    goto :goto_1f5

    .line 2033
    :cond_207
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown part type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2048
    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 2049
    const/4 v2, 0x0

    .line 2050
    const/4 v1, 0x0

    .line 2053
    :try_start_5
    array-length v5, p1
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_159
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_166

    const/4 v0, 0x0

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    :goto_a
    if-ge v0, v5, :cond_135

    :try_start_c
    aget-object v6, p1, v0

    .line 2055
    new-instance v3, Lcom/android/email/mail/transport/CountingOutputStream;

    invoke-direct {v3}, Lcom/android/email/mail/transport/CountingOutputStream;-><init>()V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_161
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_16e

    .line 2056
    :try_start_13
    new-instance v1, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    invoke-direct {v1, v3}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_15d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_169

    .line 2058
    :try_start_18
    sget-object v2, Lcom/android/email/mail/store/SncImapStore;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getMessageId_original()J

    move-result-wide v7

    invoke-virtual {v6, v2, v7, v8, v1}, Lcom/android/emailcommon/mail/Message;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V

    .line 2062
    invoke-virtual {v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 2064
    const-string v2, ""

    .line 2065
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v7

    .line 2066
    array-length v4, v7

    if-lez v4, :cond_72

    .line 2067
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2068
    const/4 v4, 0x0

    array-length v9, v7

    :goto_34
    if-ge v4, v9, :cond_67

    .line 2069
    aget-object v10, v7, v4

    .line 2070
    sget-object v11, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v10, v11, :cond_44

    .line 2071
    const-string v10, " \\SEEN"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 2072
    :cond_44
    sget-object v11, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v10, v11, :cond_41

    .line 2073
    const-string v10, " \\FLAGGED"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4d
    .catchall {:try_start_18 .. :try_end_4d} :catchall_132
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_4d} :catch_4e

    goto :goto_41

    .line 2140
    :catch_4e
    move-exception v0

    move-object v2, v3

    .line 2141
    :goto_50
    :try_start_50
    iget-object v3, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v3, v0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_57

    .line 2143
    :catchall_57
    move-exception v0

    move-object v3, v2

    .line 2144
    :goto_59
    if-eqz v3, :cond_5e

    .line 2145
    :try_start_5b
    invoke-virtual {v3}, Lcom/android/email/mail/transport/CountingOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_14d

    .line 2150
    :cond_5e
    :goto_5e
    if-eqz v1, :cond_63

    .line 2151
    :try_start_60
    invoke-virtual {v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_153

    .line 2155
    :cond_63
    :goto_63
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    throw v0

    .line 2076
    :cond_67
    :try_start_67
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_72

    .line 2077
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2081
    :cond_72
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v7, "APPEND \"%s\" (%s) {%d}"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/email/mail/store/SncImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v2, 0x2

    invoke-virtual {v3}, Lcom/android/email/mail/transport/CountingOutputStream;->getCount()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_98
    .catchall {:try_start_67 .. :try_end_98} :catchall_132
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_98} :catch_4e

    move-object v2, v1

    .line 2086
    :goto_99
    :try_start_99
    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v4

    .line 2087
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 2088
    new-instance v1, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    iget-object v7, v7, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b2
    .catchall {:try_start_99 .. :try_end_b2} :catchall_15d
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_b2} :catch_169

    .line 2091
    :try_start_b2
    sget-object v2, Lcom/android/email/mail/store/SncImapStore;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getMessageId_original()J

    move-result-wide v7

    invoke-virtual {v6, v2, v7, v8, v1}, Lcom/android/emailcommon/mail/Message;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V

    .line 2096
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 2097
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 2098
    invoke-virtual {v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 2102
    :goto_c8
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v2

    if-eqz v2, :cond_174

    .line 2111
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    .line 2112
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v4

    const/4 v7, 0x3

    if-lt v4, v7, :cond_f8

    const/4 v4, 0x0

    const-string v7, "APPENDUID"

    invoke-virtual {v2, v4, v7}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 2113
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    .line 2114
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_109

    .line 2115
    invoke-virtual {v6, v2}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->close()V
    :try_end_f8
    .catchall {:try_start_b2 .. :try_end_f8} :catchall_132
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_f8} :catch_4e

    .line 2053
    :cond_f8
    :goto_f8
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_a

    .line 2099
    :cond_fe
    :try_start_fe
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v1

    if-nez v1, :cond_107

    .line 2100
    invoke-direct {p0, v4}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V
    :try_end_107
    .catchall {:try_start_fe .. :try_end_107} :catchall_15d
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_107} :catch_169

    :cond_107
    move-object v1, v2

    goto :goto_c8

    .line 2127
    :cond_109
    :try_start_109
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    .line 2128
    if-eqz v2, :cond_f8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f8

    .line 2131
    const-string v4, "(HEADER MESSAGE-ID %s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2133
    array-length v4, v2

    if-lez v4, :cond_12e

    .line 2134
    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v6, v2}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    .line 2136
    :cond_12e
    invoke-virtual {v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->close()V
    :try_end_131
    .catchall {:try_start_109 .. :try_end_131} :catchall_132
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_131} :catch_4e

    goto :goto_f8

    .line 2143
    :catchall_132
    move-exception v0

    goto/16 :goto_59

    .line 2144
    :cond_135
    if-eqz v1, :cond_13a

    .line 2145
    :try_start_137
    invoke-virtual {v1}, Lcom/android/email/mail/transport/CountingOutputStream;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_143

    .line 2150
    :cond_13a
    :goto_13a
    if-eqz v2, :cond_13f

    .line 2151
    :try_start_13c
    invoke-virtual {v2}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_13f} :catch_148

    .line 2155
    :cond_13f
    :goto_13f
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    .line 2157
    return-void

    .line 2146
    :catch_143
    move-exception v0

    .line 2147
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13a

    .line 2152
    :catch_148
    move-exception v0

    .line 2153
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13f

    .line 2146
    :catch_14d
    move-exception v2

    .line 2147
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5e

    .line 2152
    :catch_153
    move-exception v1

    .line 2153
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_63

    .line 2143
    :catchall_159
    move-exception v0

    move-object v3, v2

    goto/16 :goto_59

    :catchall_15d
    move-exception v0

    move-object v1, v2

    goto/16 :goto_59

    :catchall_161
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_59

    .line 2140
    :catch_166
    move-exception v0

    goto/16 :goto_50

    :catch_169
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_50

    :catch_16e
    move-exception v0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_50

    :cond_174
    move-object v2, v1

    goto/16 :goto_99
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 1061
    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .registers 4
    .parameter "expunge"

    .prologue
    .line 990
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMessageCount:I

    .line 991
    monitor-enter p0

    .line 992
    :try_start_4
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    .line 993
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/SncImapStore;->poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V

    .line 994
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    .line 995
    monitor-exit p0

    .line 996
    return-void

    .line 995
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public close(ZZ)V
    .registers 5
    .parameter "expunge"
    .parameter "forceClose"

    .prologue
    .line 973
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMessageCount:I

    .line 974
    monitor-enter p0

    .line 975
    :try_start_4
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    .line 976
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-eqz v0, :cond_12

    .line 977
    if-eqz p2, :cond_17

    .line 978
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->close()V

    .line 983
    :cond_12
    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    .line 984
    monitor-exit p0

    .line 985
    return-void

    .line 980
    :cond_17
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/SncImapStore;->poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V

    goto :goto_12

    .line 984
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method protected connectionExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2212
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 2213
    const-string v0, "Z7App"

    const-string v1, "Connection Exception detected: "

    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2215
    :cond_b
    invoke-virtual {p1}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 2216
    invoke-virtual {p1}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->close()V

    .line 2217
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-ne p1, v0, :cond_1a

    .line 2220
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->close(ZZ)V

    .line 2222
    :cond_1a
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .registers 15
    .parameter "messages"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 1125
    :try_start_3
    iget-object v6, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v7, "UID COPY %s \"%s\""

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/SncImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/email/mail/store/SncImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1128
    .local v4, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    if-eqz p3, :cond_83

    .line 1129
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1130
    .local v3, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    .line 1131
    .local v5, serverUid:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 1136
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    .line 1137
    .local v0, copyList:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_67

    const/4 v6, 0x0

    const-string v7, "COPYUID"

    invoke-virtual {v0, v6, v7}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 1138
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    .line 1139
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_67

    .line 1140
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-interface {p3, v6, v5}, Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;->onMessageUidChange(Lcom/android/emailcommon/mail/Message;Ljava/lang/String;)V

    .line 1144
    .end local v0           #copyList:Lcom/android/email/mail/store/imap/ImapList;
    :cond_67
    if-eqz v5, :cond_6f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1145
    :cond_6f
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-interface {p3, v6, v5}, Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;->onMessageUidChange(Lcom/android/emailcommon/mail/Message;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_7e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_75} :catch_76

    goto :goto_2a

    .line 1149
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v4           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v5           #serverUid:Ljava/lang/String;
    :catch_76
    move-exception v2

    .line 1150
    .local v2, ioe:Ljava/io/IOException;
    :try_start_77
    iget-object v6, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v6, v2}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v6

    throw v6
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_7e

    .line 1152
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_7e
    move-exception v6

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    throw v6

    .restart local v4       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_83
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    .line 1154
    return-void
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .registers 11
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1072
    const/4 v0, 0x0

    .line 1073
    .local v0, connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    monitor-enter p0

    .line 1074
    :try_start_4
    iget-object v5, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-nez v5, :cond_31

    .line 1075
    iget-object v5, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/SncImapStore;->getConnection()Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-result-object v0

    .line 1079
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_34

    .line 1081
    :try_start_f
    const-string v5, "CREATE \"%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/email/mail/store/SncImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_4c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_24} :catch_37
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_24} :catch_46

    .line 1092
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 1093
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-nez v4, :cond_30

    .line 1094
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/SncImapStore;->poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V

    :cond_30
    :goto_30
    return v3

    .line 1077
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    goto :goto_e

    .line 1079
    :catchall_34
    move-exception v3

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_34

    throw v3

    .line 1085
    :catch_37
    move-exception v2

    .line 1092
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 1093
    iget-object v3, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-nez v3, :cond_44

    .line 1094
    iget-object v3, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/SncImapStore;->poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V

    :cond_44
    move v3, v4

    goto :goto_30

    .line 1088
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_46
    move-exception v1

    .line 1089
    .local v1, ioe:Ljava/io/IOException;
    :try_start_47
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4c

    .line 1092
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_4c
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 1093
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-nez v4, :cond_59

    .line 1094
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/SncImapStore;->poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V

    :cond_59
    throw v3
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .registers 3
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2241
    new-instance v0, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    return-object v0
.end method

.method public delete(Z)Z
    .registers 3
    .parameter "recurse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method protected destroyResponses()V
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-eqz v0, :cond_9

    .line 857
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 859
    :cond_9
    return-void
.end method

.method eSearchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .parameter "searchCriteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1375
    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 1377
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/String;

    new-instance v8, Ljava/lang/String;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v1, v10

    new-instance v8, Ljava/lang/String;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v1, v11

    .line 1382
    .local v1, eSearchResp:[Ljava/lang/String;
    :try_start_1a
    iget-object v8, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID SEARCH return (ALL COUNT) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_88
    .catch Lcom/android/email/mail/store/SncImapStore$ImapException; {:try_start_1a .. :try_end_32} :catch_79
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_32} :catch_80

    move-result-object v6

    .line 1393
    .local v6, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_33
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ad

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1394
    .local v5, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v8, 0x0

    const-string v9, "ESEARCH"

    invoke-virtual {v5, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 1398
    const/4 v2, 0x3

    .local v2, i:I
    :goto_4d
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v8

    if-ge v2, v8, :cond_37

    .line 1399
    invoke-virtual {v5, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    .line 1400
    .local v7, s:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ALL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 1401
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v5, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    .line 1402
    const/4 v8, 0x0

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    .line 1398
    :cond_76
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 1384
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v7           #s:Lcom/android/email/mail/store/imap/ImapString;
    :catch_79
    move-exception v0

    .line 1385
    .local v0, e:Lcom/android/email/mail/store/SncImapStore$ImapException;
    sget-object v1, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_7c
    .catchall {:try_start_33 .. :try_end_7c} :catchall_88

    .line 1414
    .end local v1           #eSearchResp:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    .end local v0           #e:Lcom/android/email/mail/store/SncImapStore$ImapException;
    :goto_7f
    return-object v1

    .line 1386
    .restart local v1       #eSearchResp:[Ljava/lang/String;
    :catch_80
    move-exception v4

    .line 1387
    .local v4, ioe:Ljava/io/IOException;
    :try_start_81
    iget-object v8, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v8, v4}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v8

    throw v8
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_88

    .line 1414
    .end local v4           #ioe:Ljava/io/IOException;
    :catchall_88
    move-exception v8

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    throw v8

    .line 1403
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v7       #s:Lcom/android/email/mail/store/imap/ImapString;
    :cond_8d
    :try_start_8d
    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "COUNT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 1404
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v5, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    .line 1405
    const/4 v8, 0x1

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    goto :goto_76

    .line 1409
    .end local v2           #i:I
    .end local v5           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v7           #s:Lcom/android/email/mail/store/imap/ImapString;
    :cond_ad
    const-string v8, "SncImapStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Esearch response "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_8d .. :try_end_d4} :catchall_88

    .line 1414
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    goto :goto_7f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 2233
    instance-of v0, p1, Lcom/android/email/mail/store/SncImapStore$ImapFolder;

    if-eqz v0, :cond_f

    .line 2234
    check-cast p1, Lcom/android/email/mail/store/SncImapStore$ImapFolder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2236
    :goto_e
    return v0

    .restart local p1
    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public exists()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1021
    iget-boolean v5, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mExists:Z

    if-eqz v5, :cond_7

    .line 1053
    :cond_6
    :goto_6
    return v3

    .line 1030
    :cond_7
    const/4 v0, 0x0

    .line 1031
    .local v0, connection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;
    monitor-enter p0

    .line 1032
    :try_start_9
    iget-object v5, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-nez v5, :cond_39

    .line 1033
    iget-object v5, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/SncImapStore;->getConnection()Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-result-object v0

    .line 1037
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_3c

    .line 1039
    :try_start_14
    const-string v5, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/email/mail/store/SncImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 1041
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mExists:Z
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_54
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_14 .. :try_end_2c} :catch_3f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2c} :catch_4e

    .line 1051
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 1052
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-nez v4, :cond_6

    .line 1053
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/SncImapStore;->poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V

    goto :goto_6

    .line 1035
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    goto :goto_13

    .line 1037
    :catchall_3c
    move-exception v3

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3c

    throw v3

    .line 1044
    :catch_3f
    move-exception v2

    .line 1051
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 1052
    iget-object v3, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-nez v3, :cond_4c

    .line 1053
    iget-object v3, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/SncImapStore;->poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V

    :cond_4c
    move v3, v4

    goto :goto_6

    .line 1047
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_4e
    move-exception v1

    .line 1048
    .local v1, ioe:Ljava/io/IOException;
    :try_start_4f
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_54

    .line 1051
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_54
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    .line 1052
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-nez v4, :cond_61

    .line 1053
    iget-object v4, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/SncImapStore;->poolConnection(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)V

    :cond_61
    throw v3
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2161
    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 2163
    :try_start_3
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v1, "EXPUNGE"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_13

    .line 2167
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    .line 2169
    const/4 v0, 0x0

    return-object v0

    .line 2164
    :catch_13
    move-exception v0

    .line 2165
    :try_start_14
    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1b

    .line 2167
    :catchall_1b
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    throw v0
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .registers 8
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1532
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1540
    return-void

    .line 1533
    :catch_4
    move-exception v0

    .line 1534
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-eqz v1, :cond_2a

    .line 1536
    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->logLastDiscourse()V

    .line 1538
    :cond_2a
    throw v0
.end method

.method public fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1556
    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_6

    .line 1800
    :goto_5
    return-void

    .line 1559
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 1560
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1561
    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v3, :cond_20

    aget-object v4, p1, v2

    .line 1562
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1576
    :cond_20
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1578
    const-string v3, "UID"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1580
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1581
    const-string v3, "FLAGS"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1584
    :cond_39
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->ANNOTATION:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1585
    const-string v3, "ANNOTATION (/vendor/vzw/tag/* value.priv)"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1588
    :cond_48
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1589
    const-string v3, "INTERNALDATE"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1590
    const-string v3, "RFC822.SIZE"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1591
    const-string v3, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id x-priority importance X-VZW-SOURCE-USER X-VZW-SOURCE-MESSAGE-FOLDER)]"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1594
    :cond_61
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1595
    const-string v3, "BODYSTRUCTURE"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1598
    :cond_70
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/FetchProfile;->getFirstPart()Lcom/android/emailcommon/mail/Part;

    move-result-object v6

    .line 1599
    if-eqz v6, :cond_116

    .line 1600
    const-string v3, "X-Android-Attachment-StoreData"

    invoke-interface {v6, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1602
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1603
    if-eqz v3, :cond_9b

    .line 1604
    const-string v7, "BODY.PEEK"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v3, v3, v8

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1609
    :cond_9b
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 1610
    invoke-interface {v6}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v3

    if-nez v3, :cond_fe

    .line 1611
    sget-object v3, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_PART_SANE:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1616
    :cond_b0
    :goto_b0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1624
    :cond_b7
    :goto_b7
    :try_start_b7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v4, "UID FETCH %s (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/SncImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const/16 v9, 0x20

    invoke-static {v2, v9}, Lcom/android/emailcommon/utility/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_e2} :catch_14f

    .line 1632
    :cond_e2
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {v2}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v7

    .line 1634
    const/4 v2, 0x1

    const-string v3, "FETCH"

    invoke-virtual {v7, v2, v3}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z
    :try_end_f0
    .catchall {:try_start_e2 .. :try_end_f0} :catchall_303

    move-result v2

    if-nez v2, :cond_136

    .line 1794
    :try_start_f3
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    .line 1796
    :goto_f6
    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f9} :catch_14f

    move-result v2

    if-eqz v2, :cond_e2

    goto/16 :goto_5

    .line 1613
    :cond_fe
    const-string v3, "<0.%d>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v6}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b0

    .line 1617
    :cond_116
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 1618
    sget-object v3, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 1619
    :cond_126
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 1620
    const-string v3, "BODY.PEEK[]"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 1637
    :cond_136
    const/4 v2, 0x2

    :try_start_137
    invoke-virtual {v7, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v8

    .line 1638
    const-string v2, "UID"

    invoke-virtual {v8, v2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    .line 1640
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_148
    .catchall {:try_start_137 .. :try_end_148} :catchall_303

    move-result v3

    if-eqz v3, :cond_15b

    .line 1794
    :try_start_14b
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_14f

    goto :goto_f6

    .line 1797
    :catch_14f
    move-exception v2

    .line 1798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2

    .line 1643
    :cond_15b
    :try_start_15b
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/SncImapStore$ImapMessage;
    :try_end_161
    .catchall {:try_start_15b .. :try_end_161} :catchall_303

    .line 1645
    if-nez v2, :cond_167

    .line 1794
    :try_start_163
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_166} :catch_14f

    goto :goto_f6

    .line 1649
    :cond_167
    :try_start_167
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->ANNOTATION:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33b

    .line 1654
    const-string v3, "SncImapStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fetchList for Annotation"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v3, "SncImapStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fetchList2 for Annotation"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    const/16 v3, 0x9

    invoke-virtual {v8, v3}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v9

    .line 1661
    if-eqz v9, :cond_30d

    .line 1662
    const-string v3, "SncImapStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "annotationList list size be "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v10

    move v4, v3

    :goto_1df
    if-ge v4, v10, :cond_30d

    .line 1665
    invoke-virtual {v9, v4}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v11

    .line 1666
    if-eqz v11, :cond_308

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_308

    .line 1667
    const-string v3, "SncImapStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AnnotationList["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v9, v11}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v12

    .line 1671
    if-eqz v12, :cond_308

    .line 1672
    const-string v3, "SncImapStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TagValue be "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapList;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const/4 v3, 0x0

    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v13

    :goto_256
    if-ge v3, v13, :cond_308

    .line 1675
    invoke-virtual {v12, v3}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v14

    .line 1677
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2f1

    const-string v15, "value.priv"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2f1

    .line 1679
    const-string v15, "SncImapStore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "AnnotationTag["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    const-string v15, "SncImapStore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Storing Message Tags "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/vendor/vzw/tag/"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2f5

    .line 1690
    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1691
    const-string v15, "/vendor/vzw/tag/"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v14, v14, v16

    invoke-virtual {v2, v15, v14}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    :cond_2f1
    :goto_2f1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_256

    .line 1695
    :cond_2f5
    const-string v15, "/vendor/vzw/tag/"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15, v14}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_302
    .catchall {:try_start_167 .. :try_end_302} :catchall_303

    goto :goto_2f1

    .line 1794
    :catchall_303
    move-exception v2

    :try_start_304
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    throw v2
    :try_end_308
    .catch Ljava/io/IOException; {:try_start_304 .. :try_end_308} :catch_14f

    .line 1664
    :cond_308
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_1df

    .line 1705
    :cond_30d
    :try_start_30d
    invoke-virtual {v2}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->getTagsMap()Ljava/util/HashMap;

    move-result-object v3

    .line 1706
    const-string v4, "SncImapStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Message Tags for uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    :cond_33b
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b2

    .line 1711
    const-string v3, "FLAGS"

    invoke-virtual {v8, v3}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v4

    .line 1713
    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v9

    :goto_350
    if-ge v3, v9, :cond_3b2

    .line 1714
    invoke-virtual {v4, v3}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v10

    .line 1715
    const-string v11, "\\DELETED"

    invoke-virtual {v10, v11}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_367

    .line 1716
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1713
    :cond_364
    :goto_364
    add-int/lit8 v3, v3, 0x1

    goto :goto_350

    .line 1717
    :cond_367
    const-string v11, "\\ANSWERED"

    invoke-virtual {v10, v11}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_376

    .line 1718
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_364

    .line 1719
    :cond_376
    const-string v11, "\\SEEN"

    invoke-virtual {v10, v11}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_385

    .line 1720
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_364

    .line 1721
    :cond_385
    const-string v11, "\\FLAGGED"

    invoke-virtual {v10, v11}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_394

    .line 1722
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_364

    .line 1723
    :cond_394
    const-string v11, "vSent"

    invoke-virtual {v10, v11}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3a3

    .line 1726
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->SENT:Lcom/android/emailcommon/mail/Flag;

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_364

    .line 1727
    :cond_3a3
    const-string v11, "vDraft"

    invoke-virtual {v10, v11}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_364

    .line 1728
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->DRAFT:Lcom/android/emailcommon/mail/Flag;

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_364

    .line 1732
    :cond_3b2
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e8

    .line 1733
    const-string v3, "INTERNALDATE"

    invoke-virtual {v8, v3}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v3

    .line 1735
    const-string v4, "RFC822.SIZE"

    invoke-virtual {v8, v4}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v4

    .line 1737
    const-string v9, "BODY[HEADER"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v9

    .line 1740
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    .line 1741
    invoke-virtual {v2, v4}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setSize(I)V

    .line 1742
    invoke-static {v9}, Lcom/android/emailcommon/utility/Utility;->streamFromAsciiString(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 1744
    :cond_3e8
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_403

    .line 1745
    const-string v3, "BODYSTRUCTURE"

    invoke-virtual {v8, v3}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 1747
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z
    :try_end_3fb
    .catchall {:try_start_30d .. :try_end_3fb} :catchall_303

    move-result v4

    if-nez v4, :cond_403

    .line 1749
    :try_start_3fe
    const-string v4, "TEXT"

    invoke-static {v3, v2, v4}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    :try_end_403
    .catchall {:try_start_3fe .. :try_end_403} :catchall_303
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3fe .. :try_end_403} :catch_45e

    .line 1758
    :cond_403
    :goto_403
    :try_start_403
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_419

    if-nez v6, :cond_427

    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_427

    .line 1765
    :cond_419
    const-string v3, "BODY["

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v3

    .line 1766
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1767
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 1769
    :cond_427
    if-eqz v6, :cond_452

    invoke-interface {v6}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v3

    if-lez v3, :cond_452

    .line 1775
    const-string v3, "BODY["

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1777
    const-string v4, "Content-Transfer-Encoding"

    invoke-interface {v6, v4}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aget-object v4, v4, v8

    .line 1786
    invoke-interface {v6}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v4, v8, v1}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;

    move-result-object v3

    invoke-interface {v6, v3}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 1790
    :cond_452
    if-eqz p3, :cond_459

    .line 1791
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    :try_end_459
    .catchall {:try_start_403 .. :try_end_459} :catchall_303

    .line 1794
    :cond_459
    :try_start_459
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V
    :try_end_45c
    .catch Ljava/io/IOException; {:try_start_459 .. :try_end_45c} :catch_14f

    goto/16 :goto_f6

    .line 1750
    :catch_45e
    move-exception v3

    .line 1754
    const/4 v3, 0x0

    :try_start_460
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_463
    .catchall {:try_start_460 .. :try_end_463} :catchall_303

    goto :goto_403
.end method

.method public fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .registers 7
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .parameter "retrieveSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1549
    const-string v0, "Email"

    const-string v1, "fetchWithRetrieveSize function in SncImapStore : Do nothing."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    return-void
.end method

.method public getDelimiter()I
    .registers 2

    .prologue
    .line 967
    iget v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mDelimiter:I

    return v0
.end method

.method public getMailBoxSynchronizer()Lcom/android/email/mail/StoreSynchronizer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1015
    const-string v0, "Z7App"

    const-string v1, "SncImapStore::getMailBoxSynchronizer "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getMailBoxSynchronizer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->getMailBoxSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .registers 6
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1457
    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1460
    .local v1, uids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    array-length v2, v1

    if-ge v0, v2, :cond_2f

    .line 1461
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1462
    new-instance v2, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-direct {v2, p1, p0}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1465
    :goto_2b
    return-object v2

    .line 1460
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1465
    :cond_2f
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public getMessageCount()I
    .registers 2

    .prologue
    .line 1158
    iget v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessageUidListByInterval(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .parameter "sentSince"
    .parameter "where"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1491
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_28

    .line 1492
    :cond_8
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing search criteria "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1494
    :cond_28
    const-string v0, "all NOT DELETED"

    .line 1496
    .local v0, searchCriteria:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " since "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1497
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->searchForUidList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 10
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1471
    if-lt p1, v4, :cond_9

    if-lt p2, v4, :cond_9

    if-ge p2, p1, :cond_23

    .line 1472
    :cond_9
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid range: %d %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1474
    :cond_23
    const-string v0, "%d:%d NOT DELETED"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(ILjava/lang/Object;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 22
    .parameter "start"
    .parameter "param_emailsearchinfo"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1228
    const/4 v2, 0x0

    .line 1230
    .local v2, emailsearchinfo:Lcom/android/email/EmailSearchAdapter;
    const-string v13, "Z7App"

    const-string v14, " getMessages "

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    move-object/from16 v0, p2

    instance-of v13, v0, Lcom/android/email/EmailSearchAdapter;

    if-nez v13, :cond_36

    move-object/from16 v2, p2

    .line 1233
    check-cast v2, Lcom/android/email/EmailSearchAdapter;

    .line 1239
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ge v0, v13, :cond_4d

    .line 1240
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const-string v14, "Invalid message set %d %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v2}, Lcom/android/email/EmailSearchAdapter;->getSearchText()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1235
    :cond_36
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const-string v14, "Invalid parameters of getMessages() %d "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1244
    :cond_4d
    invoke-virtual {v2}, Lcom/android/email/EmailSearchAdapter;->getSearchText()Ljava/lang/String;

    move-result-object v11

    .line 1246
    .local v11, searchText:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/email/EmailSearchAdapter;->getSearchType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d1

    .line 1249
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " SUBJECT \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1260
    .local v10, searchQuery:Ljava/lang/String;
    :goto_71
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 1261
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .local v7, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    :try_start_79
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v12, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v14, "UID SEARCH %d:*%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 1266
    .local v9, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_9f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_123

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1267
    .local v8, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "SEARCH"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9f

    .line 1268
    const/4 v3, 0x1

    .local v3, i:I
    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v1

    .local v1, count:I
    :goto_c1
    if-ge v3, v1, :cond_9f

    .line 1269
    invoke-virtual {v8, v3}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_ce} :catch_144

    .line 1268
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 1250
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .end local v8           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v9           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v10           #searchQuery:Ljava/lang/String;
    .end local v12           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d1
    invoke-virtual {v2}, Lcom/android/email/EmailSearchAdapter;->getSearchType()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_f2

    .line 1254
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " FROM \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #searchQuery:Ljava/lang/String;
    goto :goto_71

    .line 1256
    .end local v10           #searchQuery:Ljava/lang/String;
    :cond_f2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " OR SUBJECT \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " FROM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #searchQuery:Ljava/lang/String;
    goto/16 :goto_71

    .line 1273
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .restart local v9       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v12       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_123
    const/4 v3, 0x0

    .restart local v3       #i:I
    :try_start_124
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1       #count:I
    :goto_128
    if-ge v3, v1, :cond_150

    .line 1274
    new-instance v6, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v6, v13, v0}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1275
    .local v6, message:Lcom/android/email/mail/store/SncImapStore$ImapMessage;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    if-eqz p3, :cond_141

    .line 1277
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_141} :catch_144

    .line 1273
    :cond_141
    add-int/lit8 v3, v3, 0x1

    goto :goto_128

    .line 1280
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #message:Lcom/android/email/mail/store/SncImapStore$ImapMessage;
    .end local v9           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v12           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_144
    move-exception v5

    .line 1281
    .local v5, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v13

    throw v13

    .line 1283
    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v12       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_150
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/android/emailcommon/mail/Message;

    return-object v13
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 19
    .parameter "start"
    .parameter "searchText"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1193
    const-string v10, "Z7App"

    const-string v11, "getMessages"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v10, 0x1

    move/from16 v0, p1

    if-ge v0, v10, :cond_25

    .line 1196
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "Invalid message set %d %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1199
    :cond_25
    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 1200
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    .local v6, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    :try_start_2d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .local v9, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v11, "UID SEARCH %d:*%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1205
    .local v8, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1206
    .local v7, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SEARCH"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 1207
    const/4 v2, 0x1

    .local v2, i:I
    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v1

    .local v1, count:I
    :goto_71
    if-ge v2, v1, :cond_4f

    .line 1208
    invoke-virtual {v7, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 1212
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v7           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_81
    const/4 v2, 0x0

    .restart local v2       #i:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1       #count:I
    :goto_86
    if-ge v2, v1, :cond_a8

    .line 1213
    new-instance v5, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v5, v10, p0}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1214
    .local v5, message:Lcom/android/email/mail/store/SncImapStore$ImapMessage;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    if-eqz p3, :cond_9d

    .line 1216
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_9d} :catch_a0

    .line 1212
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 1219
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #message:Lcom/android/email/mail/store/SncImapStore$ImapMessage;
    .end local v8           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v9           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_a0
    move-exception v4

    .line 1220
    .local v4, ioe:Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v10, v4}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v10

    throw v10

    .line 1222
    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v8       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v9       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a8
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/android/emailcommon/mail/Message;

    return-object v10
.end method

.method public getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1502
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 24
    .parameter "param_emailsearchinfo"
    .parameter "date"
    .parameter "from"
    .parameter "where"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1290
    const/4 v2, 0x0

    .line 1292
    .local v2, emailsearchinfo:Lcom/android/email/EmailSearchAdapter;
    const-string v14, "Z7App"

    const-string v15, " getMessages "

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/android/email/EmailSearchAdapter;

    if-nez v14, :cond_50

    move-object/from16 v2, p1

    .line 1295
    check-cast v2, Lcom/android/email/EmailSearchAdapter;

    .line 1300
    invoke-virtual {v2}, Lcom/android/email/EmailSearchAdapter;->getSearchText()Ljava/lang/String;

    move-result-object v12

    .line 1302
    .local v12, searchText:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/email/EmailSearchAdapter;->getSearchType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_58

    .line 1305
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " SUBJECT \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1316
    .local v11, searchQuery:Ljava/lang/String;
    :goto_36
    if-eqz p2, :cond_3c

    if-eqz p3, :cond_3c

    if-nez p4, :cond_a9

    .line 1317
    :cond_3c
    new-instance v14, Lcom/android/emailcommon/mail/MessagingException;

    const-string v15, "Missing search criteria"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1297
    .end local v11           #searchQuery:Ljava/lang/String;
    .end local v12           #searchText:Ljava/lang/String;
    :cond_50
    new-instance v14, Lcom/android/emailcommon/mail/MessagingException;

    const-string v15, "Invalid parameters of getMessages() "

    invoke-direct {v14, v15}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1306
    .restart local v12       #searchText:Ljava/lang/String;
    :cond_58
    invoke-virtual {v2}, Lcom/android/email/EmailSearchAdapter;->getSearchType()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_79

    .line 1310
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " FROM \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #searchQuery:Ljava/lang/String;
    goto :goto_36

    .line 1312
    .end local v11           #searchQuery:Ljava/lang/String;
    :cond_79
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " OR SUBJECT \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " FROM "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #searchQuery:Ljava/lang/String;
    goto :goto_36

    .line 1319
    :cond_a9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_bb

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_bb

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_cf

    .line 1320
    :cond_bb
    new-instance v14, Lcom/android/emailcommon/mail/MessagingException;

    const-string v15, "Invalid search criteria"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1323
    :cond_cf
    const-string v14, "SncImapStore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getMessagesSentSince from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " where "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sentSince "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "header X-VZW-SOURCE-USER "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1328
    .local v10, searchCriteria:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "sent"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1e0

    .line 1329
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (keyword vSent) not (keyword vDraft)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1337
    :goto_135
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sentbefore "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " NOT DELETED"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1338
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1340
    const-string v14, "SncImapStore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "searchQuery "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 1343
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    .local v7, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    :try_start_18b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    .local v13, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v15, "UID SEARCH%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 1348
    .local v9, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1ae
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_228

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1349
    .local v8, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "SEARCH"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1ae

    .line 1350
    const/4 v3, 0x1

    .local v3, i:I
    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v1

    .local v1, count:I
    :goto_1d0
    if-ge v3, v1, :cond_1ae

    .line 1351
    invoke-virtual {v8, v3}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_1dd} :catch_249

    .line 1350
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d0

    .line 1330
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .end local v8           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v9           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v13           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1e0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "draft"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_201

    .line 1331
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (keyword vDraft) not (keyword vSent)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_135

    .line 1333
    :cond_201
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " header X-VZW-SOURCE-MESSAGE-FOLDER \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not (keyword vSent) not (keyword vDraft)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_135

    .line 1355
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .restart local v9       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v13       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_228
    const/4 v3, 0x0

    .restart local v3       #i:I
    :try_start_229
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1       #count:I
    :goto_22d
    if-ge v3, v1, :cond_255

    .line 1356
    new-instance v6, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v6, v14, v0}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1357
    .local v6, message:Lcom/android/email/mail/store/SncImapStore$ImapMessage;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    if-eqz p5, :cond_246

    .line 1359
    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    :try_end_246
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_246} :catch_249

    .line 1355
    :cond_246
    add-int/lit8 v3, v3, 0x1

    goto :goto_22d

    .line 1362
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #message:Lcom/android/email/mail/store/SncImapStore$ImapMessage;
    .end local v9           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v13           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_249
    move-exception v5

    .line 1363
    .local v5, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v14

    throw v14

    .line 1365
    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v13       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_255
    const/4 v14, 0x0

    new-array v14, v14, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/android/emailcommon/mail/Message;

    return-object v14
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 4
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1508
    if-nez p1, :cond_8

    .line 1509
    const-string v0, "1:* NOT DELETED"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1511
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 8
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1516
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1517
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v4, p1

    if-ge v0, v4, :cond_1c

    .line 1518
    aget-object v3, p1, v0

    .line 1519
    .local v3, uid:Ljava/lang/String;
    new-instance v1, Lcom/android/email/mail/store/SncImapStore$ImapMessage;

    invoke-direct {v1, v3, p0}, Lcom/android/email/mail/store/SncImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1520
    .local v1, message:Lcom/android/email/mail/store/SncImapStore$ImapMessage;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    if-eqz p2, :cond_19

    .line 1522
    invoke-interface {p2, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 1517
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1525
    .end local v1           #message:Lcom/android/email/mail/store/SncImapStore$ImapMessage;
    .end local v3           #uid:Ljava/lang/String;
    :cond_1c
    sget-object v4, Lcom/android/emailcommon/mail/Message;->EMPTY_ARRAY:[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    return-object v4
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1829
    invoke-static {}, Lcom/android/email/mail/store/SncImapStore;->access$000()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getSelect()Z
    .registers 2

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mSelect:Z

    return v0
.end method

.method public getUnreadMessageCount()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 1165
    const/4 v4, 0x0

    .line 1166
    .local v4, unreadMessageCount:I
    :try_start_4
    iget-object v5, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v6, "STATUS \"%s\" (UNSEEN)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/email/mail/store/SncImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1170
    .local v3, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1171
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string v6, "STATUS"

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1172
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    const-string v6, "UNSEEN"

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_51
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_43} :catch_49

    move-result v4

    goto :goto_20

    .line 1180
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_45
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    return v4

    .line 1177
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_49
    move-exception v1

    .line 1178
    .local v1, ioe:Ljava/io/IOException;
    :try_start_4a
    iget-object v5, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v5, v1}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v5

    throw v5
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_51

    .line 1180
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_51
    move-exception v5

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    throw v5
.end method

.method public ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    .registers 4
    .parameter "connection"
    .parameter "ioe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2227
    invoke-static {p2}, Lcom/android/emailcommon/mail/MessagingException;->decodeIOException(Ljava/io/IOException;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->connectionExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mExists:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    .registers 16
    .parameter "mode"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 874
    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 875
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v7, p1}, Lcom/android/emailcommon/mail/Folder$OpenMode;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_1 .. :try_end_c} :catch_7c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_c} :catch_89

    move-result v7

    if-eqz v7, :cond_84

    .line 880
    :try_start_f
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    iget-object v7, v7, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v8, 0xea60

    invoke-interface {v7, v8}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 881
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v8, "NOOP"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_77
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_20} :catch_24

    .line 886
    :try_start_20
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V
    :try_end_23
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_20 .. :try_end_23} :catch_7c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_20 .. :try_end_23} :catch_89

    .line 948
    :goto_23
    return-void

    .line 883
    :catch_24
    move-exception v2

    .line 884
    .local v2, ioe:Ljava/io/IOException;
    :try_start_25
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v7, v2}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_77

    .line 886
    :try_start_2a
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    .line 893
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_2d
    :goto_2d
    monitor-enter p0
    :try_end_2e
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2a .. :try_end_2e} :catch_7c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2a .. :try_end_2e} :catch_89

    .line 894
    :try_start_2e
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/SncImapStore;->getConnection()Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    .line 895
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_90

    .line 899
    :try_start_37
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v8, "SELECT \"%s\""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/email/mail/store/SncImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 906
    .local v6, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    .line 908
    const/4 v3, -0x1

    .line 909
    .local v3, messageCount:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_58
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 910
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v7, 0x1

    const-string v8, "EXISTS"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 911
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_75
    .catchall {:try_start_37 .. :try_end_75} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_75} :catch_aa

    move-result v3

    goto :goto_58

    .line 886
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #messageCount:I
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catchall_77
    move-exception v7

    :try_start_78
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    throw v7
    :try_end_7c
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_78 .. :try_end_7c} :catch_7c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_78 .. :try_end_7c} :catch_89

    .line 937
    :catch_7c
    move-exception v0

    .line 940
    .local v0, e:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    .line 941
    invoke-virtual {p0, v12}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->close(Z)V

    .line 942
    throw v0

    .line 890
    .end local v0           #e:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    :cond_84
    const/4 v7, 0x0

    :try_start_85
    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->close(Z)V
    :try_end_88
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_85 .. :try_end_88} :catch_7c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_2d

    .line 943
    :catch_89
    move-exception v0

    .line 944
    .local v0, e:Lcom/android/emailcommon/mail/MessagingException;
    iput-boolean v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mExists:Z

    .line 945
    invoke-virtual {p0, v12}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->close(Z)V

    .line 946
    throw v0

    .line 895
    .end local v0           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_90
    move-exception v7

    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw v7
    :try_end_93
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_92 .. :try_end_93} :catch_7c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_92 .. :try_end_93} :catch_89

    .line 913
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #messageCount:I
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_93
    :try_start_93
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 914
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    .line 915
    .local v5, responseCode:Lcom/android/email/mail/store/imap/ImapString;
    const-string v7, "READ-ONLY"

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 916
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_a9
    .catchall {:try_start_93 .. :try_end_a9} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_a9} :catch_aa

    goto :goto_58

    .line 932
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #messageCount:I
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v5           #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_aa
    move-exception v2

    .line 933
    .restart local v2       #ioe:Ljava/io/IOException;
    :try_start_ab
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v7, v2}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_b2

    .line 935
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_b2
    move-exception v7

    :try_start_b3
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    throw v7
    :try_end_b7
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_b3 .. :try_end_b7} :catch_7c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b3 .. :try_end_b7} :catch_89

    .line 917
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #messageCount:I
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v5       #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_b7
    :try_start_b7
    const-string v7, "READ-WRITE"

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 918
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    goto :goto_58

    .line 920
    .end local v5           #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    :cond_c4
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_58

    .line 921
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t open mailbox: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 926
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_e7
    const/4 v7, -0x1

    if-ne v3, v7, :cond_f2

    .line 927
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Did not find message count during select"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 929
    :cond_f2
    iput v3, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mMessageCount:I

    .line 930
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mExists:Z
    :try_end_f7
    .catchall {:try_start_b7 .. :try_end_f7} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_f7} :catch_aa

    .line 935
    :try_start_f7
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V
    :try_end_fa
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_f7 .. :try_end_fa} :catch_7c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f7 .. :try_end_fa} :catch_89

    goto/16 :goto_23
.end method

.method public rename(Ljava/lang/String;)Z
    .registers 3
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2246
    const/4 v0, 0x0

    return v0
.end method

.method searchForUidList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .parameter "searchCriteria"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 1427
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_62

    .line 1429
    .local v7, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_8
    iget-object v8, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID SEARCH "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_62
    .catch Lcom/android/email/mail/store/SncImapStore$ImapException; {:try_start_8 .. :try_end_20} :catch_55
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_20} :catch_5a

    move-result-object v5

    .line 1437
    .local v5, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_21
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1438
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v8, 0x0

    const-string v9, "SEARCH"

    invoke-virtual {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 1442
    const/4 v1, 0x1

    .local v1, i:I
    :goto_3b
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v8

    if-ge v1, v8, :cond_25

    .line 1443
    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    .line 1444
    .local v6, s:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 1445
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_21 .. :try_end_52} :catchall_62

    .line 1442
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 1431
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v5           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v6           #s:Lcom/android/email/mail/store/imap/ImapString;
    :catch_55
    move-exception v0

    .line 1451
    .local v0, e:Lcom/android/email/mail/store/SncImapStore$ImapException;
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    .end local v0           #e:Lcom/android/email/mail/store/SncImapStore$ImapException;
    :goto_59
    return-object v7

    .line 1433
    :catch_5a
    move-exception v3

    .line 1434
    .local v3, ioe:Ljava/io/IOException;
    :try_start_5b
    iget-object v8, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v8, v3}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v8

    throw v8
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_62

    .line 1451
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v7           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_62
    move-exception v8

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    throw v8

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v7       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_67
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    goto :goto_59
.end method

.method searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "searchCriteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1419
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->searchForUidList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setDelimiter(I)V
    .registers 2
    .parameter "ch"

    .prologue
    .line 962
    iput p1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mDelimiter:I

    .line 963
    return-void
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2175
    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->checkOpen()V

    .line 2177
    const-string v0, ""

    .line 2178
    array-length v2, p2

    if-lez v2, :cond_6d

    .line 2179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2180
    array-length v3, p2

    move v0, v1

    :goto_11
    if-ge v0, v3, :cond_35

    .line 2181
    aget-object v1, p2, v0

    .line 2182
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_21

    .line 2183
    const-string v1, " \\SEEN"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2180
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2184
    :cond_21
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_2b

    .line 2185
    const-string v1, " \\DELETED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 2186
    :cond_2b
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_1e

    .line 2187
    const-string v1, " \\FLAGGED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 2190
    :cond_35
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2193
    :goto_3a
    :try_start_3a
    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v3, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/SncImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz p3, :cond_5d

    const-string v0, "+"

    :goto_4d
    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_59
    .catchall {:try_start_3a .. :try_end_59} :catchall_68
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_59} :catch_60

    .line 2200
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    .line 2202
    return-void

    .line 2193
    :cond_5d
    :try_start_5d
    const-string v0, "-"
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_68
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5f} :catch_60

    goto :goto_4d

    .line 2197
    :catch_60
    move-exception v0

    .line 2198
    :try_start_61
    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_68

    .line 2200
    :catchall_68
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->destroyResponses()V

    throw v0

    :cond_6d
    move-object v1, v0

    goto :goto_3a
.end method

.method public setSelect(Z)V
    .registers 2
    .parameter "select"

    .prologue
    .line 1000
    iput-boolean p1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mSelect:Z

    .line 1001
    return-void
.end method

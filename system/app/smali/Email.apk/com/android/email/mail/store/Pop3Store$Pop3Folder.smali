.class Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
.super Lcom/android/emailcommon/mail/Folder;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Folder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    }
.end annotation


# instance fields
.field private mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

.field private mMessageCount:I

.field private final mMsgNumToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mUidToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidToMsgNumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "name"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    .line 219
    const-string v0, "INBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 220
    const-string v0, "INBOX"

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    .line 224
    :goto_26
    return-void

    .line 222
    :cond_27
    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    goto :goto_26
.end method

.method private executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "command"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 930
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 932
    if-eqz p1, :cond_10

    .line 933
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->access$2400(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :cond_10
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->access$2500(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, response:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_30

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_30

    .line 939
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 942
    :cond_30
    return-object v0
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 916
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchBody(Lcom/android/email/mail/store/Pop3Store$Pop3Message;I)V
    .registers 15
    .parameter "message"
    .parameter "lines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 785
    const/4 v4, 0x0

    .line 786
    .local v4, response:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 787
    .local v3, messageId:I
    if-ne p2, v11, :cond_4f

    .line 789
    const-string v5, "RETR %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 798
    :goto_28
    if-eqz v4, :cond_4e

    .line 800
    :try_start_2a
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$1900(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 801
    .local v0, in:Ljava/io/InputStream;
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$2000()Z

    move-result v5

    if-eqz v5, :cond_44

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_44

    .line 802
    new-instance v1, Lcom/android/emailcommon/utility/LoggingInputStream;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/utility/LoggingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v0           #in:Ljava/io/InputStream;
    .local v1, in:Ljava/io/InputStream;
    move-object v0, v1

    .line 804
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    :cond_44
    new-instance v5, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;

    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v5, v6, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V

    invoke-virtual {p1, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V
    :try_end_4e
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2a .. :try_end_4e} :catch_7f

    .line 818
    .end local v0           #in:Ljava/io/InputStream;
    :cond_4e
    return-void

    .line 793
    :cond_4f
    :try_start_4f
    const-string v5, "TOP %d %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_69
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4f .. :try_end_69} :catch_6b

    move-result-object v4

    goto :goto_28

    .line 794
    :catch_6b
    move-exception v2

    .line 795
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    const-string v5, "RETR %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    .line 806
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_7f
    move-exception v2

    .line 813
    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    if-ne p2, v11, :cond_4e

    .line 814
    throw v2
.end method

.method private fetchEnvelope([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .registers 23
    .parameter "messages"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 704
    const/4 v14, 0x0

    .line 705
    .local v14, unsizedMessages:I
    move-object/from16 v1, p1

    .local v1, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_5
    if-ge v4, v5, :cond_18

    aget-object v7, v1, v4

    .line 706
    .local v7, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 707
    add-int/lit8 v14, v14, 0x1

    .line 705
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 710
    .end local v7           #message:Lcom/android/emailcommon/mail/Message;
    :cond_18
    if-nez v14, :cond_1b

    .line 767
    :cond_1a
    return-void

    .line 713
    :cond_1b
    const/16 v15, 0x32

    if-ge v14, v15, :cond_8e

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v16, 0x1388

    move/from16 v0, v16

    if-le v15, v0, :cond_8e

    .line 718
    const/4 v3, 0x0

    .local v3, i:I
    move-object/from16 v0, p1

    array-length v2, v0

    .local v2, count:I
    :goto_2d
    if-ge v3, v2, :cond_1a

    .line 719
    aget-object v7, p1, v3

    .line 720
    .restart local v7       #message:Lcom/android/emailcommon/mail/Message;
    instance-of v15, v7, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    if-nez v15, :cond_3d

    .line 721
    new-instance v15, Lcom/android/emailcommon/mail/MessagingException;

    const-string v16, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct/range {v15 .. v16}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_3d
    move-object v12, v7

    .line 724
    check-cast v12, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 725
    .local v12, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    const-string v15, "LIST %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 728
    .local v13, response:Ljava/lang/String;
    :try_start_66
    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 729
    .local v6, listParts:[Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 730
    .local v8, msgNum:I
    const/4 v15, 0x2

    aget-object v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 731
    .local v9, msgSize:I
    invoke-virtual {v12, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_7d} :catch_87

    .line 735
    if-eqz p2, :cond_84

    .line 736
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 718
    :cond_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 732
    .end local v6           #listParts:[Ljava/lang/String;
    .end local v8           #msgNum:I
    .end local v9           #msgSize:I
    :catch_87
    move-exception v11

    .line 733
    .local v11, nfe:Ljava/lang/NumberFormatException;
    new-instance v15, Ljava/io/IOException;

    invoke-direct {v15}, Ljava/io/IOException;-><init>()V

    throw v15

    .line 740
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v7           #message:Lcom/android/emailcommon/mail/Message;
    .end local v11           #nfe:Ljava/lang/NumberFormatException;
    .end local v12           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v13           #response:Ljava/lang/String;
    :cond_8e
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 741
    .local v10, msgUidIndex:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v1, p1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_97
    if-ge v4, v5, :cond_a5

    aget-object v7, v1, v4

    .line 742
    .restart local v7       #message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 741
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 744
    .end local v7           #message:Lcom/android/emailcommon/mail/Message;
    :cond_a5
    const-string v15, "LIST"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 745
    .restart local v13       #response:Ljava/lang/String;
    :cond_ad
    :goto_ad
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v15}, Lcom/android/email/mail/store/Pop3Store;->access$1800(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1a

    .line 746
    const-string v15, "."

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a

    .line 749
    const/4 v12, 0x0

    .line 750
    .restart local v12       #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    const/4 v9, 0x0

    .line 752
    .restart local v9       #msgSize:I
    :try_start_c5
    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 753
    .restart local v6       #listParts:[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 754
    .restart local v8       #msgNum:I
    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 755
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    check-cast v12, Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :try_end_e7
    .catch Ljava/lang/NumberFormatException; {:try_start_c5 .. :try_end_e7} :catch_fe

    .line 759
    .restart local v12       #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-eqz v12, :cond_ad

    invoke-virtual {v12}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ad

    .line 760
    invoke-virtual {v12, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V

    .line 761
    if-eqz p2, :cond_ad

    .line 762
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    goto :goto_ad

    .line 756
    .end local v6           #listParts:[Ljava/lang/String;
    .end local v8           #msgNum:I
    .end local v12           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_fe
    move-exception v11

    .line 757
    .restart local v11       #nfe:Ljava/lang/NumberFormatException;
    new-instance v15, Ljava/io/IOException;

    invoke-direct {v15}, Ljava/io/IOException;-><init>()V

    throw v15
.end method

.method private getCapabilities()Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v0, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;-><init>(Lcom/android/email/mail/store/Pop3Store;)V

    .line 877
    .local v0, capabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
    :try_start_7
    const-string v2, "CAPA"

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, response:Ljava/lang/String;
    :cond_d
    :goto_d
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v2}, Lcom/android/email/mail/store/Pop3Store;->access$2300(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 879
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 905
    .end local v1           #response:Ljava/lang/String;
    :cond_21
    :goto_21
    return-object v0

    .line 882
    .restart local v1       #response:Ljava/lang/String;
    :cond_22
    const-string v2, "STLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 883
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    goto :goto_d

    .line 899
    .end local v1           #response:Ljava/lang/String;
    :catch_2e
    move-exception v2

    goto :goto_21

    .line 885
    .restart local v1       #response:Ljava/lang/String;
    :cond_30
    const-string v2, "UIDL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 886
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    goto :goto_d

    .line 888
    :cond_3c
    const-string v2, "PIPELINING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 889
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->pipelining:Z

    goto :goto_d

    .line 891
    :cond_48
    const-string v2, "USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 892
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->user:Z

    goto :goto_d

    .line 894
    :cond_54
    const-string v2, "TOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 895
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->top:Z
    :try_end_5f
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_5f} :catch_2e

    goto :goto_d
.end method

.method private indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V
    .registers 6
    .parameter "msgNum"
    .parameter "message"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    return-void
.end method

.method private indexMsgNums(II)V
    .registers 10
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    const/4 v4, 0x0

    .line 442
    .local v4, unindexedMessageCount:I
    move v1, p1

    .local v1, msgNum:I
    :goto_2
    if-gt v1, p2, :cond_15

    .line 443
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_12

    .line 444
    add-int/lit8 v4, v4, 0x1

    .line 442
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 447
    :cond_15
    if-nez v4, :cond_18

    .line 487
    :cond_17
    return-void

    .line 450
    :cond_18
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 451
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$1300()Z

    move-result v5

    if-nez v5, :cond_2d

    const/16 v5, 0x32

    if-ge v4, v5, :cond_6e

    iget v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v6, 0x1388

    if-le v5, v6, :cond_6e

    .line 457
    :cond_2d
    move v1, p1

    :goto_2e
    if-gt v1, p2, :cond_17

    .line 458
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 459
    .local v0, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_6b

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIDL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, response:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseSingleLine(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 462
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 464
    :cond_61
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, v5, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 465
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    .line 457
    .end local v3           #response:Ljava/lang/String;
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 469
    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_6e
    const-string v5, "UIDL"

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    .restart local v3       #response:Ljava/lang/String;
    :cond_74
    :goto_74
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$1400(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 471
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 472
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 474
    :cond_8c
    iget-boolean v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    if-nez v5, :cond_17

    .line 477
    iget v1, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I

    .line 478
    if-lt v1, p1, :cond_74

    if-gt v1, p2, :cond_74

    .line 479
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 480
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_74

    .line 481
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, v5, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 482
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_74
.end method

.method private indexUids(Ljava/util/ArrayList;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    .local p1, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 492
    .local v5, unindexedUids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 493
    .local v4, uid:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9

    .line 494
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 497
    .end local v4           #uid:Ljava/lang/String;
    :cond_21
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_28

    .line 520
    :cond_27
    return-void

    .line 505
    :cond_28
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 506
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    const-string v6, "UIDL"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, response:Ljava/lang/String;
    :cond_33
    :goto_33
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$1500(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 508
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    .line 509
    iget-boolean v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    if-nez v6, :cond_27

    .line 512
    iget-object v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 513
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 514
    .local v1, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v1, :cond_61

    .line 515
    new-instance v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v1           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v1, v6, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 517
    .restart local v1       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_61
    iget v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I

    invoke-direct {p0, v6, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_33
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .registers 2
    .parameter "messages"

    .prologue
    .line 827
    return-void
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public checkSettings()Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v4, -0x1

    .line 237
    .local v4, result:I
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-boolean v5, v5, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    if-nez v5, :cond_29

    .line 239
    :try_start_c
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 240
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    const-string v5, "UIDL"

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    :cond_16
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, response:Ljava/lang/String;
    if-eqz v3, :cond_29

    .line 244
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    .line 245
    iget-boolean v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_27} :catch_2f

    if-eqz v5, :cond_16

    .line 256
    .end local v2           #parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    .end local v3           #response:Ljava/lang/String;
    :cond_29
    :goto_29
    const-string v5, "validate_result_code"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    return-object v0

    .line 249
    :catch_2f
    move-exception v1

    .line 250
    .local v1, ioe:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$100(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->close()V

    .line 251
    const/4 v4, 0x1

    .line 252
    const-string v5, "validate_error_message"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public close(Z)V
    .registers 3
    .parameter "expunge"

    .prologue
    .line 348
    :try_start_0
    const-string v0, "QUIT"

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_f

    .line 353
    :goto_5
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->access$1000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 354
    return-void

    .line 350
    :catch_f
    move-exception v0

    goto :goto_5
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .registers 6
    .parameter "msgs"
    .parameter "folder"
    .parameter "callbacks"

    .prologue
    .line 864
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "copyMessages is not supported in POP3"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .registers 3
    .parameter "uid"

    .prologue
    .line 961
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    return-object v0
.end method

.method public delete(Z)V
    .registers 2
    .parameter "recurse"

    .prologue
    .line 831
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 947
    instance-of v0, p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    if-eqz v0, :cond_f

    .line 948
    check-cast p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 950
    :goto_e
    return v0

    .restart local p1
    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public exists()Z
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .registers 2

    .prologue
    .line 835
    const/4 v0, 0x0

    return-object v0
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .registers 15
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 643
    if-eqz p1, :cond_5

    array-length v9, p1

    if-nez v9, :cond_6

    .line 700
    :cond_5
    return-void

    .line 646
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v8, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e
    if-ge v3, v5, :cond_1c

    aget-object v6, v0, v3

    .line 648
    .local v6, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 651
    .end local v6           #message:Lcom/android/emailcommon/mail/Message;
    :cond_1c
    :try_start_1c
    invoke-direct {p0, v8}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexUids(Ljava/util/ArrayList;)V

    .line 652
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 655
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchEnvelope([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2b} :catch_3d

    .line 664
    :cond_2b
    const/4 v2, 0x0

    .local v2, i:I
    array-length v1, p1

    .local v1, count:I
    :goto_2d
    if-ge v2, v1, :cond_5

    .line 665
    aget-object v6, p1, v2

    .line 666
    .restart local v6       #message:Lcom/android/emailcommon/mail/Message;
    instance-of v9, v6, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    if-nez v9, :cond_5c

    .line 667
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 657
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v6           #message:Lcom/android/emailcommon/mail/Message;
    :catch_3d
    move-exception v4

    .line 658
    .local v4, ioe:Ljava/io/IOException;
    iget-object v9, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v9}, Lcom/android/email/mail/store/Pop3Store;->access$1600(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/email/mail/Transport;->close()V

    .line 659
    sget-boolean v9, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v9, :cond_54

    .line 660
    const-string v9, "Email"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_54
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "fetch"

    invoke-direct {v9, v10, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v6       #message:Lcom/android/emailcommon/mail/Message;
    :cond_5c
    move-object v7, v6

    .line 669
    check-cast v7, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 671
    .local v7, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :try_start_5f
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 672
    const/4 v9, -0x1

    invoke-direct {p0, v7, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/android/email/mail/store/Pop3Store$Pop3Message;I)V

    .line 689
    :cond_6b
    :goto_6b
    if-eqz p3, :cond_70

    .line 690
    invoke-interface {p3, v6}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 664
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 674
    :cond_73
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 679
    const/16 v9, 0x2a1

    invoke-direct {p0, v7, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/android/email/mail/store/Pop3Store$Pop3Message;I)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_80} :catch_81

    goto :goto_6b

    .line 692
    :catch_81
    move-exception v4

    .line 693
    .restart local v4       #ioe:Ljava/io/IOException;
    iget-object v9, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v9}, Lcom/android/email/mail/store/Pop3Store;->access$1700(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/email/mail/Transport;->close()V

    .line 694
    sget-boolean v9, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v9, :cond_98

    .line 695
    const-string v9, "Email"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_98
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "Unable to fetch message"

    invoke-direct {v9, v10, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 682
    .end local v4           #ioe:Ljava/io/IOException;
    :cond_a0
    :try_start_a0
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 687
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ac} :catch_81

    goto :goto_6b
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .registers 7
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 391
    const/4 v2, 0x1

    :try_start_9
    iget v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    invoke-direct {p0, v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_17

    .line 400
    :cond_e
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 401
    .local v1, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    return-object v1

    .line 392
    .end local v1           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_17
    move-exception v0

    .line 393
    .local v0, ioe:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v2}, Lcom/android/email/mail/store/Pop3Store;->access$1100(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->close()V

    .line 394
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_3d

    .line 395
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to index during getMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_3d
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "getMessages"

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getMessageCount()I
    .registers 2

    .prologue
    .line 379
    iget v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 14
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 407
    if-lt p1, v9, :cond_7

    if-lt p2, v9, :cond_7

    if-ge p2, p1, :cond_23

    .line 408
    :cond_7
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const-string v5, "Invalid message set %d %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 412
    :cond_23
    :try_start_23
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_45

    .line 420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    move v3, p1

    .local v3, msgNum:I
    :goto_2c
    if-gt v3, p2, :cond_64

    .line 422
    iget-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 423
    .local v1, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    if-eqz p3, :cond_42

    .line 425
    invoke-interface {p3, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 421
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 413
    .end local v1           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v2           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .end local v3           #msgNum:I
    :catch_45
    move-exception v0

    .line 414
    .local v0, ioe:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v4}, Lcom/android/email/mail/store/Pop3Store;->access$1200(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/email/mail/Transport;->close()V

    .line 415
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_5c

    .line 416
    const-string v4, "Email"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_5c
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const-string v5, "getMessages"

    invoke-direct {v4, v5, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 428
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v2       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .restart local v3       #msgNum:I
    :cond_64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    return-object v4
.end method

.method public getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 4
    .parameter "params"
    .parameter "listener"

    .prologue
    .line 966
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .registers 2

    .prologue
    .line 335
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .registers 2

    .prologue
    .line 822
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$2100()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .registers 2

    .prologue
    .line 384
    const/4 v0, -0x1

    return v0
.end method

.method public isOpen()Z
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->access$2600(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
    .registers 11
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 262
    monitor-enter p0

    :try_start_2
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$200(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->isOpen()Z
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_22

    move-result v6

    if-eqz v6, :cond_10

    .line 331
    :goto_e
    monitor-exit p0

    return-void

    .line 266
    :cond_10
    :try_start_10
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v7, "INBOX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 267
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "Folder does not exist"

    invoke-direct {v6, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_22

    .line 262
    :catchall_22
    move-exception v6

    monitor-exit p0

    throw v6

    .line 271
    :cond_25
    :try_start_25
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$300(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->open()V

    .line 274
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    invoke-direct {p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->getCapabilities()Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    .line 278
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$400(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 279
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-boolean v6, v6, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    if-eqz v6, :cond_c9

    .line 280
    const-string v6, "STLS"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$500(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->reopenTls()V
    :try_end_58
    .catchall {:try_start_25 .. :try_end_58} :catchall_22
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_58} :catch_db

    .line 291
    :cond_58
    :try_start_58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USER "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mUsername:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/mail/store/Pop3Store;->access$600(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "USER /redacted/"

    invoke-direct {p0, v6, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PASS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mPassword:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/mail/store/Pop3Store;->access$700(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PASS /redacted/"

    invoke-direct {p0, v6, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_94
    .catchall {:try_start_58 .. :try_end_94} :catchall_22
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_58 .. :try_end_94} :catch_fd
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_94} :catch_db

    .line 307
    const/4 v5, 0x0

    .line 309
    .local v5, statException:Ljava/lang/Exception;
    :try_start_95
    const-string v6, "STAT"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, response:Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, parts:[Ljava/lang/String;
    array-length v6, v3

    if-ge v6, v8, :cond_112

    .line 312
    new-instance v5, Ljava/io/IOException;

    .end local v5           #statException:Ljava/lang/Exception;
    invoke-direct {v5}, Ljava/io/IOException;-><init>()V
    :try_end_a9
    .catchall {:try_start_95 .. :try_end_a9} :catchall_22
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a9} :catch_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_a9} :catch_11f

    .line 321
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .restart local v5       #statException:Ljava/lang/Exception;
    :goto_a9
    if-eqz v5, :cond_122

    .line 322
    :try_start_ab
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$900(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->close()V

    .line 323
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_c1

    .line 324
    const-string v6, "Email"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_c1
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "POP3 STAT"

    invoke-direct {v6, v7, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_c9
    .catchall {:try_start_ab .. :try_end_c9} :catchall_22

    .line 283
    .end local v5           #statException:Ljava/lang/Exception;
    :cond_c9
    :try_start_c9
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_d4

    .line 284
    const-string v6, "Email"

    const-string v7, "TLS not supported but required"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_d4
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v6
    :try_end_db
    .catchall {:try_start_c9 .. :try_end_db} :catchall_22
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_db} :catch_db

    .line 299
    :catch_db
    move-exception v0

    .line 300
    .local v0, ioe:Ljava/io/IOException;
    :try_start_dc
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$800(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->close()V

    .line 301
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_f2

    .line 302
    const-string v6, "Email"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_f2
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_fd
    .catchall {:try_start_dc .. :try_end_fd} :catchall_22

    .line 293
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_fd
    move-exception v1

    .line 294
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_fe
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_10b

    .line 295
    const-string v6, "Email"

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_10b
    new-instance v6, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_112
    .catchall {:try_start_fe .. :try_end_112} :catchall_22
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_112} :catch_db

    .line 314
    .end local v1           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v3       #parts:[Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    .restart local v5       #statException:Ljava/lang/Exception;
    :cond_112
    const/4 v6, 0x1

    :try_start_113
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I
    :try_end_11b
    .catchall {:try_start_113 .. :try_end_11b} :catchall_22
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_11b} :catch_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_113 .. :try_end_11b} :catch_11f

    goto :goto_a9

    .line 316
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .end local v5           #statException:Ljava/lang/Exception;
    :catch_11c
    move-exception v0

    .line 317
    .restart local v0       #ioe:Ljava/io/IOException;
    move-object v5, v0

    .line 320
    .restart local v5       #statException:Ljava/lang/Exception;
    goto :goto_a9

    .line 318
    .end local v0           #ioe:Ljava/io/IOException;
    .end local v5           #statException:Ljava/lang/Exception;
    :catch_11f
    move-exception v2

    .line 319
    .local v2, nfe:Ljava/lang/NumberFormatException;
    move-object v5, v2

    .restart local v5       #statException:Ljava/lang/Exception;
    goto :goto_a9

    .line 328
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    :cond_122
    :try_start_122
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 329
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 330
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V
    :try_end_131
    .catchall {:try_start_122 .. :try_end_131} :catchall_22

    goto/16 :goto_e
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .registers 14
    .parameter "messages"
    .parameter "flags"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 841
    if-eqz p3, :cond_a

    sget-object v5, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-static {p2, v5}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 860
    :cond_a
    return-void

    .line 848
    :cond_b
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/mail/Message;
    :try_start_c
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_e
    if-ge v1, v3, :cond_a

    aget-object v4, v0, v1

    .line 849
    .local v4, message:Lcom/android/emailcommon/mail/Message;
    const-string v5, "DELE %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2b} :catch_2e

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 853
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #message:Lcom/android/emailcommon/mail/Message;
    :catch_2e
    move-exception v2

    .line 854
    .local v2, ioe:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    #getter for: Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$2200(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->close()V

    .line 855
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_45

    .line 856
    const-string v5, "Email"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_45
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const-string v6, "setFlags()"

    invoke-direct {v5, v6, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.class public Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasEmailSyncParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    }
.end annotation


# instance fields
.field changedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;"
        }
    .end annotation
.end field

.field deletedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field fetchedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mMailboxIdAsString:Ljava/lang/String;

.field newEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field newResponseAdds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/EmailSyncAdapter;Z)V
    .registers 7
    .parameter
    .parameter "parse"
    .parameter "adapter"
    .parameter "resumeParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    .line 622
    invoke-direct {p0, p2, p3, p4}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newResponseAdds:Ljava/util/ArrayList;

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 623
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 624
    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/EmailSyncAdapter;)V
    .registers 6
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    .line 615
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newResponseAdds:Ljava/util/ArrayList;

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 616
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 617
    return-void
.end method

.method private addParser()Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 1067
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 1068
    .local v5, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1069
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1070
    const/4 v10, 0x1

    iput v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1075
    const/4 v10, 0x0

    iput v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 1077
    const-string v10, "eas"

    iput-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    .line 1078
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    iput v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxType:I

    .line 1081
    const/4 v7, 0x1

    .line 1083
    .local v7, status:I
    :goto_22
    const/4 v10, 0x7

    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_7e

    .line 1084
    iget v10, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v10, :sswitch_data_146

    .line 1118
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_22

    .line 1086
    :sswitch_33
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1087
    const-string v10, "SplitInser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New mail, ServerId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1090
    :sswitch_54
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v7

    .line 1091
    goto :goto_22

    .line 1093
    :sswitch_59
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_22

    .line 1106
    :sswitch_5d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 1107
    .local v8, syncClass:Ljava/lang/String;
    const-string v10, "SMS"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 1108
    iget v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    or-int/lit16 v10, v10, 0x100

    iput v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    goto :goto_22

    .line 1110
    :cond_70
    iget v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    or-int/lit8 v10, v10, 0x0

    iput v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    goto :goto_22

    .line 1114
    .end local v8           #syncClass:Ljava/lang/String;
    :sswitch_77
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    goto :goto_22

    .line 1122
    :cond_7e
    const/4 v10, 0x1

    if-eq v7, v10, :cond_89

    .line 1124
    new-instance v10, Lcom/android/exchange/CommandStatusException;

    iget-object v11, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-direct {v10, v7, v11}, Lcom/android/exchange/CommandStatusException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 1131
    :cond_89
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_9f

    iget v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    const/16 v11, 0x100

    if-eq v10, v11, :cond_9f

    .line 1132
    const-string v10, "EmailSyncAdapter"

    const-string v11, "Synced message is not a SMS message in outbox, so we return before adding"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v5, 0x0

    .line 1172
    .end local v5           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_9e
    return-object v5

    .line 1140
    .restart local v5       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_9f
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x402c333333333333L

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_9e

    if-eqz v5, :cond_9e

    iget v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9e

    .line 1141
    const-string v10, "src=\"cid(?-i):[A-Z0-9a-z\\.\\_\\-\\@]+"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1143
    .local v6, p:Ljava/util/regex/Pattern;
    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1144
    .local v4, m:Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 1145
    .local v1, contentId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1146
    .local v0, attTotalCount:I
    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v10, :cond_d0

    .line 1147
    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1149
    :cond_d0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v2, contentIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d5
    :goto_d5
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_110

    .line 1151
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 1152
    if-eqz v1, :cond_d5

    .line 1153
    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1154
    .local v9, tokens1:[Ljava/lang/String;
    if-eqz v9, :cond_f3

    array-length v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_f3

    .line 1155
    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_f3
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "inline token (cid) name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_d5

    .line 1160
    .end local v9           #tokens1:[Ljava/lang/String;
    :cond_110
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v0, v10, :cond_119

    .line 1161
    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1163
    :cond_119
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_9e

    .line 1164
    if-eqz v2, :cond_143

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_143

    .line 1165
    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    const/4 v11, 0x1

    iput v11, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    .line 1166
    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 1163
    :cond_143
    add-int/lit8 v3, v3, 0x1

    goto :goto_11a

    .line 1084
    :sswitch_data_146
    .sparse-switch
        0xc -> :sswitch_77
        0xd -> :sswitch_33
        0xe -> :sswitch_54
        0x10 -> :sswitch_5d
        0x1d -> :sswitch_59
    .end sparse-switch
.end method

.method private attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 1674
    move v0, v8

    move v1, v8

    move v3, v8

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 1685
    :cond_9
    :goto_9
    const/16 v9, 0x85

    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4f

    .line 1686
    iget v9, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v9, :sswitch_data_e2

    .line 1727
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_9

    .line 1690
    :sswitch_1b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    .line 1694
    :sswitch_20
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 1698
    :sswitch_25
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    .line 1702
    :sswitch_2a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 1706
    :sswitch_2f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v1

    goto :goto_9

    .line 1709
    :sswitch_34
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v0

    goto :goto_9

    .line 1716
    :sswitch_39
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 1720
    const-string v10, "1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4d

    const-string v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_4d
    move v3, v4

    .line 1721
    goto :goto_9

    .line 1731
    :cond_4f
    const-string v9, "Attmt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IsInline Value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    if-eqz v7, :cond_dd

    if-eqz v6, :cond_dd

    if-eqz v5, :cond_dd

    .line 1733
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1734
    const-string v10, "base64"

    iput-object v10, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 1735
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1739
    const-string v6, ".p7m"

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 1740
    const-string v6, "/"

    const-string v10, ""

    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1741
    :cond_8c
    iput-object v7, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1743
    iput-object v5, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 1744
    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1745
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v5, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 1747
    if-eqz v2, :cond_c2

    .line 1750
    const/16 v5, 0x3c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-nez v5, :cond_de

    const/16 v5, 0x3e

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_de

    .line 1752
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1753
    iput-object v2, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 1764
    :cond_c2
    :goto_c2
    iput v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mVoiceMailAttDuration:I

    .line 1765
    iput v1, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mVoiceMailAttOrder:I

    .line 1769
    iput v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    .line 1773
    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 1774
    iput v8, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    .line 1777
    :cond_d4
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    iget v0, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    if-nez v0, :cond_dd

    .line 1783
    iput-boolean v4, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1789
    :cond_dd
    return-void

    .line 1755
    :cond_de
    iput-object v2, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    goto :goto_c2

    .line 1686
    nop

    :sswitch_data_e2
    .sparse-switch
        0x87 -> :sswitch_20
        0x88 -> :sswitch_25
        0x90 -> :sswitch_1b
        0x44c -> :sswitch_25
        0x450 -> :sswitch_1b
        0x451 -> :sswitch_20
        0x453 -> :sswitch_2a
        0x455 -> :sswitch_39
        0x587 -> :sswitch_34
        0x588 -> :sswitch_2f
    .end sparse-switch
.end method

.method private attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 5
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1660
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :goto_0
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 1661
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_18

    .line 1668
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 1665
    :sswitch_12
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 1671
    :cond_16
    return-void

    .line 1661
    nop

    :sswitch_data_18
    .sparse-switch
        0x85 -> :sswitch_12
        0x44f -> :sswitch_12
    .end sparse-switch
.end method

.method private bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v10, 0x7f060019

    const/4 v9, 0x2

    const/high16 v8, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1471
    const-string v2, "1"

    .line 1472
    const-string v1, ""

    .line 1475
    const/4 v0, 0x0

    .line 1477
    :goto_d
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_a4

    .line 1478
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v3, :sswitch_data_1de

    .line 1545
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_d

    .line 1482
    :sswitch_1f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v3

    iput v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEstimatedDataSize:I

    goto :goto_d

    .line 1486
    :sswitch_26
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 1491
    :sswitch_2b
    const-string v1, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-boolean v1, v1, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    if-eqz v1, :cond_46

    .line 1493
    const-string v1, "EasEmailSyncParser"

    const-string v3, "IT Policy: AllowHtml = false. Skipping body"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const-string v1, "HTML Body rejected by Exchange IT Policy"

    .line 1496
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_d

    .line 1500
    :cond_46
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 1505
    :sswitch_4b
    const-string v3, "EmailSyncAdapter"

    const-string v6, "BASE_TRUNCATED1"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1515
    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 1516
    iput v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 1534
    :goto_60
    const-string v3, "EmailSyncAdapter"

    const-string v6, "BASE_TRUNCATED2"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1517
    :cond_68
    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1518
    iput v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    goto :goto_60

    .line 1522
    :cond_73
    :try_start_73
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1523
    if-ne v3, v4, :cond_84

    move v3, v4

    :goto_7a
    iput v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_7c} :catch_7d

    goto :goto_60

    .line 1525
    :catch_7d
    move-exception v3

    .line 1526
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1528
    iput v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    goto :goto_60

    :cond_84
    move v3, v5

    .line 1523
    goto :goto_7a

    .line 1539
    :sswitch_86
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1540
    const-string v3, "PREVIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preview:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1549
    :cond_a4
    if-eqz v1, :cond_ae

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b1

    :cond_ae
    if-eqz v0, :cond_b1

    move-object v1, v0

    .line 1554
    :cond_b1
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1556
    const-string v3, "EmailSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bodyType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 1559
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v0

    invoke-static {v0}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ALL:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    if-ne v0, v2, :cond_12d

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    if-ne v0, v4, :cond_12d

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<BR><BR>...<BR><BR>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<BR>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1564
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v8, :cond_11a

    .line 1565
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v8, v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1567
    :cond_11a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1568
    iput v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 1570
    :cond_12d
    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 1613
    :goto_12f
    if-nez v1, :cond_138

    .line 1614
    const-string v0, "EmailSyncAdapter"

    const-string v1, "email body is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_138
    :try_start_138
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-nez v0, :cond_148

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v0, :cond_148

    .line 1618
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_148} :catch_1db

    .line 1623
    :cond_148
    :goto_148
    return-void

    .line 1572
    :cond_149
    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_185

    .line 1573
    const-string v0, "EmailSyncAdapter"

    const-string v2, "Parse MIME body"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    if-ne v0, v4, :cond_17a

    .line 1585
    const-string v0, "EmailSyncAdapter"

    const-string v2, "MIME body is truncated. Request fetch"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    new-array v0, v9, [Ljava/lang/String;

    const-string v2, "Partially loaded: "

    aput-object v2, v0, v5

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    aput-object v2, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 1587
    iput v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1588
    iput v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 1589
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z
    invoke-static {v0, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$102(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z

    goto :goto_12f

    .line 1591
    :cond_17a
    const-string v0, "EmailSyncAdapter"

    const-string v2, "Call MIME parser for body"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-direct {p0, p1, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V

    goto :goto_12f

    .line 1596
    :cond_185
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v0

    invoke-static {v0}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ALL:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    if-ne v0, v2, :cond_1d7

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    if-ne v0, v4, :cond_1d7

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\r\n\r...\n\r\n\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1602
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v8, :cond_1c4

    .line 1603
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v8, v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1605
    :cond_1c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1606
    iput v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 1608
    :cond_1d7
    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_12f

    .line 1620
    :catch_1db
    move-exception v0

    goto/16 :goto_148

    .line 1478
    :sswitch_data_1de
    .sparse-switch
        0x446 -> :sswitch_26
        0x44b -> :sswitch_2b
        0x44c -> :sswitch_1f
        0x44d -> :sswitch_4b
        0x458 -> :sswitch_86
    .end sparse-switch
.end method

.method private changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;J)V
    .registers 27
    .parameter
    .parameter "oldRead"
    .parameter "oldFlag"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1934
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 1935
    .local v20, truncated:Ljava/lang/Boolean;
    const/4 v7, 0x0

    .line 1936
    .local v7, read:Ljava/lang/Boolean;
    const/4 v8, 0x0

    .line 1937
    .local v8, flag:Ljava/lang/Boolean;
    const/4 v9, 0x0

    .line 1938
    .local v9, flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    const/16 v17, 0x0

    .line 1939
    .local v17, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    .line 1940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v17

    .line 1943
    :cond_1d
    const/4 v10, -0x1

    .line 1944
    .local v10, lastVerb:I
    const-wide/16 v11, -0x1

    .line 1946
    .local v11, lastVerbTime:J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1947
    .local v13, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const-string v14, ""

    .line 1949
    .local v14, bodyType:Ljava/lang/String;
    :goto_27
    const/16 v3, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1c1

    .line 1950
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v3, :sswitch_data_1fc

    .line 2090
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_27

    .line 1952
    :sswitch_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4a

    const/4 v3, 0x1

    :goto_45
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1953
    goto :goto_27

    .line 1952
    :cond_4a
    const/4 v3, 0x0

    goto :goto_45

    .line 1955
    :sswitch_4c
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    .end local v9           #flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;-><init>()V

    .line 1956
    .restart local v9       #flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->flagParser(Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;

    move-result-object v8

    .line 1957
    move-wide/from16 v0, p4

    iput-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgId:J

    goto :goto_27

    .line 1961
    :sswitch_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v10

    .line 1962
    goto :goto_27

    .line 1964
    :sswitch_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v11

    .line 1965
    goto :goto_27

    .line 1970
    :sswitch_6a
    if-eqz v17, :cond_74

    .line 1971
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_27

    .line 1973
    :cond_74
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_27

    .line 1982
    :sswitch_78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_8f

    .line 1983
    new-instance v3, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;JZ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    :cond_8f
    if-eqz v17, :cond_a2

    .line 1986
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto :goto_27

    .line 1988
    :cond_a2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_27

    .line 1992
    :sswitch_a6
    if-eqz v17, :cond_ca

    .line 1993
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v15

    .line 1994
    .local v15, froms:[Lcom/android/emailcommon/mail/Address;
    if-eqz v15, :cond_c0

    array-length v3, v15

    if-lez v3, :cond_c0

    .line 1995
    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 1997
    :cond_c0
    invoke-static {v15}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto/16 :goto_27

    .line 1999
    .end local v15           #froms:[Lcom/android/emailcommon/mail/Address;
    :cond_ca
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto/16 :goto_27

    .line 2002
    :sswitch_cf
    if-eqz v17, :cond_e3

    .line 2003
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    goto/16 :goto_27

    .line 2005
    :cond_e3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto/16 :goto_27

    .line 2008
    :sswitch_e8
    if-eqz v17, :cond_f4

    .line 2009
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_27

    .line 2011
    :cond_f4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto/16 :goto_27

    .line 2017
    :sswitch_f9
    if-eqz v17, :cond_109

    .line 2018
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_27

    .line 2020
    :cond_109
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto/16 :goto_27

    .line 2023
    :sswitch_10e
    if-eqz v17, :cond_120

    .line 2024
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11e

    const/4 v3, 0x1

    :goto_118
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto/16 :goto_27

    :cond_11e
    const/4 v3, 0x0

    goto :goto_118

    .line 2026
    :cond_120
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto/16 :goto_27

    .line 2033
    :sswitch_125
    if-eqz v17, :cond_160

    .line 2034
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_153

    .line 2045
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    .line 2046
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Partially loaded: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 2047
    const/4 v3, 0x2

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 2048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    const/4 v4, 0x1

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z
    invoke-static {v3, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$102(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z

    goto/16 :goto_27

    .line 2050
    :cond_153
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 2053
    :cond_160
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto/16 :goto_27

    .line 2057
    :sswitch_165
    if-eqz v17, :cond_173

    .line 2058
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 2059
    .local v19, text:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_27

    .line 2061
    .end local v19           #text:Ljava/lang/String;
    :cond_173
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto/16 :goto_27

    .line 2064
    :sswitch_178
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 2065
    goto/16 :goto_27

    .line 2067
    :sswitch_17e
    if-eqz v17, :cond_189

    .line 2068
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_27

    .line 2070
    :cond_189
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto/16 :goto_27

    .line 2074
    :sswitch_18e
    if-eqz v17, :cond_1bc

    .line 2075
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 2076
    .local v16, messageClass:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/adapter/ParserUtility;->decodeMsgClass(Ljava/lang/String;)I

    move-result v18

    .line 2077
    .local v18, msgClass:I
    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_1a4

    .line 2078
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    goto/16 :goto_27

    .line 2079
    :cond_1a4
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1b0

    .line 2080
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    goto/16 :goto_27

    .line 2082
    :cond_1b0
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    .line 2083
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    goto/16 :goto_27

    .line 2086
    .end local v16           #messageClass:Ljava/lang/String;
    .end local v18           #msgClass:I
    :cond_1bc
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto/16 :goto_27

    .line 2094
    :cond_1c1
    if-eqz v17, :cond_1d2

    .line 2095
    move-object/from16 v0, v17

    iput-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 2097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/EmailSyncAdapter;->draftChanges:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2099
    :cond_1d2
    const-wide/16 v3, -0x1

    cmp-long v3, p4, v3

    if-eqz v3, :cond_1fa

    .line 2100
    if-eqz v7, :cond_1e2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ec

    :cond_1e2
    if-nez v9, :cond_1ec

    if-lez v10, :cond_1fa

    const-wide/16 v3, -0x1

    cmp-long v3, v11, v3

    if-eqz v3, :cond_1fa

    .line 2103
    :cond_1ec
    new-instance v3, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    move-object/from16 v4, p0

    move-wide/from16 v5, p4

    invoke-direct/range {v3 .. v12}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;IJ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2108
    :cond_1fa
    return-void

    .line 1950
    nop

    :sswitch_data_1fc
    .sparse-switch
        0x86 -> :sswitch_6a
        0x8c -> :sswitch_165
        0x92 -> :sswitch_f9
        0x93 -> :sswitch_18e
        0x94 -> :sswitch_e8
        0x95 -> :sswitch_3d
        0x96 -> :sswitch_78
        0x97 -> :sswitch_cf
        0x98 -> :sswitch_a6
        0xb6 -> :sswitch_125
        0xb7 -> :sswitch_10e
        0xba -> :sswitch_4c
        0x446 -> :sswitch_178
        0x44a -> :sswitch_17e
        0x44e -> :sswitch_6a
        0x58b -> :sswitch_5c
        0x58c -> :sswitch_61
    .end sparse-switch
.end method

.method private fetchDataParser(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 2394
    :cond_3
    :goto_3
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_53

    .line 2395
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_472

    .line 2747
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_3

    .line 2398
    :sswitch_15
    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 2399
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_3

    .line 2419
    :sswitch_1e
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_54

    .line 2421
    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 2422
    const-string v0, "EmailSyncAdapter2"

    const-string v1, "EasEmailSyncParser result  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const-string v0, "tempFile"

    .line 2424
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, v1, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag(ZLandroid/content/Context;Ljava/lang/String;)Z

    .line 2425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2427
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 2429
    const-string v2, "cmdj_signed"

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2430
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 2431
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 2432
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2433
    iput-boolean v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 2434
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    if-eqz v1, :cond_53

    .line 2435
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 2751
    :cond_53
    return-void

    .line 2440
    :cond_54
    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 2441
    const-string v0, "EmailSyncAdapter2"

    const-string v1, "EasEmailSyncParser result  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const-string v0, "tempFile"

    .line 2443
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, v1, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag(ZLandroid/content/Context;Ljava/lang/String;)Z

    .line 2445
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/tempFile"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2451
    :try_start_82
    new-instance v0, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V
    :try_end_87
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_82 .. :try_end_87} :catch_12c

    .line 2458
    :goto_87
    :try_start_87
    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeMessage;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    .line 2459
    new-instance v3, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 2464
    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "text/html"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 2465
    const-string v1, "EmailSyncAdapter.....2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1. mimeMsg.getContentType() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2468
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2469
    invoke-static {v3, v4, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2477
    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2480
    if-eqz v0, :cond_46e

    .line 2481
    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v1, v0

    .line 2490
    :goto_d9
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_dd
    :goto_dd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 2491
    const-string v4, "EMAILSYNCADAPTER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text/html: VIEWABLE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart2(Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2511
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v5, "text/html"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 2512
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v0, :cond_123

    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 2514
    :cond_123
    iput-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;
    :try_end_125
    .catch Ljava/lang/NullPointerException; {:try_start_87 .. :try_end_125} :catch_126
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_87 .. :try_end_125} :catch_144

    goto :goto_dd

    .line 2733
    :catch_126
    move-exception v0

    .line 2734
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3

    .line 2452
    :catch_12c
    move-exception v0

    .line 2454
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_87

    .line 2516
    :cond_133
    :try_start_133
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-eqz v0, :cond_141

    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 2518
    :cond_141
    iput-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;
    :try_end_143
    .catch Ljava/lang/NullPointerException; {:try_start_133 .. :try_end_143} :catch_126
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_133 .. :try_end_143} :catch_144

    goto :goto_dd

    .line 2735
    :catch_144
    move-exception v0

    .line 2737
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_3

    .line 2524
    :cond_14a
    :try_start_14a
    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "multipart/alternative"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17a

    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "multipart/mixed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17a

    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "multipart/report"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_268

    .line 2530
    :cond_17a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2533
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2535
    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2536
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_190
    :goto_190
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ce

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 2540
    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v5

    .line 2541
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v6, "text/html"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 2542
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v0, :cond_1ba

    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 2544
    :cond_1ba
    iput-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_190

    .line 2545
    :cond_1bd
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-eqz v0, :cond_1cb

    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 2547
    :cond_1cb
    iput-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_190

    .line 2552
    :cond_1ce
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d2
    :goto_1d2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 2553
    const-string v1, "EMAILSYNCADAPTER2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multipart/mixed: ATTACHMENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 2556
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2557
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 2558
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v1

    .line 2560
    if-eqz v1, :cond_46b

    .line 2561
    const-string v6, "filename"

    invoke-static {v1, v6}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2570
    :goto_211
    if-nez v1, :cond_21d

    .line 2571
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 2572
    const-string v6, "name"

    invoke-static {v1, v6}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2575
    :cond_21d
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2576
    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2577
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 2578
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-ID "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2579
    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_1d2

    .line 2580
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->isInlineImage:Z
    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$802(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z

    .line 2581
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2582
    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    goto/16 :goto_1d2

    .line 2586
    :cond_268
    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "multipart/related"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39e

    .line 2590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2593
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2595
    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2596
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_304

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 2597
    const-string v5, "EMAILSYNCADAPTER2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "multipart/related: VIEWABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v5

    .line 2605
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2eb

    .line 2612
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-nez v0, :cond_2e5

    .line 2613
    iput-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 2629
    :cond_2cc
    :goto_2cc
    const-string v0, "EMAILSYNCADAPTER2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "multipart/related: VIEWABLE to textfrompart = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28e

    .line 2615
    :cond_2e5
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2cc

    .line 2618
    :cond_2eb
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v6, "text/plain"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2cc

    .line 2620
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-nez v0, :cond_2fe

    .line 2621
    iput-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_2cc

    .line 2623
    :cond_2fe
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2cc

    .line 2634
    :cond_304
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_308
    :goto_308
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 2635
    const-string v1, "EMAILSYNCADAPTER2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multipart/related: ATTACHMENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 2638
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2639
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 2640
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v1

    .line 2642
    if-eqz v1, :cond_468

    .line 2643
    const-string v6, "filename"

    invoke-static {v1, v6}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2652
    :goto_347
    if-nez v1, :cond_353

    .line 2653
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 2654
    const-string v6, "name"

    invoke-static {v1, v6}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2657
    :cond_353
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2658
    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2659
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 2660
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-ID "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2661
    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_308

    .line 2662
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->isInlineImage:Z
    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$802(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z

    .line 2663
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2664
    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    goto/16 :goto_308

    .line 2668
    :cond_39e
    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "multipart/signed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_427

    .line 2671
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->isSigned:Z
    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$702(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z

    .line 2673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2674
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2675
    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2677
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c5
    :goto_3c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_403

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 2681
    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v3

    .line 2682
    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "text/html"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f2

    .line 2683
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v0, :cond_3ef

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c5

    .line 2685
    :cond_3ef
    iput-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_3c5

    .line 2686
    :cond_3f2
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v0, :cond_400

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c5

    .line 2688
    :cond_400
    iput-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_3c5

    .line 2692
    :cond_403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2694
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 2696
    const-string v3, "cmdj_signed"

    iput-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2697
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 2698
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 2710
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2711
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 2713
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    if-eqz v1, :cond_3

    .line 2714
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    goto/16 :goto_3

    .line 2719
    :cond_427
    const-string v1, "EmailSyncAdapter.....2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2. mimeMsg.getContentType() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    invoke-static {v3}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v0

    .line 2723
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-eqz v1, :cond_461

    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_461

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_3

    .line 2725
    :cond_461
    iput-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 2728
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;
    :try_end_466
    .catch Ljava/lang/NullPointerException; {:try_start_14a .. :try_end_466} :catch_126
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_14a .. :try_end_466} :catch_144

    goto/16 :goto_3

    :cond_468
    move-object v1, v2

    goto/16 :goto_347

    :cond_46b
    move-object v1, v2

    goto/16 :goto_211

    :cond_46e
    move-object v1, v2

    goto/16 :goto_d9

    .line 2395
    nop

    :sswitch_data_472
    .sparse-switch
        0x8c -> :sswitch_15
        0xb6 -> :sswitch_1e
    .end sparse-switch
.end method

.method private flagParser(Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;
    .registers 9
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1403
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1405
    .local v0, state:Ljava/lang/Boolean;
    :goto_6
    const/16 v2, 0xba

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_d8

    .line 1406
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v2, :sswitch_data_da

    .line 1464
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_6

    .line 1409
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v1

    .line 1410
    .local v1, status:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    .line 1411
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1412
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_6

    .line 1413
    :cond_28
    if-ne v1, v3, :cond_33

    .line 1414
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1415
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_6

    .line 1417
    :cond_33
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1418
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_6

    .line 1422
    .end local v1           #status:I
    :sswitch_3c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    goto :goto_6

    .line 1425
    :sswitch_43
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1426
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    goto :goto_6

    .line 1429
    :sswitch_52
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1430
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    goto :goto_6

    .line 1433
    :sswitch_61
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1434
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    goto :goto_6

    .line 1437
    :sswitch_70
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1438
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    goto :goto_6

    .line 1441
    :sswitch_7f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1442
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    goto/16 :goto_6

    .line 1445
    :sswitch_8f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1446
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    goto/16 :goto_6

    .line 1449
    :sswitch_9f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v2

    if-ne v2, v3, :cond_ae

    move v2, v3

    :goto_a6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    goto/16 :goto_6

    :cond_ae
    move v2, v4

    goto :goto_a6

    .line 1452
    :sswitch_b0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1453
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_6

    .line 1456
    :sswitch_c0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 1457
    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    goto/16 :goto_6

    .line 1460
    :sswitch_d0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    goto/16 :goto_6

    .line 1467
    :cond_d8
    return-object v0

    .line 1406
    nop

    :sswitch_data_da
    .sparse-switch
        0xbb -> :sswitch_18
        0xbd -> :sswitch_3c
        0xbe -> :sswitch_43
        0x24b -> :sswitch_52
        0x24c -> :sswitch_70
        0x24d -> :sswitch_7f
        0x25b -> :sswitch_9f
        0x25c -> :sswitch_b0
        0x25e -> :sswitch_61
        0x25f -> :sswitch_8f
        0x262 -> :sswitch_c0
        0x263 -> :sswitch_d0
    .end sparse-switch
.end method

.method private getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1824
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1825
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v4, v2, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private meetingRequestParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 5
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 994
    new-instance v0, Lcom/android/emailcommon/mail/PackedString$Builder;

    invoke-direct {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;-><init>()V

    .line 995
    .local v0, packedString:Lcom/android/emailcommon/mail/PackedString$Builder;
    :goto_5
    const/16 v1, 0xa2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_73

    .line 996
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v1, :sswitch_data_86

    .line 1032
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_5

    .line 998
    :sswitch_17
    const-string v1, "DTSTAMP"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1001
    :sswitch_21
    const-string v1, "DTSTART"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1004
    :sswitch_2b
    const-string v1, "DTEND"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1007
    :sswitch_35
    const-string v1, "ORGMAIL"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1010
    :sswitch_3f
    const-string v1, "LOC"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1013
    :sswitch_49
    const-string v1, "UID"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1017
    :sswitch_57
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nullParser()V

    goto :goto_5

    .line 1020
    :sswitch_5b
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->recurrencesParser()V

    goto :goto_5

    .line 1023
    :sswitch_5f
    const-string v1, "RESPONSE"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1028
    :sswitch_69
    const-string v1, "PROPOSE_NEW_TIME"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1035
    :cond_73
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_7e

    .line 1036
    const-string v1, "TITLE"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :cond_7e
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1039
    return-void

    .line 996
    nop

    :sswitch_data_86
    .sparse-switch
        0x9b -> :sswitch_57
        0x9d -> :sswitch_17
        0x9e -> :sswitch_2b
        0xa1 -> :sswitch_3f
        0xa3 -> :sswitch_35
        0xa6 -> :sswitch_5f
        0xa7 -> :sswitch_5b
        0xb1 -> :sswitch_21
        0xb4 -> :sswitch_49
        0xbf -> :sswitch_69
    .end sparse-switch
.end method

.method private mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V
    .registers 11
    .parameter "msg"
    .parameter "mimeData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1634
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1636
    .local v2, in:Ljava/io/ByteArrayInputStream;
    new-instance v3, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v3, v2}, Lcom/android/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V

    .line 1638
    .local v3, mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1641
    .local v5, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1642
    .local v0, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-static {v3, v5, v0}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1643
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V

    .line 1646
    .local v4, tempBody:Lcom/android/emailcommon/provider/EmailContent$Body;
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    const v7, 0x7f060019

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, p1, v5}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 1651
    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 1652
    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;
    :try_end_34
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_34} :catch_35

    .line 1657
    return-void

    .line 1653
    .end local v0           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v2           #in:Ljava/io/ByteArrayInputStream;
    .end local v3           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .end local v4           #tempBody:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v5           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :catch_35
    move-exception v1

    .line 1655
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private nullParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1042
    :goto_0
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 1043
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 1045
    :cond_d
    return-void
.end method

.method private recurrencesParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    :goto_0
    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 1049
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_18

    .line 1054
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 1051
    :pswitch_12
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nullParser()V

    goto :goto_0

    .line 1057
    :cond_16
    return-void

    .line 1049
    nop

    :pswitch_data_18
    .packed-switch 0xa8
        :pswitch_12
    .end packed-switch
.end method

.method private subCommit()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2191
    const/4 v0, 0x0

    .line 2208
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2209
    :try_start_d
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2210
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_b1

    .line 2250
    :goto_16
    return-void

    .line 2215
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 2216
    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-nez v1, :cond_33

    .line 2217
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$408(Lcom/android/exchange/adapter/EmailSyncAdapter;)I

    .line 2219
    :cond_33
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->splitInsert(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2220
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_85

    .line 2221
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 2222
    const-string v1, "SplitInsert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SubCommit Message success :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :goto_67
    add-int/lit8 v1, v2, 0x1

    .line 2227
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitTimeStamp:J
    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_83

    .line 2228
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitTimeStamp:J
    invoke-static {v2, v5, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$502(Lcom/android/exchange/adapter/EmailSyncAdapter;J)J

    .line 2229
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitMessageId:J
    invoke-static {v2, v5, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$602(Lcom/android/exchange/adapter/EmailSyncAdapter;J)J

    :cond_83
    move v2, v1

    .line 2231
    goto :goto_1e

    .line 2224
    :cond_85
    const-string v1, "SplitInsert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SubCommit Message Failure :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_17 .. :try_end_9f} :catchall_b1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_17 .. :try_end_9f} :catch_a0
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_9f} :catch_af
    .catch Landroid/content/OperationApplicationException; {:try_start_17 .. :try_end_9f} :catch_b6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_9f} :catch_b4

    goto :goto_67

    .line 2238
    :catch_a0
    move-exception v0

    .line 2248
    :goto_a1
    :try_start_a1
    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_b1

    .line 2249
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_16

    .line 2232
    :cond_a9
    :try_start_a9
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->updateHistoryForEmail(Ljava/util/ArrayList;)V
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_b1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_a9 .. :try_end_ae} :catch_a0
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ae} :catch_af
    .catch Landroid/content/OperationApplicationException; {:try_start_a9 .. :try_end_ae} :catch_b6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a9 .. :try_end_ae} :catch_b4

    goto :goto_a1

    .line 2240
    :catch_af
    move-exception v0

    goto :goto_a1

    .line 2248
    :catchall_b1
    move-exception v0

    :try_start_b2
    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v0

    .line 2245
    :catch_b4
    move-exception v0

    goto :goto_a1

    .line 2242
    :catch_b6
    move-exception v0

    goto :goto_a1
.end method

.method private syncFetchRepliesParser()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2308
    move-object v2, v1

    move-object v3, v1

    .line 2312
    :goto_3
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9f

    .line 2313
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_ce

    .line 2374
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    :cond_14
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    :goto_17
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 2375
    goto :goto_3

    .line 2318
    :sswitch_1b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_14

    .line 2319
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync-Fetch failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_17

    .line 2325
    :sswitch_3e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    .line 2326
    goto :goto_17

    .line 2330
    :sswitch_47
    if-eqz v3, :cond_14

    .line 2333
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    .line 2335
    instance-of v4, v0, Lcom/android/exchange/EasLoadMoreSvc;

    if-eqz v4, :cond_cb

    .line 2336
    const-string v2, "ItemOperationsParser"

    const-string v4, "svc(Adapter.mService) is instanceof EasLoadMoreSvc"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    const-string v2, "ItemOperationsParser"

    const-string v4, "get message from service"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    check-cast v0, Lcom/android/exchange/EasLoadMoreSvc;

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 2342
    :goto_63
    if-nez v0, :cond_c9

    .line 2343
    const-string v2, "ItemOperationsParser"

    const-string v4, "get message from restore cursor func()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2348
    :try_start_72
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 2349
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 2350
    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)V
    :try_end_80
    .catchall {:try_start_72 .. :try_end_80} :catchall_98

    .line 2353
    :cond_80
    if-eqz v2, :cond_85

    .line 2354
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_85
    move-object v2, v0

    .line 2365
    :goto_86
    if-eqz v2, :cond_c7

    .line 2366
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    .line 2367
    if-eqz v0, :cond_95

    .line 2368
    invoke-direct {p0, v2, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchDataParser(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V

    :cond_95
    :goto_95
    move-object v1, v2

    move-object v2, v3

    .line 2371
    goto :goto_17

    .line 2353
    :catchall_98
    move-exception v0

    if-eqz v2, :cond_9e

    .line 2354
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2353
    :cond_9e
    throw v0

    .line 2382
    :cond_9f
    if-eqz v2, :cond_c6

    if-eqz v1, :cond_c6

    .line 2383
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v2, v1}, Lcom/android/exchange/adapter/LoadMoreUtility;->updateEmail(Lcom/android/exchange/AbstractSyncService;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V

    .line 2384
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->isSigned:Z
    invoke-static {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$700(Lcom/android/exchange/adapter/EmailSyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 2385
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/exchange/adapter/LoadMoreUtility;->updateAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 2387
    :cond_b7
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->isInlineImage:Z
    invoke-static {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$800(Lcom/android/exchange/adapter/EmailSyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 2388
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/LoadMoreUtility;->updateInlineAttachment(Lcom/android/exchange/AbstractSyncService;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 2391
    :cond_c6
    return-void

    :cond_c7
    move-object v0, v1

    goto :goto_95

    :cond_c9
    move-object v2, v0

    goto :goto_86

    :cond_cb
    move-object v0, v2

    goto :goto_63

    .line 2313
    nop

    :sswitch_data_ce
    .sparse-switch
        0xd -> :sswitch_3e
        0xe -> :sswitch_1b
        0x1d -> :sswitch_47
    .end sparse-switch
.end method

.method private updateHistoryForEmail(Ljava/util/ArrayList;)V
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Message;>;"
    const/4 v5, 0x1

    .line 1177
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .local v11, newMailIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1183
    .local v10, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    .line 1184
    invoke-direct {p0, v10}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->updateHistoryForOutgoingEmail(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_a

    .line 1185
    :cond_21
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eq v0, v5, :cond_35

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    .line 1188
    :cond_35
    invoke-direct {p0, v10}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->updateHistoryForIncomingEmail(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1192
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_a

    .line 1193
    iget-wide v0, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1201
    .end local v10           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_48
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 1204
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 1206
    .local v9, ids:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v3, 0x190

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IZZ)V

    .line 1213
    .end local v9           #ids:[Ljava/lang/String;
    :cond_66
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1214
    const/4 v11, 0x0

    .line 1215
    return-void
.end method

.method private updateHistoryForIncomingEmail(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1309
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1312
    :try_start_7
    const-string v3, "date"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1314
    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1315
    const-string v3, "contactid"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1316
    const-string v3, "messageid"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1317
    const-string v3, "m_subject"

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v3, "new"

    iget-boolean v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eqz v4, :cond_b6

    :goto_3f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1319
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v0, "account_id"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1322
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v0, :cond_76

    .line 1323
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_b8

    .line 1324
    const-string v0, "m_content"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x31

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_76
    :goto_76
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1332
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1333
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1334
    array-length v1, v0

    if-lez v1, :cond_b2

    .line 1335
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1336
    const-string v1, "number"

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/email"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b2} :catch_c0

    .line 1347
    :cond_b2
    :goto_b2
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1348
    return-void

    :cond_b6
    move v0, v1

    .line 1318
    goto :goto_3f

    .line 1326
    :cond_b8
    :try_start_b8
    const-string v0, "m_content"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bf} :catch_c0

    goto :goto_76

    .line 1341
    :catch_c0
    move-exception v0

    .line 1342
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_cc

    .line 1343
    const-string v1, "EmailSyncAdapter"

    const-string v3, "update history caught exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_cc
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b2
.end method

.method private updateHistoryForOutgoingEmail(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1354
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1357
    :try_start_6
    const-string v2, "date"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1358
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1359
    const-string v2, "contactid"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1360
    const-string v2, "messageid"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1361
    const-string v2, "m_subject"

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v2, "account_name"

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-string v2, "account_id"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1365
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_68

    .line 1366
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_ad

    .line 1367
    const-string v2, "m_content"

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x31

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_68
    :goto_68
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    if-eqz v2, :cond_c4

    .line 1374
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1376
    array-length v3, v2

    :goto_78
    if-ge v0, v3, :cond_c4

    aget-object v4, v2, v0

    .line 1377
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1379
    array-length v5, v4

    if-lez v5, :cond_aa

    .line 1380
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 1381
    const-string v5, "number"

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://logs/email"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1376
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 1369
    :cond_ad
    const-string v2, "m_content"

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b4} :catch_b5

    goto :goto_68

    .line 1388
    :catch_b5
    move-exception v0

    .line 1389
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_c1

    .line 1390
    const-string v2, "EmailSyncAdapter"

    const-string v3, "update history caught exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_c1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1394
    :cond_c4
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1395
    return-void
.end method


# virtual methods
.method public addData(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 24
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v10, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v12, 0x0

    .line 631
    .local v12, flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    const/16 v21, 0x0

    .line 633
    .local v21, truncated:Z
    :cond_8
    :goto_8
    const/16 v2, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3dd

    .line 634
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v2, :sswitch_data_3e8

    .line 918
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    .line 920
    :cond_1d
    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 923
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    goto :goto_8

    .line 638
    :sswitch_51
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_1d

    .line 642
    :sswitch_59
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_6c

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto :goto_1d

    .line 645
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto :goto_1d

    .line 652
    :sswitch_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 654
    .local v19, tempSting:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_ab

    .line 655
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 665
    :goto_97
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 666
    invoke-static/range {v19 .. v19}, Lcom/android/emailcommon/mail/Address;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto/16 :goto_1d

    .line 658
    :cond_ab
    invoke-static/range {v19 .. v19}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    .line 659
    .local v13, froms:[Lcom/android/emailcommon/mail/Address;
    if-eqz v13, :cond_bf

    array-length v2, v13

    if-lez v2, :cond_bf

    .line 660
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 662
    :cond_bf
    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto :goto_97

    .line 671
    .end local v13           #froms:[Lcom/android/emailcommon/mail/Address;
    .end local v19           #tempSting:Ljava/lang/String;
    :sswitch_c8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    goto/16 :goto_1d

    .line 674
    :sswitch_da
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    goto/16 :goto_1d

    .line 677
    :sswitch_ec
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    goto/16 :goto_1d

    .line 680
    :sswitch_fa
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 681
    const-string v2, "SplitInsert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mail received for ServerID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 684
    :sswitch_120
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12e

    const/4 v2, 0x1

    :goto_128
    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    goto/16 :goto_1d

    :cond_12e
    const/4 v2, 0x0

    goto :goto_128

    .line 687
    :sswitch_130
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_1d

    .line 691
    :sswitch_135
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_1d

    .line 696
    :sswitch_13a
    new-instance v12, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    .end local v12           #flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    invoke-direct {v12}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;-><init>()V

    .line 699
    .restart local v12       #flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->flagParser(Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;

    .line 701
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v2, v12, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 702
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v2, v12, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 703
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    .line 704
    iget-object v2, v12, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    if-ne v2, v3, :cond_161

    .line 705
    const/4 v2, 0x2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    goto/16 :goto_1d

    .line 706
    :cond_161
    iget-object v2, v12, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    if-ne v2, v3, :cond_16e

    .line 707
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    goto/16 :goto_1d

    .line 709
    :cond_16e
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    goto/16 :goto_1d

    .line 714
    :sswitch_175
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_180

    const/16 v21, 0x1

    .line 715
    :goto_17e
    goto/16 :goto_1d

    .line 714
    :cond_180
    const/16 v21, 0x0

    goto :goto_17e

    .line 721
    :sswitch_183
    if-eqz v21, :cond_1ab

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    .line 731
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Partially loaded: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 732
    const/4 v2, 0x2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    const/4 v3, 0x1

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z
    invoke-static {v2, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$102(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z

    goto/16 :goto_1d

    .line 735
    :cond_1ab
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 743
    :sswitch_1b8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 744
    .local v20, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 745
    .local v8, a:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v2

    invoke-static {v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ALL:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    if-ne v2, v3, :cond_20f

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/high16 v3, 0x10

    if-lt v2, v3, :cond_20f

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/high16 v4, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\r\n\r...\n\r\n\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    const v4, 0x7f060019

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 757
    :cond_20f
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_1d

    .line 761
    .end local v8           #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v20           #text:Ljava/lang/String;
    :sswitch_217
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUmCallerId:Ljava/lang/String;

    goto/16 :goto_1d

    .line 764
    :sswitch_221
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUmUserNotes:Ljava/lang/String;

    goto/16 :goto_1d

    .line 768
    :sswitch_22b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 769
    .local v15, messageClass:Ljava/lang/String;
    const-string v2, "IPM.Schedule.Meeting.Request"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_251

    .line 770
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 779
    :cond_241
    :goto_241
    invoke-static {v15}, Lcom/android/exchange/adapter/ParserUtility;->decodeMsgClass(Ljava/lang/String;)I

    move-result v18

    .line 780
    .local v18, msgClass:I
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_287

    .line 781
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    goto/16 :goto_1d

    .line 771
    .end local v18           #msgClass:I
    :cond_251
    const-string v2, "IPM.Schedule.Meeting.Canceled"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_264

    .line 772
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto :goto_241

    .line 773
    :cond_264
    const-string v2, "IPM.Note.Microsoft.Voicemail"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27c

    const-string v2, "IPM.Note.RPMSG.Microsoft.Voicemail"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27c

    const-string v2, "IPM.Note.Microsoft.Missed.Voice"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_241

    .line 776
    :cond_27c
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    or-int/lit16 v2, v2, 0x200

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    goto :goto_241

    .line 782
    .restart local v18       #msgClass:I
    :cond_287
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_1d

    .line 783
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    goto/16 :goto_1d

    .line 788
    .end local v15           #messageClass:Ljava/lang/String;
    .end local v18           #msgClass:I
    :sswitch_293
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->meetingRequestParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_1d

    .line 793
    :sswitch_298
    const-string v2, "EmailSyncAdapter"

    const-string v3, "EMAIL_BODY_TRUNCATED1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 797
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 798
    const-string v2, "EmailSyncAdapter"

    const-string v3, "EMAIL_BODY_TRUNCATED2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 807
    :sswitch_2b4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_1d

    .line 825
    :sswitch_2c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueOpaque()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->crypt([B)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    .line 829
    .local v9, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailMessageDiffEnabled()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 830
    const/16 v17, 0x0

    .line 832
    .local v17, messageDiffsFlagForNewEmail:Z
    const/16 v16, 0x0

    .line 834
    .local v16, messageConversationIdCursor:Landroid/database/Cursor;
    :try_start_2e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "conversationId"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 838
    if-eqz v16, :cond_344

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_344

    .line 840
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 841
    :goto_30e
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_329

    .line 842
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 847
    .local v14, mConvId:Ljava/lang/String;
    if-eqz v14, :cond_351

    .line 848
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_351

    .line 849
    const/16 v17, 0x1

    .line 856
    .end local v14           #mConvId:Ljava/lang/String;
    :cond_329
    if-nez v17, :cond_344

    .line 857
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEstimatedDataSize:I

    iget v3, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v3}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(I)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_35a

    .line 860
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I
    :try_end_344
    .catch Ljava/lang/Exception; {:try_start_2e9 .. :try_end_344} :catch_355

    .line 869
    :cond_344
    :goto_344
    if-eqz v16, :cond_1d

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 870
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1d

    .line 854
    .restart local v14       #mConvId:Ljava/lang/String;
    :cond_351
    :try_start_351
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_354
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_354} :catch_355

    goto :goto_30e

    .line 866
    .end local v14           #mConvId:Ljava/lang/String;
    :catch_355
    move-exception v11

    .line 867
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_344

    .line 862
    .end local v11           #e:Ljava/lang/Exception;
    :cond_35a
    const/4 v2, 0x0

    :try_start_35b
    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I
    :try_end_35f
    .catch Ljava/lang/Exception; {:try_start_35b .. :try_end_35f} :catch_355

    goto :goto_344

    .line 876
    .end local v9           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v16           #messageConversationIdCursor:Landroid/database/Cursor;
    .end local v17           #messageDiffsFlagForNewEmail:Z
    :sswitch_360
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueOpaque()[B

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationIndex:[B

    goto/16 :goto_1d

    .line 885
    :sswitch_36a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 886
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 887
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    goto/16 :goto_1d

    .line 890
    :sswitch_389
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_1d

    .line 893
    :sswitch_393
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto/16 :goto_1d

    .line 896
    :sswitch_39d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    goto/16 :goto_1d

    .line 901
    :sswitch_3a7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    goto/16 :goto_1d

    .line 904
    :sswitch_3b1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    goto/16 :goto_1d

    .line 909
    :sswitch_3bf
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/exchange/irm/IRMLicenseParserUtility;->parseLicense(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/exchange/adapter/AbstractSyncParser;)V

    .line 910
    sget-boolean v2, Lcom/android/exchange/irm/IRMLicenseParserUtility;->mRenewLicense:Z

    if-eqz v2, :cond_1d

    if-eqz p1, :cond_1d

    .line 911
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/android/exchange/irm/IRMLicenseParserUtility;->renewLicense(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_1d

    .line 927
    :cond_3dd
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3e7

    .line 928
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 930
    :cond_3e7
    return-void

    .line 634
    :sswitch_data_3e8
    .sparse-switch
        0x5b -> :sswitch_36a
        0x5e -> :sswitch_389
        0x7d -> :sswitch_393
        0x7e -> :sswitch_39d
        0x86 -> :sswitch_51
        0x8c -> :sswitch_1b8
        0x8e -> :sswitch_298
        0x8f -> :sswitch_ec
        0x92 -> :sswitch_2b4
        0x93 -> :sswitch_22b
        0x94 -> :sswitch_fa
        0x95 -> :sswitch_120
        0x96 -> :sswitch_59
        0x97 -> :sswitch_c8
        0x98 -> :sswitch_7d
        0x99 -> :sswitch_da
        0xa2 -> :sswitch_293
        0xb6 -> :sswitch_183
        0xb7 -> :sswitch_175
        0xba -> :sswitch_13a
        0x44a -> :sswitch_130
        0x44e -> :sswitch_51
        0x45a -> :sswitch_135
        0x585 -> :sswitch_217
        0x586 -> :sswitch_221
        0x589 -> :sswitch_2c2
        0x58a -> :sswitch_360
        0x58b -> :sswitch_3a7
        0x58c -> :sswitch_3b1
        0x608 -> :sswitch_3bf
    .end sparse-switch
.end method

.method changeParser(Ljava/util/ArrayList;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1897
    .line 1898
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1899
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1900
    const-wide/16 v4, 0x0

    .line 1901
    :cond_c
    :goto_c
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_71

    .line 1902
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_72

    .line 1926
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_c

    .line 1904
    :sswitch_1e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1905
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1907
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 1908
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Changing "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 1909
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_60

    move v0, v6

    :goto_44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1914
    const/16 v0, 0x11

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_62

    move v0, v6

    :goto_51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1915
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_59
    .catchall {:try_start_28 .. :try_end_59} :catchall_64

    move-result-wide v4

    .line 1918
    :cond_5a
    if-eqz v1, :cond_c

    .line 1919
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :cond_60
    move v0, v7

    .line 1909
    goto :goto_44

    :cond_62
    move v0, v7

    .line 1914
    goto :goto_51

    .line 1918
    :catchall_64
    move-exception v0

    if-eqz v1, :cond_6a

    .line 1919
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1918
    :cond_6a
    throw v0

    :sswitch_6b
    move-object v0, p0

    move-object v1, p1

    .line 1923
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;J)V

    goto :goto_c

    .line 1929
    :cond_71
    return-void

    .line 1902
    :sswitch_data_72
    .sparse-switch
        0xd -> :sswitch_1e
        0x1d -> :sswitch_6b
    .end sparse-switch
.end method

.method public commandsParser()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 2152
    const-wide/16 v0, 0x0

    .line 2155
    .local v0, lAllEmailsSizePerReq:J
    const/4 v2, 0x0

    .line 2157
    .local v2, tempMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_3
    :goto_3
    const/16 v3, 0x16

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_72

    .line 2158
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_44

    .line 2159
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 2160
    if-eqz v2, :cond_3

    .line 2161
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->isDuplicateMail(Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2164
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v3}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    .line 2165
    iget v3, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mEstimatedDataSize:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 2166
    const-wide/32 v3, 0x500000

    cmp-long v3, v0, v3

    if-gtz v3, :cond_37

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3d

    .line 2167
    :cond_37
    iget v3, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mEstimatedDataSize:I

    int-to-long v0, v3

    .line 2168
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->subCommit()V

    .line 2170
    :cond_3d
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2171
    const/4 v2, 0x0

    goto :goto_3

    .line 2174
    :cond_44
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_50

    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v4, 0x21

    if-ne v3, v4, :cond_5d

    .line 2175
    :cond_50
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deleteParser(Ljava/util/ArrayList;I)V

    .line 2176
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v3}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_3

    .line 2177
    :cond_5d
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6e

    .line 2178
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changeParser(Ljava/util/ArrayList;)V

    .line 2179
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v3}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_3

    .line 2181
    :cond_6e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_3

    .line 2184
    :cond_72
    return-void
.end method

.method public commit()V
    .registers 13

    .prologue
    .line 2889
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2894
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2897
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 2899
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2900
    const/4 v1, 0x0

    .line 2902
    :try_start_2f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2903
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_98

    move-result-object v1

    .line 2906
    :cond_3a
    if-eqz v3, :cond_3f

    .line 2907
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2914
    :cond_3f
    if-eqz v1, :cond_1a

    .line 2915
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Fetched body successfully for "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 2916
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 2917
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "messageKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v3, "textContent"

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2920
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "_id=?"

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "flagLoaded"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 2906
    :catchall_98
    move-exception v0

    if-eqz v3, :cond_9e

    .line 2907
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2906
    :cond_9e
    throw v0

    .line 2935
    :cond_9f
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2936
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2939
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2940
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 2942
    :cond_df
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_fe

    .line 2943
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2945
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v3, 0x190

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IZZ)V

    .line 2950
    :cond_fe
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2952
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22a

    .line 2954
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10f
    :goto_10f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    .line 2955
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2957
    if-eqz v8, :cond_139

    iget-object v0, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    if-eqz v0, :cond_139

    .line 2958
    iget-object v0, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    if-ne v0, v1, :cond_20a

    .line 2959
    const-string v0, "flagStatus"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2966
    :cond_139
    :goto_139
    if-eqz v8, :cond_146

    iget-object v0, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    if-eqz v0, :cond_146

    .line 2967
    const-string v0, "flagRead"

    iget-object v1, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2969
    :cond_146
    if-eqz v8, :cond_153

    iget-object v0, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    if-eqz v0, :cond_153

    .line 2973
    const-string v0, "followupflag"

    iget-object v1, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2976
    :cond_153
    if-eqz v8, :cond_192

    iget v0, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->lastVerb:I

    if-lez v0, :cond_192

    iget-wide v0, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->lastVerbTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_192

    .line 2977
    const-string v0, "lastVerb"

    iget v1, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->lastVerb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2978
    const-string v0, "lastVerbTime"

    iget-wide v1, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->lastVerbTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2980
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v1, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2985
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v3, 0x190

    const/16 v5, 0xb

    const/4 v6, 0x1

    iget v7, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->lastVerb:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IZI)V

    .line 2992
    :cond_192
    if-eqz v8, :cond_1cc

    iget-boolean v0, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->irmRemoved:Z

    if-eqz v0, :cond_1cc

    .line 2993
    const-string v0, "IRMContentExpiryDate"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    const-string v0, "IRMContentOwner"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    const-string v0, "IRMLicenseFlag"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2996
    const-string v0, "IRMOwner"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    const-string v0, "IRMTemplateId"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    const-string v0, "IRMTemplateName"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    const-string v0, "IRMTemplateDescription"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    :cond_1cc
    if-eqz v8, :cond_1e5

    .line 3004
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3010
    :cond_1e5
    if-eqz v8, :cond_10f

    iget-object v0, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    if-eqz v0, :cond_10f

    .line 3011
    iget-object v0, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 3012
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10f

    .line 2960
    :cond_20a
    iget-object v0, v8, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    if-ne v0, v1, :cond_21e

    .line 2961
    const-string v0, "flagStatus"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_139

    .line 2963
    :cond_21e
    const-string v0, "flagStatus"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_139

    .line 3022
    :cond_22a
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->draftChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_232
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3024
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v1

    .line 3025
    if-eqz v1, :cond_251

    .line 3026
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 3029
    :cond_251
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3031
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-nez v3, :cond_308

    .line 3032
    const-string v3, "htmlContent"

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    :goto_261
    const-string v3, "messageKey"

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3036
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3039
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3040
    const-string v3, "toList"

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3041
    const-string v3, "ccList"

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3042
    const-string v3, "bccList"

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    const-string v3, "subject"

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    const-string v3, "importance"

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3045
    const-string v3, "flagAttachment"

    iget-boolean v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3046
    iget-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v3, :cond_311

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-nez v3, :cond_311

    .line 3047
    const-string v3, "smimeFlags"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    :goto_2c3
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3056
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 3058
    array-length v4, v3

    .line 3059
    const/4 v1, 0x0

    :goto_2f8
    if-ge v1, v4, :cond_319

    .line 3060
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    aget-object v7, v3, v1

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 3059
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f8

    .line 3034
    :cond_308
    const-string v3, "textContent"

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_261

    .line 3049
    :cond_311
    const-string v3, "smimeFlags"

    const-string v4, "2"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c3

    .line 3063
    :cond_319
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_232

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3066
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 3067
    const-string v4, "messageKey"

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3068
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31f

    .line 3077
    :cond_34c
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newResponseAdds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_352
    :goto_352
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3078
    const/4 v7, 0x0

    .line 3081
    :try_start_360
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientId=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_386
    .catchall {:try_start_360 .. :try_end_386} :catchall_3cc

    move-result-object v1

    .line 3084
    if-eqz v1, :cond_3c6

    .line 3085
    :try_start_389
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3c6

    .line 3087
    :cond_38f
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3088
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3089
    const-string v3, "syncServerId"

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    const-string v3, "messageDirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3095
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3099
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3c3
    .catchall {:try_start_389 .. :try_end_3c3} :catchall_543

    move-result v0

    if-nez v0, :cond_38f

    .line 3103
    :cond_3c6
    if-eqz v1, :cond_352

    .line 3104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_352

    .line 3103
    :catchall_3cc
    move-exception v0

    move-object v1, v7

    :goto_3ce
    if-eqz v1, :cond_3d3

    .line 3104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3103
    :cond_3d3
    throw v0

    .line 3109
    :cond_3d4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3110
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3115
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #calls: Lcom/android/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V
    invoke-static {v0, v9}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$900(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/util/ArrayList;)V

    .line 3118
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3119
    :try_start_407
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_411

    .line 3120
    monitor-exit v3
    :try_end_410
    .catchall {:try_start_407 .. :try_end_410} :catchall_53b

    .line 3196
    :goto_410
    return-void

    .line 3126
    :cond_411
    const/4 v0, 0x0

    .line 3135
    :try_start_412
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_419
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3137
    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-nez v1, :cond_42e

    .line 3138
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$408(Lcom/android/exchange/adapter/EmailSyncAdapter;)I

    .line 3140
    :cond_42e
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->splitInsert(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 3141
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_480

    .line 3142
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 3143
    const-string v1, "SplitInsert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Commit Message success :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    :goto_462
    add-int/lit8 v1, v2, 0x1

    .line 3149
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitTimeStamp:J
    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_47e

    .line 3150
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitTimeStamp:J
    invoke-static {v2, v5, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$502(Lcom/android/exchange/adapter/EmailSyncAdapter;J)J

    .line 3151
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitMessageId:J
    invoke-static {v2, v5, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$602(Lcom/android/exchange/adapter/EmailSyncAdapter;J)J

    :cond_47e
    move v2, v1

    .line 3153
    goto :goto_419

    .line 3145
    :cond_480
    const-string v1, "SplitInsert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Commit Message Failure :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49a
    .catchall {:try_start_412 .. :try_end_49a} :catchall_53b
    .catch Landroid/os/RemoteException; {:try_start_412 .. :try_end_49a} :catch_49b
    .catch Landroid/content/OperationApplicationException; {:try_start_412 .. :try_end_49a} :catch_538
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_412 .. :try_end_49a} :catch_540

    goto :goto_462

    .line 3163
    :catch_49b
    move-exception v0

    .line 3171
    :goto_49c
    :try_start_49c
    monitor-exit v3
    :try_end_49d
    .catchall {:try_start_49c .. :try_end_49d} :catchall_53b

    .line 3173
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mNotifyCount:I
    invoke-static {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$400(Lcom/android/exchange/adapter/EmailSyncAdapter;)I

    move-result v0

    if-lez v0, :cond_4bf

    .line 3188
    :try_start_4a5
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    sget-object v1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitMessageId:J
    invoke-static {v3}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$600(Lcom/android/exchange/adapter/EmailSyncAdapter;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mNotifyCount:I
    invoke-static {v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$400(Lcom/android/exchange/adapter/EmailSyncAdapter;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyNewMessages(JJI)V
    :try_end_4bf
    .catch Landroid/os/RemoteException; {:try_start_4a5 .. :try_end_4bf} :catch_53e

    .line 3193
    :cond_4bf
    :goto_4bf
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    const-wide/16 v1, -0x1

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitMessageId:J
    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$602(Lcom/android/exchange/adapter/EmailSyncAdapter;J)J

    .line 3194
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitTimeStamp:J
    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$502(Lcom/android/exchange/adapter/EmailSyncAdapter;J)J

    .line 3195
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mNotifyCount:I
    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$402(Lcom/android/exchange/adapter/EmailSyncAdapter;I)I

    goto/16 :goto_410

    .line 3154
    :cond_4d5
    :try_start_4d5
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.email.provider"

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 3155
    array-length v0, v0

    if-lez v0, :cond_518

    .line 3156
    const-string v0, "SplitInsert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync Key commited in DB :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    const-string v0, "SplitInsert2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync Key commited in DB :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    :cond_518
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->updateHistoryForEmail(Ljava/util/ArrayList;)V

    .line 3162
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " SyncKey saved as: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_536
    .catchall {:try_start_4d5 .. :try_end_536} :catchall_53b
    .catch Landroid/os/RemoteException; {:try_start_4d5 .. :try_end_536} :catch_49b
    .catch Landroid/content/OperationApplicationException; {:try_start_4d5 .. :try_end_536} :catch_538
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4d5 .. :try_end_536} :catch_540

    goto/16 :goto_49c

    .line 3165
    :catch_538
    move-exception v0

    goto/16 :goto_49c

    .line 3171
    :catchall_53b
    move-exception v0

    :try_start_53c
    monitor-exit v3
    :try_end_53d
    .catchall {:try_start_53c .. :try_end_53d} :catchall_53b

    throw v0

    .line 3189
    :catch_53e
    move-exception v0

    goto :goto_4bf

    .line 3168
    :catch_540
    move-exception v0

    goto/16 :goto_49c

    .line 3103
    :catchall_543
    move-exception v0

    goto/16 :goto_3ce
.end method

.method deleteParser(Ljava/util/ArrayList;I)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1830
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_69

    .line 1831
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_6a

    .line 1853
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 1833
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1836
    invoke-static {}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1838
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1839
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_5c

    .line 1841
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_1c .. :try_end_5c} :catchall_62

    .line 1848
    :cond_5c
    if-eqz v1, :cond_0

    .line 1849
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1848
    :catchall_62
    move-exception v0

    if-eqz v1, :cond_68

    .line 1849
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1848
    :cond_68
    throw v0

    .line 1856
    :cond_69
    return-void

    .line 1831
    :pswitch_data_6a
    .packed-switch 0xd
        :pswitch_10
    .end packed-switch
.end method

.method public getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 1805
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1806
    const/4 v0, 0x0

    .line 1807
    if-lez v1, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3f

    .line 1808
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1810
    :goto_1c
    if-nez v1, :cond_21

    .line 1812
    const-string v0, "application/octet-stream"

    .line 1819
    :cond_20
    :goto_20
    return-object v0

    .line 1814
    :cond_21
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1815
    if-nez v0, :cond_20

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "application/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_3f
    move-object v1, v0

    goto :goto_1c
.end method

.method public isDuplicateMail(Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2111
    if-eqz p1, :cond_39

    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDuplicateMail(): serverId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AccountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MailboxId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 2114
    :cond_39
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncServerId=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "accountKey"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mailboxKey"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "flags"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x200

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")=0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2123
    if-eqz v1, :cond_11f

    .line 2124
    :try_start_ab
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2125
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11f

    .line 2126
    const-string v0, "CancelSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duplicate mail found and will be reverted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ServerId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Subject : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_ab .. :try_end_f4} :catchall_112
    .catch Ljava/lang/NullPointerException; {:try_start_ab .. :try_end_f4} :catch_101

    move v0, v7

    .line 2133
    :goto_f5
    if-eqz v1, :cond_100

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_100

    .line 2134
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2137
    :cond_100
    :goto_100
    return v0

    .line 2130
    :catch_101
    move-exception v0

    .line 2131
    :try_start_102
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_112

    .line 2133
    if-eqz v1, :cond_110

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_110

    .line 2134
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_110
    move v0, v6

    .line 2136
    goto :goto_100

    .line 2133
    :catchall_112
    move-exception v0

    if-eqz v1, :cond_11e

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_11e

    .line 2134
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2133
    :cond_11e
    throw v0

    :cond_11f
    move v0, v6

    goto :goto_f5
.end method

.method public requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IZI)V
    .registers 19
    .parameter "ctx"
    .parameter "szAction"
    .parameter "type"
    .parameter "ids"
    .parameter "action"
    .parameter "status"
    .parameter "flag"

    .prologue
    .line 1265
    const-string v8, "EmailSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSendBroadcastIntent() action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "intentType"

    invoke-virtual {v5, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1271
    if-eqz p4, :cond_63

    .line 1273
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1274
    .local v3, id_info:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1275
    .local v7, sb:Ljava/lang/StringBuffer;
    move-object v1, p4

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_33
    if-ge v2, v6, :cond_42

    aget-object v4, v1, v2

    .line 1276
    .local v4, id_item:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1277
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1275
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1279
    .end local v4           #id_item:Ljava/lang/String;
    :cond_42
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1281
    const-string v8, "EmailSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSendBroadcastIntent() ids="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const-string v8, "id_array"

    invoke-virtual {v5, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #id_info:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #sb:Ljava/lang/StringBuffer;
    :cond_63
    const/4 v8, 0x2

    if-ne p3, v8, :cond_80

    .line 1288
    const-string v8, "is_read"

    move/from16 v0, p7

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1297
    :cond_6d
    :goto_6d
    const-string v8, "action"

    move/from16 v0, p5

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1299
    const-string v8, "status"

    move/from16 v0, p6

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1301
    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1303
    const/4 v5, 0x0

    .line 1305
    return-void

    .line 1289
    :cond_80
    const/16 v8, 0x8

    if-ne p3, v8, :cond_8c

    .line 1290
    const-string v8, "is_favorite"

    move/from16 v0, p7

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6d

    .line 1291
    :cond_8c
    const/16 v8, 0xc

    if-ne p3, v8, :cond_6d

    .line 1292
    const-string v8, "status_lastverb"

    move/from16 v0, p7

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6d
.end method

.method public requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IZZ)V
    .registers 19
    .parameter "ctx"
    .parameter "szAction"
    .parameter "type"
    .parameter "ids"
    .parameter "action"
    .parameter "status"
    .parameter "flag"

    .prologue
    .line 1222
    const-string v8, "EmailSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSendBroadcastIntent() action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1226
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "intentType"

    invoke-virtual {v5, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1228
    if-eqz p4, :cond_63

    .line 1230
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1231
    .local v3, id_info:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1232
    .local v7, sb:Ljava/lang/StringBuffer;
    move-object v1, p4

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_33
    if-ge v2, v6, :cond_42

    aget-object v4, v1, v2

    .line 1233
    .local v4, id_item:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1234
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1232
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1236
    .end local v4           #id_item:Ljava/lang/String;
    :cond_42
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1238
    const-string v8, "EmailSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSendBroadcastIntent() ids="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const-string v8, "id_array"

    invoke-virtual {v5, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #id_info:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #sb:Ljava/lang/StringBuffer;
    :cond_63
    const/4 v8, 0x2

    if-ne p3, v8, :cond_80

    .line 1244
    const-string v8, "is_read"

    move/from16 v0, p7

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1249
    :cond_6d
    :goto_6d
    const-string v8, "action"

    move/from16 v0, p5

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1250
    const-string v8, "status"

    move/from16 v0, p6

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1252
    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1254
    const/4 v5, 0x0

    .line 1255
    return-void

    .line 1245
    :cond_80
    const/16 v8, 0x8

    if-ne p3, v8, :cond_6d

    .line 1246
    const-string v8, "is_favorite"

    move/from16 v0, p7

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_6d
.end method

.method public responsesParser()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2270
    :cond_0
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_46

    .line 2271
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_48

    .line 2298
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 2273
    :pswitch_11
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->syncFetchRepliesParser()V

    goto :goto_0

    .line 2280
    :pswitch_15
    :try_start_15
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newResponseAdds:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_0

    .line 2281
    :catch_1f
    move-exception v0

    .line 2282
    iget v1, v0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 2288
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/android/exchange/CommandStatusException;->mItemId:Ljava/lang/String;

    aput-object v0, v1, v2

    .line 2289
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2290
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "syncServerId=? and mailboxKey=?"

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2303
    :cond_46
    return-void

    .line 2271
    nop

    :pswitch_data_48
    .packed-switch 0x7
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

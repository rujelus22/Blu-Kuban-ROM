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
.field private final changedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;"
        }
    .end annotation
.end field

.field private final deletedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchedEmails:Ljava/util/ArrayList;
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

.field private final newEmails:Ljava/util/ArrayList;
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
.method public constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/EmailSyncAdapter;)V
    .registers 6
    .parameter
    .parameter "parser"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    .line 488
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 489
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 490
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
    .line 482
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    .line 483
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 484
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 485
    return-void
.end method

.method private addParser()Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 665
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 666
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 667
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 668
    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 670
    const/4 v1, 0x1

    .line 672
    .local v1, status:I
    :goto_15
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    .line 673
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_44

    .line 684
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_15

    .line 675
    :sswitch_26
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    goto :goto_15

    .line 678
    :sswitch_2d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v1

    .line 679
    goto :goto_15

    .line 681
    :sswitch_32
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    goto :goto_15

    .line 688
    :cond_38
    if-eq v1, v4, :cond_42

    .line 689
    new-instance v2, Lcom/android/exchange/CommandStatusException;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/android/exchange/CommandStatusException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 691
    :cond_42
    return-object v0

    .line 673
    nop

    :sswitch_data_44
    .sparse-switch
        0xd -> :sswitch_26
        0xe -> :sswitch_2d
        0x1d -> :sswitch_32
    .end sparse-switch
.end method

.method private attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 14
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
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v6, 0x1

    .line 774
    const/4 v2, 0x0

    .line 775
    .local v2, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 776
    .local v4, length:Ljava/lang/String;
    const/4 v5, 0x0

    .line 777
    .local v5, location:Ljava/lang/String;
    const/4 v3, 0x0

    .line 778
    .local v3, isInline:Z
    const/4 v1, 0x0

    .line 780
    .local v1, contentId:Ljava/lang/String;
    :goto_6
    const/16 v7, 0x85

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_36

    .line 781
    iget v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v7, :sswitch_data_9c

    .line 802
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_6

    .line 785
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 786
    goto :goto_6

    .line 789
    :sswitch_1d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 790
    goto :goto_6

    .line 793
    :sswitch_22
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 794
    goto :goto_6

    .line 796
    :sswitch_27
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v7

    if-ne v7, v6, :cond_2f

    move v3, v6

    .line 797
    :goto_2e
    goto :goto_6

    .line 796
    :cond_2f
    const/4 v3, 0x0

    goto :goto_2e

    .line 799
    :sswitch_31
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 800
    goto :goto_6

    .line 806
    :cond_36
    if-eqz v2, :cond_9b

    if-eqz v4, :cond_9b

    if-eqz v5, :cond_9b

    .line 807
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 808
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v7, "base64"

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 809
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 810
    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 811
    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 812
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 813
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v7, v7, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 817
    if-eqz v3, :cond_67

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 818
    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 821
    :cond_67
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;
    invoke-static {v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v7

    if-eqz v7, :cond_96

    .line 822
    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;
    invoke-static {v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-nez v7, :cond_92

    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;
    invoke-static {v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v7

    iget v7, v7, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v7, :cond_96

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;
    invoke-static {v9}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v9

    iget v9, v9, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_96

    .line 825
    :cond_92
    const/16 v7, 0x200

    iput v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 828
    :cond_96
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    iput-boolean v6, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 831
    .end local v0           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_9b
    return-void

    .line 781
    :sswitch_data_9c
    .sparse-switch
        0x87 -> :sswitch_1d
        0x88 -> :sswitch_22
        0x90 -> :sswitch_18
        0x44c -> :sswitch_22
        0x450 -> :sswitch_18
        0x451 -> :sswitch_1d
        0x453 -> :sswitch_31
        0x455 -> :sswitch_27
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
    .line 761
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :goto_0
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 762
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_18

    .line 768
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 765
    :sswitch_12
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 771
    :cond_16
    return-void

    .line 762
    nop

    :sswitch_data_18
    .sparse-switch
        0x85 -> :sswitch_12
        0x44f -> :sswitch_12
    .end sparse-switch
.end method

.method private bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 6
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    const-string v1, "1"

    .line 711
    .local v1, bodyType:Ljava/lang/String;
    const-string v0, ""

    .line 712
    .local v0, body:Ljava/lang/String;
    :goto_4
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_20

    .line 713
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_2e

    .line 721
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_4

    .line 715
    :sswitch_16
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 716
    goto :goto_4

    .line 718
    :sswitch_1b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 719
    goto :goto_4

    .line 725
    :cond_20
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 726
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 730
    :goto_2a
    return-void

    .line 728
    :cond_2b
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto :goto_2a

    .line 713
    :sswitch_data_2e
    .sparse-switch
        0x446 -> :sswitch_16
        0x44b -> :sswitch_1b
    .end sparse-switch
.end method

.method private changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;IJ)V
    .registers 15
    .parameter
    .parameter "oldRead"
    .parameter "oldFlag"
    .parameter "oldFlags"
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
            "IJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;>;"
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 946
    const/4 v4, 0x0

    .line 947
    .local v4, read:Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 948
    .local v5, flag:Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 949
    .local v6, flags:Ljava/lang/Integer;
    :cond_5
    :goto_5
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    if-eq v0, v3, :cond_54

    .line 950
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_72

    .line 969
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_5

    .line 952
    :sswitch_16
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v0

    if-ne v0, v1, :cond_22

    move v0, v1

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 953
    goto :goto_5

    .line 952
    :cond_22
    const/4 v0, 0x0

    goto :goto_1d

    .line 955
    :sswitch_24
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->flagParser()Ljava/lang/Boolean;

    move-result-object v5

    .line 956
    goto :goto_5

    .line 958
    :sswitch_29
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v7

    .line 960
    .local v7, val:I
    const v0, -0xc0001

    and-int/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 961
    if-eq v7, v1, :cond_3a

    const/4 v0, 0x2

    if-ne v7, v0, :cond_46

    .line 963
    :cond_3a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v2, 0x4

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_5

    .line 964
    :cond_46
    if-ne v7, v3, :cond_5

    .line 965
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v2, 0x8

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_5

    .line 973
    .end local v7           #val:I
    :cond_54
    if-eqz v4, :cond_5c

    invoke-virtual {p2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_5c
    if-eqz v5, :cond_64

    invoke-virtual {p3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_64
    if-eqz v6, :cond_70

    .line 975
    :cond_66
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    move-object v1, p0

    move-wide v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_70
    return-void

    .line 950
    nop

    :sswitch_data_72
    .sparse-switch
        0x95 -> :sswitch_16
        0xba -> :sswitch_24
        0x58b -> :sswitch_29
    .end sparse-switch
.end method

.method private flagParser()Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 696
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 697
    .local v0, state:Ljava/lang/Boolean;
    :goto_5
    const/16 v1, 0xba

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_26

    .line 698
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v1, :pswitch_data_28

    .line 703
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_5

    .line 700
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_24

    const/4 v1, 0x1

    :goto_1f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 701
    goto :goto_5

    :cond_24
    move v1, v2

    .line 700
    goto :goto_1f

    .line 706
    :cond_26
    return-object v0

    .line 698
    nop

    :pswitch_data_28
    .packed-switch 0xbb
        :pswitch_17
    .end packed-switch
.end method

.method private getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "serverId"
    .parameter "projection"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 863
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 864
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 866
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_2e

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 867
    :cond_2e
    return-object v6
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
    .line 606
    new-instance v0, Lcom/android/emailcommon/mail/PackedString$Builder;

    invoke-direct {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;-><init>()V

    .line 607
    .local v0, packedString:Lcom/android/emailcommon/mail/PackedString$Builder;
    :goto_5
    const/16 v1, 0xa2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6b

    .line 608
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_7e

    .line 638
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_5

    .line 610
    :sswitch_17
    const-string v1, "DTSTAMP"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 613
    :sswitch_21
    const-string v1, "DTSTART"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 616
    :sswitch_2b
    const-string v1, "DTEND"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 619
    :sswitch_35
    const-string v1, "ORGMAIL"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 622
    :sswitch_3f
    const-string v1, "LOC"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 625
    :sswitch_49
    const-string v1, "UID"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 629
    :sswitch_57
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipParser(I)V

    goto :goto_5

    .line 632
    :sswitch_5d
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->recurrencesParser()V

    goto :goto_5

    .line 635
    :sswitch_61
    const-string v1, "RESPONSE"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 641
    :cond_6b
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_76

    .line 642
    const-string v1, "TITLE"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_76
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 645
    return-void

    .line 608
    nop

    :sswitch_data_7e
    .sparse-switch
        0x9b -> :sswitch_57
        0x9d -> :sswitch_17
        0x9e -> :sswitch_2b
        0xa1 -> :sswitch_3f
        0xa3 -> :sswitch_35
        0xa6 -> :sswitch_61
        0xa7 -> :sswitch_5d
        0xb1 -> :sswitch_21
        0xb4 -> :sswitch_49
    .end sparse-switch
.end method

.method private mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V
    .registers 10
    .parameter "msg"
    .parameter "mimeData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 742
    .local v2, in:Ljava/io/ByteArrayInputStream;
    new-instance v3, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v3, v2}, Lcom/android/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V

    .line 744
    .local v3, mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v5, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v0, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-static {v3, v5, v0}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 748
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V

    .line 750
    .local v4, tempBody:Lcom/android/emailcommon/provider/EmailContent$Body;
    invoke-static {v4, p1, v5}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 752
    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 753
    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;
    :try_end_2b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 758
    return-void

    .line 754
    .end local v0           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v2           #in:Ljava/io/ByteArrayInputStream;
    .end local v3           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .end local v4           #tempBody:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v5           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :catch_2c
    move-exception v1

    .line 756
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private recurrencesParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    :goto_0
    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    .line 649
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v0, :pswitch_data_1a

    .line 654
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 651
    :pswitch_12
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipParser(I)V

    goto :goto_0

    .line 657
    :cond_18
    return-void

    .line 649
    nop

    :pswitch_data_1a
    .packed-switch 0xa8
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public addData(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .registers 16
    .parameter "msg"
    .parameter "endingTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v0, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v4, 0x0

    .line 496
    .local v4, truncated:Z
    :cond_a
    :goto_a
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v6

    if-eq v6, v12, :cond_12a

    .line 497
    iget v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v6, :sswitch_data_134

    .line 589
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_a

    .line 500
    :sswitch_19
    invoke-direct {p0, v0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_a

    .line 503
    :sswitch_1d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto :goto_a

    .line 506
    :sswitch_2c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 507
    .local v1, froms:[Lcom/android/emailcommon/mail/Address;
    if-eqz v1, :cond_41

    array-length v6, v1

    if-lez v6, :cond_41

    .line 508
    aget-object v6, v1, v8

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 510
    :cond_41
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto :goto_a

    .line 513
    .end local v1           #froms:[Lcom/android/emailcommon/mail/Address;
    :sswitch_48
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    goto :goto_a

    .line 516
    :sswitch_57
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    goto :goto_a

    .line 519
    :sswitch_66
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    goto :goto_a

    .line 522
    :sswitch_71
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto :goto_a

    .line 525
    :sswitch_78
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v6

    if-ne v6, v7, :cond_82

    move v6, v7

    :goto_7f
    iput-boolean v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    goto :goto_a

    :cond_82
    move v6, v8

    goto :goto_7f

    .line 528
    :sswitch_84
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_a

    .line 531
    :sswitch_88
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->flagParser()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    goto/16 :goto_a

    .line 534
    :sswitch_94
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v6

    if-ne v6, v7, :cond_9d

    move v4, v7

    .line 535
    :goto_9b
    goto/16 :goto_a

    :cond_9d
    move v4, v8

    .line 534
    goto :goto_9b

    .line 539
    :sswitch_9f
    if-eqz v4, :cond_ba

    .line 545
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    .line 546
    new-array v6, v11, [Ljava/lang/String;

    const-string v9, "Partially loaded: "

    aput-object v9, v6, v8

    iget-object v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 547
    iput v11, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 548
    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #setter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z
    invoke-static {v6, v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$102(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z

    goto/16 :goto_a

    .line 550
    :cond_ba
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 554
    :sswitch_c3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, text:Ljava/lang/String;
    iput-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_a

    .line 558
    .end local v3           #text:Ljava/lang/String;
    :sswitch_cb
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, messageClass:Ljava/lang/String;
    const-string v6, "IPM.Schedule.Meeting.Request"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_df

    .line 560
    iget v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_a

    .line 561
    :cond_df
    const-string v6, "IPM.Schedule.Meeting.Canceled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 562
    iget v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_a

    .line 566
    .end local v2           #messageClass:Ljava/lang/String;
    :sswitch_ef
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->meetingRequestParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_a

    .line 569
    :sswitch_f4
    iget v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipParser(I)V

    goto/16 :goto_a

    .line 572
    :sswitch_fb
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueBytes()[B

    move-result-object v6

    const/16 v9, 0x8

    invoke-static {v6, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerConversationId:Ljava/lang/String;

    goto/16 :goto_a

    .line 577
    :sswitch_109
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueBytes()[B

    goto/16 :goto_a

    .line 580
    :sswitch_10e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v5

    .line 581
    .local v5, val:I
    if-eq v5, v7, :cond_116

    if-ne v5, v11, :cond_11f

    .line 583
    :cond_116
    iget v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v9, 0x4

    or-int/2addr v6, v9

    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_a

    .line 584
    :cond_11f
    if-ne v5, v12, :cond_a

    .line 585
    iget v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v9, 0x8

    or-int/2addr v6, v9

    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_a

    .line 593
    .end local v5           #val:I
    :cond_12a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_132

    .line 594
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 596
    :cond_132
    return-void

    .line 497
    nop

    :sswitch_data_134
    .sparse-switch
        0x86 -> :sswitch_19
        0x8c -> :sswitch_c3
        0x8f -> :sswitch_66
        0x93 -> :sswitch_cb
        0x94 -> :sswitch_71
        0x95 -> :sswitch_78
        0x96 -> :sswitch_1d
        0x97 -> :sswitch_48
        0x98 -> :sswitch_2c
        0x99 -> :sswitch_57
        0xa2 -> :sswitch_ef
        0xb6 -> :sswitch_9f
        0xb7 -> :sswitch_94
        0xba -> :sswitch_88
        0x44a -> :sswitch_84
        0x44e -> :sswitch_19
        0x589 -> :sswitch_fb
        0x58a -> :sswitch_109
        0x58b -> :sswitch_10e
        0x608 -> :sswitch_f4
    .end sparse-switch
.end method

.method changeParser(Ljava/util/ArrayList;)V
    .registers 15
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;>;"
    const/16 v12, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 913
    const/4 v8, 0x0

    .line 914
    .local v8, serverId:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 915
    .local v2, oldRead:Ljava/lang/Boolean;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 916
    .local v3, oldFlag:Ljava/lang/Boolean;
    const/4 v4, 0x0

    .line 917
    .local v4, flags:I
    const-wide/16 v5, 0x0

    .line 918
    .local v5, id:J
    :goto_10
    invoke-virtual {p0, v12}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_74

    .line 919
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_76

    .line 939
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_10

    .line 921
    :sswitch_20
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 922
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 924
    .local v7, c:Landroid/database/Cursor;
    :try_start_2a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 925
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v11, "Changing "

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 926
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_65

    move v0, v9

    :goto_46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 927
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_67

    move v0, v9

    :goto_52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 928
    const/16 v0, 0x8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 929
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_60
    .catchall {:try_start_2a .. :try_end_60} :catchall_69

    move-result-wide v5

    .line 932
    :cond_61
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_10

    :cond_65
    move v0, v10

    .line 926
    goto :goto_46

    :cond_67
    move v0, v10

    .line 927
    goto :goto_52

    .line 932
    :catchall_69
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v7           #c:Landroid/database/Cursor;
    :sswitch_6e
    move-object v0, p0

    move-object v1, p1

    .line 936
    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;IJ)V

    goto :goto_10

    .line 942
    :cond_74
    return-void

    .line 919
    nop

    :sswitch_data_76
    .sparse-switch
        0xd -> :sswitch_20
        0x1d -> :sswitch_6e
    .end sparse-switch
.end method

.method public commandsParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 984
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4b

    .line 985
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1d

    .line 986
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 988
    :cond_1d
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_29

    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_36

    .line 989
    :cond_29
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deleteParser(Ljava/util/ArrayList;I)V

    .line 990
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 991
    :cond_36
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_47

    .line 992
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changeParser(Ljava/util/ArrayList;)V

    .line 993
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 995
    :cond_47
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 997
    :cond_4b
    return-void
.end method

.method public commit()V
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1057
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    .local v7, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1061
    .local v6, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v8, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1062
    .local v0, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 1064
    .local v4, id:Ljava/lang/String;
    :try_start_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 1065
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_8b

    move-result-object v4

    .line 1068
    :cond_2e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1073
    if-eqz v4, :cond_e

    .line 1074
    new-array v8, v13, [Ljava/lang/String;

    const-string v9, "Fetched body successfully for "

    aput-object v9, v8, v11

    aput-object v4, v8, v12

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 1075
    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v8

    aput-object v4, v8, v11

    .line 1076
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "messageKey=?"

    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "textContent"

    iget-object v10, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "_id=?"

    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "flagLoaded"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1068
    :catchall_8b
    move-exception v8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v8

    .line 1087
    .end local v0           #c:Landroid/database/Cursor;
    .end local v4           #id:Ljava/lang/String;
    .end local v6           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_90
    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1088
    .restart local v6       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    goto :goto_96

    .line 1091
    .end local v6           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_a6
    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ac
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1092
    .local v4, id:Ljava/lang/Long;
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    goto :goto_ac

    .line 1097
    .end local v4           #id:Ljava/lang/Long;
    :cond_db
    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_133

    .line 1099
    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_133

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    .line 1100
    .local v1, change:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1101
    .local v2, cv:Landroid/content/ContentValues;
    iget-object v8, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    if-eqz v8, :cond_105

    .line 1102
    const-string v8, "flagRead"

    iget-object v9, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1104
    :cond_105
    iget-object v8, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    if-eqz v8, :cond_110

    .line 1105
    const-string v8, "flagFavorite"

    iget-object v9, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1107
    :cond_110
    iget-object v8, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Ljava/lang/Integer;

    if-eqz v8, :cond_11b

    .line 1108
    const-string v8, "flags"

    iget-object v9, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Ljava/lang/Integer;

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    :cond_11b
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 1118
    .end local v1           #change:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_133
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1119
    .local v5, mailboxValues:Landroid/content/ContentValues;
    const-string v8, "syncKey"

    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v9, v9, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v8}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1126
    :try_start_161
    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v8}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v8

    if-eqz v8, :cond_16b

    monitor-exit v9
    :try_end_16a
    .catchall {:try_start_161 .. :try_end_16a} :catchall_18d

    .line 1136
    :goto_16a
    return-void

    .line 1128
    :cond_16b
    :try_start_16b
    iget-object v8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "com.android.email.provider"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1129
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, " SyncKey saved as: "

    aput-object v11, v8, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v11, v8, v10

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_18b
    .catchall {:try_start_16b .. :try_end_18b} :catchall_18d
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_18b} :catch_192
    .catch Landroid/content/OperationApplicationException; {:try_start_16b .. :try_end_18b} :catch_190

    .line 1135
    :goto_18b
    :try_start_18b
    monitor-exit v9

    goto :goto_16a

    :catchall_18d
    move-exception v8

    monitor-exit v9
    :try_end_18f
    .catchall {:try_start_18b .. :try_end_18f} :catchall_18d

    throw v8

    .line 1132
    :catch_190
    move-exception v8

    goto :goto_18b

    .line 1130
    :catch_192
    move-exception v8

    goto :goto_18b
.end method

.method deleteParser(Ljava/util/ArrayList;I)V
    .registers 9
    .parameter
    .parameter "entryTag"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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
    .line 872
    .local p1, deletes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_65

    .line 873
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v2, :pswitch_data_66

    .line 891
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 875
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, serverId:Ljava/lang/String;
    invoke-static {}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$400()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 879
    .local v0, c:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 880
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_5c

    .line 882
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_1c .. :try_end_5c} :catchall_60

    .line 887
    :cond_5c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_60
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 894
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_65
    return-void

    .line 873
    :pswitch_data_66
    .packed-switch 0xd
        :pswitch_10
    .end packed-switch
.end method

.method public failedUpdateParser(I)V
    .registers 11
    .parameter "endTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    const/4 v2, 0x0

    .line 1007
    .local v2, serverId:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_74

    .line 1008
    iget v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_65

    .line 1009
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v3

    .line 1010
    .local v3, status:I
    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    if-eqz v2, :cond_1

    .line 1011
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1013
    .local v0, c:Landroid/database/Cursor;
    :try_start_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1014
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1015
    .local v1, id:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed; will retry"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1016
    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1017
    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z
    :try_end_5c
    .catchall {:try_start_1d .. :try_end_5c} :catchall_60

    .line 1020
    .end local v1           #id:Ljava/lang/Long;
    :cond_5c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_60
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1023
    .end local v0           #c:Landroid/database/Cursor;
    .end local v3           #status:I
    :cond_65
    iget v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_70

    .line 1024
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1026
    :cond_70
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_1

    .line 1029
    :cond_74
    return-void
.end method

.method public getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "fileName"

    .prologue
    .line 844
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 845
    .local v1, lastDot:I
    const/4 v0, 0x0

    .line 846
    .local v0, extension:Ljava/lang/String;
    if-lez v1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1b

    .line 847
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 849
    :cond_1b
    if-nez v0, :cond_20

    .line 851
    const-string v2, "application/octet-stream"

    .line 858
    .local v2, mimeType:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-object v2

    .line 853
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_20
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 854
    .restart local v2       #mimeType:Ljava/lang/String;
    if-nez v2, :cond_1f

    .line 855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f
.end method

.method public responsesParser()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 1033
    :cond_2
    :goto_2
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5a

    .line 1034
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_19

    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    if-eq v1, v5, :cond_19

    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1f

    .line 1035
    :cond_19
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->failedUpdateParser(I)V

    goto :goto_2

    .line 1036
    :cond_1f
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1038
    :try_start_25
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_2

    .line 1039
    :catch_2f
    move-exception v0

    .line 1040
    .local v0, sse:Lcom/android/exchange/CommandStatusException;
    iget v1, v0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    if-ne v1, v5, :cond_2

    .line 1044
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/exchange/CommandStatusException;->mItemId:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1045
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1046
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1052
    .end local v0           #sse:Lcom/android/exchange/CommandStatusException;
    :cond_5a
    return-void
.end method

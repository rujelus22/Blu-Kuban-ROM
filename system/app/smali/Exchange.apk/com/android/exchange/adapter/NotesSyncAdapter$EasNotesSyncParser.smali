.class Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "NotesSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/NotesSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasNotesSyncParser"
.end annotation


# instance fields
.field mNewMsgCount:J

.field mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

.field final synthetic this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/NotesSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/NotesSyncAdapter;)V
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
    .line 846
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    .line 847
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 844
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNewMsgCount:J

    .line 849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    .line 852
    return-void
.end method

.method private addData()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 983
    :cond_1
    :goto_1
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v1

    if-eq v1, v5, :cond_68

    .line 984
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotesSync Tag:+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->userLog([Ljava/lang/String;)V

    .line 985
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v1, :sswitch_data_6a

    .line 1013
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->skipTag()V

    goto :goto_1

    .line 988
    :cond_30
    :goto_30
    :sswitch_30
    const/16 v1, 0x5c8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 989
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x5c9

    if-ne v1, v2, :cond_30

    .line 990
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmCategories(Ljava/lang/String;)V

    goto :goto_30

    .line 998
    :sswitch_48
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->parseNotesDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, timeInMs:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v1, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmLastModifyDate(Ljava/lang/String;)V

    goto :goto_1

    .line 1004
    .end local v0           #timeInMs:Ljava/lang/String;
    :sswitch_5a
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmSubject(Ljava/lang/String;)V

    goto :goto_1

    .line 1008
    :sswitch_64
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->bodyParser()V

    goto :goto_1

    .line 1019
    :cond_68
    return-void

    .line 985
    nop

    :sswitch_data_6a
    .sparse-switch
        0x44a -> :sswitch_64
        0x5c5 -> :sswitch_5a
        0x5c7 -> :sswitch_48
        0x5c8 -> :sswitch_30
    .end sparse-switch
.end method

.method private addParser()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    .line 957
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotesSync Tag:+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->userLog([Ljava/lang/String;)V

    .line 958
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_3c

    goto :goto_0

    .line 960
    :sswitch_2c
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmServerIDNote(Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :sswitch_36
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->addData()V

    goto :goto_0

    .line 970
    :cond_3a
    return-void

    .line 958
    nop

    :sswitch_data_3c
    .sparse-switch
        0xd -> :sswitch_2c
        0x1d -> :sswitch_36
    .end sparse-switch
.end method

.method private bodyParser()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1022
    const/4 v0, 0x0

    .line 1023
    .local v0, value:Ljava/lang/String;
    :goto_1
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_65

    .line 1024
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotesSync Tag:+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->userLog([Ljava/lang/String;)V

    .line 1025
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_66

    .line 1058
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->skipTag()V

    goto :goto_1

    .line 1032
    :pswitch_31
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodyType(I)V

    goto :goto_1

    .line 1039
    :pswitch_3f
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodySize(J)V

    goto :goto_1

    .line 1046
    :pswitch_4d
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodyTruncated(Z)V

    goto :goto_1

    .line 1054
    :pswitch_5b
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodyData(Ljava/lang/String;)V

    goto :goto_1

    .line 1062
    :cond_65
    return-void

    .line 1025
    :pswitch_data_66
    .packed-switch 0x446
        :pswitch_31
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_5b
        :pswitch_3f
        :pswitch_4d
    .end packed-switch
.end method

.method private changeParser()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3b

    .line 941
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotesSync Tag:+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->userLog([Ljava/lang/String;)V

    .line 942
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_3c

    goto :goto_0

    .line 944
    :sswitch_2d
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmServerIDNote(Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :sswitch_37
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->addData()V

    goto :goto_0

    .line 953
    :cond_3b
    return-void

    .line 942
    :sswitch_data_3c
    .sparse-switch
        0xd -> :sswitch_2d
        0x1d -> :sswitch_37
    .end sparse-switch
.end method

.method private deleteParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    :cond_0
    :goto_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 932
    const/16 v0, 0xd

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    if-ne v0, v1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmServerIDNote(Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :cond_19
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 869
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNewMsgCount:J

    .line 871
    :cond_6
    :goto_6
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17b

    .line 873
    new-array v0, v8, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotesSync Tag:+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->userLog([Ljava/lang/String;)V

    .line 874
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9f

    .line 875
    new-instance v0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-string v4, "Eas"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 878
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->addParser()V

    .line 879
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->incrementChangeCount()V

    .line 881
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setSyncNeededFlag(I)V

    .line 882
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v8}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setNewMsgRecieved(Z)V

    .line 883
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    iget-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNewMsgCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNewMsgCount:J

    .line 886
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_6

    .line 887
    const-string v0, "Notes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recieved NEW Note --  Account ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Server ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 891
    :cond_9f
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10d

    .line 892
    new-instance v0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-string v4, "Eas"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 895
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->changeParser()V

    .line 896
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->incrementChangeCount()V

    .line 898
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setSyncNeededFlag(I)V

    .line 899
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v8}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setModifiedMsgRecieved(Z)V

    .line 900
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_6

    .line 903
    const-string v0, "Notes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recieved CHANGED Note --  Account ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Server ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 907
    :cond_10d
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    .line 908
    new-instance v0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-string v4, "Eas"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 911
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->deleteParser()V

    .line 912
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->incrementChangeCount()V

    .line 914
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setSyncNeededFlag(I)V

    .line 915
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v8}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setDeletedMsgRecieved(Z)V

    .line 916
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_6

    .line 919
    const-string v0, "Notes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recieved DELETED Note --  Account ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Server ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 927
    :cond_17b
    return-void
.end method

.method public commit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1071
    const/4 v0, 0x0

    .line 1073
    .local v0, noteIndex:I
    :goto_1
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1074
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->committMessage(I)V

    .line 1075
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->committBody(I)V

    .line 1076
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1078
    :cond_14
    return-void
.end method

.method public committBody(I)V
    .registers 9
    .parameter "noteIndex"

    .prologue
    const/4 v6, 0x0

    .line 1157
    iget-object v3, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 1159
    .local v0, Note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkNewMsgRecieved()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkModifiedMsgRecieved()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 1161
    :cond_17
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1162
    .local v1, cv:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getMessageForeignKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1163
    const-string v3, "noteKey"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getMessageForeignKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1164
    const-string v3, "size"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodySize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1165
    const-string v3, "type"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    const-string v3, "truncated"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyTruncated()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1169
    const-string v3, "textContent"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v3, "accountKey"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmAccountKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1172
    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkNewMsgRecieved()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 1173
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1174
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1188
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_90
    :goto_90
    return-void

    .line 1177
    .restart local v1       #cv:Landroid/content/ContentValues;
    :cond_91
    sget-object v3, Lcom/android/emailcommon/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getMessageForeignKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1179
    .restart local v2       #uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_90

    .line 1182
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_a9
    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkDeletedMsgRecieved()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1184
    sget-object v3, Lcom/android/emailcommon/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getMessageForeignKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1186
    .restart local v2       #uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_90
.end method

.method public committMessage(I)V
    .registers 16
    .parameter "noteIndex"

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1082
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 1084
    .local v6, Note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkNewMsgRecieved()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkModifiedMsgRecieved()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 1086
    :cond_19
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1087
    .local v8, cv:Landroid/content/ContentValues;
    const-string v0, "accountKey"

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1088
    const-string v0, "server_id"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string v0, "subject"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string v0, "displayName"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v0, "last_modified_date"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmLastModifyDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v0, "categories"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmCategories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v0, "flag_sync_needed"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getSyncNeededFlag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1095
    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkNewMsgRecieved()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1096
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1097
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1098
    .local v9, id:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->updateMessageForeignKey(J)V

    .line 1153
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #id:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_89
    :goto_89
    return-void

    .line 1101
    .restart local v8       #cv:Landroid/content/ContentValues;
    :cond_8a
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    .line 1105
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1107
    .local v7, c:Landroid/database/Cursor;
    :try_start_91
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "server_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1112
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1114
    sget-object v0, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1117
    .restart local v10       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v8, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1119
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->updateMessageForeignKey(J)V
    :try_end_d0
    .catchall {:try_start_91 .. :try_end_d0} :catchall_dc

    .line 1122
    if-eqz v7, :cond_89

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_89

    .line 1123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_89

    .line 1122
    .end local v10           #uri:Landroid/net/Uri;
    :catchall_dc
    move-exception v0

    if-eqz v7, :cond_e8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e8

    .line 1123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1122
    :cond_e8
    throw v0

    .line 1129
    .end local v2           #projection:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_e9
    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkDeletedMsgRecieved()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1134
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    .line 1137
    .restart local v2       #projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "server_id=?"

    new-array v4, v13, [Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1141
    .restart local v7       #c:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1143
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->updateMessageForeignKey(J)V

    .line 1147
    :cond_119
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "server_id=?"

    new-array v4, v13, [Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_89
.end method

.method public parseAddResponse()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1191
    const-wide/16 v12, -0x1

    .line 1192
    .local v12, status:J
    const/4 v8, 0x0

    .line 1193
    .local v8, clientId:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1195
    .local v11, serverId:Ljava/lang/String;
    :goto_4
    const/4 v1, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_26

    .line 1196
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_184

    goto :goto_4

    .line 1201
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 1202
    goto :goto_4

    .line 1198
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValueInt()I

    move-result v1

    int-to-long v12, v1

    .line 1199
    goto :goto_4

    .line 1204
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 1209
    :cond_26
    const-wide/16 v1, 0x1

    cmp-long v1, v12, v1

    if-nez v1, :cond_f6

    .line 1211
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 1215
    .local v3, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1217
    .local v7, c:Landroid/database/Cursor;
    :try_start_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "clientId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1222
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 1224
    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1226
    .local v16, uri_update:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1228
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1229
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "server_id"

    invoke-virtual {v9, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v1, "flag_sync_needed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1231
    const-string v1, "clientId"

    const-string v2, "0"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1235
    .local v14, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v9, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1237
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_dd

    .line 1238
    const-string v1, "Notes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done! Local Note ADDDITION --  Account ID:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Client ID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Server ID:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_35 .. :try_end_dd} :catchall_e9

    .line 1245
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v14           #uri:Landroid/net/Uri;
    .end local v16           #uri_update:Landroid/net/Uri;
    :cond_dd
    if-eqz v7, :cond_e8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e8

    .line 1246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1270
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_e8
    :goto_e8
    return-void

    .line 1245
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_e9
    move-exception v1

    if-eqz v7, :cond_f5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_f5

    .line 1246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1245
    :cond_f5
    throw v1

    .line 1250
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_f6
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1251
    .restart local v9       #cv:Landroid/content/ContentValues;
    const-string v1, "flag_sync_needed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "clientId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    invoke-virtual {v1, v2, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1257
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1258
    .local v10, cv_acc:Landroid/content/ContentValues;
    const-string v1, "syncNeeded"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1259
    sget-object v1, Lcom/android/emailcommon/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1261
    .local v15, uri_acc:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v15, v10, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1263
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_e8

    .line 1264
    const-string v1, "Notes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed while ADDING local Note ( Status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Account ID:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Client ID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e8

    .line 1196
    :pswitch_data_184
    .packed-switch 0xc
        :pswitch_16
        :pswitch_21
        :pswitch_1b
    .end packed-switch
.end method

.method public parseChangeResponse()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1311
    const-wide/16 v3, -0x1

    .line 1312
    .local v3, status:J
    const/4 v2, 0x0

    .line 1314
    .local v2, serverId:Ljava/lang/String;
    :goto_4
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1e

    .line 1315
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v6, :pswitch_data_a8

    goto :goto_4

    .line 1320
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1317
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValueInt()I

    move-result v6

    int-to-long v3, v6

    .line 1318
    goto :goto_4

    .line 1325
    :cond_1e
    const-wide/16 v6, 0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_a6

    .line 1327
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1328
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "flag_sync_needed"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "server_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1336
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1337
    .local v1, cv_acc:Landroid/content/ContentValues;
    const-string v6, "syncNeeded"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1338
    sget-object v6, Lcom/android/emailcommon/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1340
    .local v5, uri_acc:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v1, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1342
    sget-boolean v6, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v6, :cond_a6

    .line 1343
    const-string v6, "Notes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed while MODIFYING local Note ( Status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Account ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Server ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cv_acc:Landroid/content/ContentValues;
    .end local v5           #uri_acc:Landroid/net/Uri;
    :cond_a6
    return-void

    .line 1315
    nop

    :pswitch_data_a8
    .packed-switch 0xd
        :pswitch_13
        :pswitch_18
    .end packed-switch
.end method

.method public parseDeleteResponse()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x3

    .line 1273
    const-wide/16 v3, -0x1

    .line 1274
    .local v3, status:J
    const/4 v2, 0x0

    .line 1276
    .local v2, serverId:Ljava/lang/String;
    :goto_5
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v6

    if-eq v6, v8, :cond_1e

    .line 1277
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v6, :pswitch_data_a6

    goto :goto_5

    .line 1282
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 1279
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValueInt()I

    move-result v6

    int-to-long v3, v6

    .line 1280
    goto :goto_5

    .line 1287
    :cond_1e
    const-wide/16 v6, 0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_a5

    .line 1288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1289
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "flag_sync_needed"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1292
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "server_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1297
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1298
    .local v1, cv_acc:Landroid/content/ContentValues;
    const-string v6, "syncNeeded"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1299
    sget-object v6, Lcom/android/emailcommon/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1301
    .local v5, uri_acc:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v1, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1303
    sget-boolean v6, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v6, :cond_a5

    .line 1304
    const-string v6, "Notes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed while DELETING local Note ( Status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Account ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Server ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cv_acc:Landroid/content/ContentValues;
    .end local v5           #uri_acc:Landroid/net/Uri;
    :cond_a5
    return-void

    .line 1277
    :pswitch_data_a6
    .packed-switch 0xd
        :pswitch_13
        :pswitch_18
    .end packed-switch
.end method

.method public parseNotesDateTimeToMillis(Ljava/lang/String;)J
    .registers 10
    .parameter "date"

    .prologue
    const/16 v7, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v2, 0x4

    .line 973
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 977
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 978
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public responsesParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1354
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    .line 1356
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_0

    .line 1358
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->parseAddResponse()V

    goto :goto_0

    .line 1363
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->parseChangeResponse()V

    goto :goto_0

    .line 1368
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->parseDeleteResponse()V

    goto :goto_0

    .line 1374
    :cond_1a
    return-void

    .line 1356
    nop

    :pswitch_data_1c
    .packed-switch 0x7
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.class public Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/CalendarSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasCalendarSyncParser"
.end annotation


# instance fields
.field mAccountUri:Landroid/net/Uri;

.field mBindArgument:[Ljava/lang/String;

.field mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

.field final synthetic this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/CalendarSyncAdapter;)V
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
    .line 305
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    .line 306
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 300
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 302
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    .line 307
    const-string v0, "CalendarParser"

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setLoggingTag(Ljava/lang/String;)V

    .line 308
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 309
    return-void
.end method

.method private addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "ops"
    .parameter "eventId"
    .parameter "organizerName"
    .parameter "organizerEmail"

    .prologue
    const/4 v3, 0x1

    .line 314
    if-nez p4, :cond_5

    if-eqz p5, :cond_3d

    .line 315
    :cond_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 316
    .local v0, attendeeCv:Landroid/content/ContentValues;
    if-eqz p4, :cond_11

    .line 317
    const-string v1, "attendeeName"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_11
    if-eqz p5, :cond_18

    .line 320
    const-string v1, "attendeeEmail"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_18
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v1, "attendeeType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v1, "attendeeStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_3e

    .line 326
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    .line 331
    .end local v0           #attendeeCv:Landroid/content/ContentValues;
    :cond_3d
    :goto_3d
    return-void

    .line 328
    .restart local v0       #attendeeCv:Landroid/content/ContentValues;
    :cond_3e
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto :goto_3d
.end method

.method private attachmentsParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1001
    :goto_0
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    .line 1002
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v0, :pswitch_data_1a

    .line 1007
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1004
    :pswitch_12
    const/16 v0, 0x12b

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipParser(I)V

    goto :goto_0

    .line 1010
    :cond_18
    return-void

    .line 1002
    nop

    :pswitch_data_1a
    .packed-switch 0x12b
        :pswitch_12
    .end packed-switch
.end method

.method private attendeeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Landroid/content/ContentValues;
    .registers 13
    .parameter "ops"
    .parameter "eventId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x3

    .line 1039
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1040
    .local v0, cv:Landroid/content/ContentValues;
    :goto_9
    const/16 v3, 0x108

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    if-eq v3, v7, :cond_64

    .line 1041
    iget v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v3, :sswitch_data_6e

    .line 1071
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_9

    .line 1043
    :sswitch_1a
    const-string v3, "attendeeEmail"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1046
    :sswitch_24
    const-string v3, "attendeeName"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1049
    :sswitch_2e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v1

    .line 1050
    .local v1, status:I
    const-string v8, "attendeeStatus"

    if-ne v1, v6, :cond_3f

    move v3, v4

    :goto_37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    :cond_3f
    if-ne v1, v7, :cond_43

    move v3, v5

    goto :goto_37

    :cond_43
    if-ne v1, v4, :cond_47

    move v3, v6

    goto :goto_37

    :cond_47
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4c

    move v3, v7

    goto :goto_37

    :cond_4c
    const/4 v3, 0x0

    goto :goto_37

    .line 1058
    .end local v1           #status:I
    :sswitch_4e
    const/4 v2, 0x0

    .line 1060
    .local v2, type:I
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    packed-switch v3, :pswitch_data_80

    .line 1068
    :goto_56
    const-string v3, "attendeeType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    .line 1062
    :pswitch_60
    const/4 v2, 0x1

    .line 1063
    goto :goto_56

    .line 1065
    :pswitch_62
    const/4 v2, 0x2

    goto :goto_56

    .line 1074
    .end local v2           #type:I
    :cond_64
    const-string v3, "attendeeRelationship"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1075
    return-object v0

    .line 1041
    :sswitch_data_6e
    .sparse-switch
        0x109 -> :sswitch_1a
        0x10a -> :sswitch_24
        0x129 -> :sswitch_2e
        0x12a -> :sswitch_4e
    .end sparse-switch

    .line 1060
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_60
        :pswitch_62
    .end packed-switch
.end method

.method private attendeesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Ljava/util/ArrayList;
    .registers 9
    .parameter "ops"
    .parameter "eventId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1014
    const/4 v0, 0x0

    .line 1015
    .local v0, attendeeCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v1, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6
    :goto_6
    const/16 v3, 0x107

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_26

    .line 1017
    iget v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v3, :pswitch_data_28

    .line 1031
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_6

    .line 1019
    :pswitch_18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Landroid/content/ContentValues;

    move-result-object v2

    .line 1023
    .local v2, cv:Landroid/content/ContentValues;
    add-int/lit8 v0, v0, 0x1

    .line 1026
    const/16 v3, 0x33

    if-gt v0, v3, :cond_6

    .line 1027
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1034
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_26
    return-object v1

    .line 1017
    nop

    :pswitch_data_28
    .packed-switch 0x108
        :pswitch_18
    .end packed-switch
.end method

.method private bodyParser()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, body:Ljava/lang/String;
    :goto_1
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    .line 1081
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v1, :pswitch_data_26

    .line 1086
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_1

    .line 1083
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1084
    goto :goto_1

    .line 1091
    :cond_18
    if-nez v0, :cond_1d

    const-string v1, ""

    .line 1093
    :goto_1c
    return-object v1

    :cond_1d
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 1081
    :pswitch_data_26
    .packed-switch 0x44b
        :pswitch_13
    .end packed-switch
.end method

.method private categoriesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;
    .registers 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    .local v0, categories:Ljava/lang/StringBuilder;
    :goto_5
    const/16 v1, 0x10e

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    .line 983
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v1, :pswitch_data_2a

    .line 991
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_5

    .line 987
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 994
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 983
    nop

    :pswitch_data_2a
    .packed-switch 0x10f
        :pswitch_17
    .end packed-switch
.end method

.method private encodeVisibility(I)I
    .registers 3
    .parameter "easVisibility"

    .prologue
    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, visibility:I
    packed-switch p1, :pswitch_data_e

    .line 962
    :goto_4
    return v0

    .line 950
    :pswitch_5
    const/4 v0, 0x0

    .line 951
    goto :goto_4

    .line 953
    :pswitch_7
    const/4 v0, 0x3

    .line 954
    goto :goto_4

    .line 956
    :pswitch_9
    const/4 v0, 0x2

    .line 957
    goto :goto_4

    .line 959
    :pswitch_b
    const/4 v0, 0x1

    goto :goto_4

    .line 948
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private exceptionParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .registers 26
    .parameter "ops"
    .parameter "parentCv"
    .parameter
    .parameter "reminderMins"
    .parameter "busyStatus"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 818
    .local v3, cv:Landroid/content/ContentValues;
    const-string v2, "calendar_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J
    invoke-static {v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 822
    const-string v2, "organizer"

    const-string v4, "organizer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v2, "title"

    const-string v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v2, "description"

    const-string v4, "description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v2, "originalAllDay"

    const-string v4, "allDay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    const-string v2, "eventLocation"

    const-string v4, "eventLocation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v2, "accessLevel"

    const-string v4, "accessLevel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v2, "eventTimezone"

    const-string v4, "eventTimezone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v2, "hasAttendeeData"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    const/4 v8, 0x0

    .line 838
    .local v8, allDayEvent:I
    const-string v2, "original_sync_id"

    const-string v4, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v13, "_noStartTime"

    .line 841
    .local v13, exceptionStartTime:Ljava/lang/String;
    :cond_8b
    :goto_8b
    const/16 v2, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_13a

    .line 842
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_1dc

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_8b

    .line 844
    :sswitch_a1
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attachmentsParser()V

    goto :goto_8b

    .line 847
    :sswitch_a5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 848
    const-string v2, "originalInstanceTime"

    invoke-static {v13}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_8b

    .line 852
    :sswitch_b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8b

    .line 853
    const-string v2, "eventStatus"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8b

    .line 857
    :sswitch_c9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v8

    .line 858
    const-string v2, "allDay"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8b

    .line 861
    :sswitch_d7
    const-string v2, "description"

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 864
    :sswitch_e1
    const-string v2, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 867
    :sswitch_eb
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p6

    .line 868
    goto :goto_8b

    .line 870
    :sswitch_f4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p8

    .line 871
    goto :goto_8b

    .line 873
    :sswitch_fd
    const-string v2, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 876
    :sswitch_107
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v15

    .line 877
    .local v15, rrule:Ljava/lang/String;
    if-eqz v15, :cond_8b

    .line 878
    const-string v2, "rrule"

    invoke-virtual {v3, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8b

    .line 882
    .end local v15           #rrule:Ljava/lang/String;
    :sswitch_114
    const-string v2, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8b

    .line 885
    :sswitch_11f
    const-string v2, "accessLevel"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->encodeVisibility(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_8b

    .line 888
    :sswitch_134
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result p5

    .line 891
    goto/16 :goto_8b

    .line 905
    :cond_13a
    const-string v2, "_sync_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    .line 909
    invoke-virtual/range {v2 .. v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 912
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_170

    .line 944
    :cond_16f
    :goto_16f
    return-void

    .line 915
    :cond_170
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 916
    .local v12, exceptionStart:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newException(Landroid/content/ContentValues;)V

    .line 918
    const/4 v11, 0x0

    .line 919
    .local v11, attendeesRedacted:Z
    if-eqz p3, :cond_1c1

    .line 920
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_180
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 922
    .local v9, attValues:Landroid/content/ContentValues;
    const-string v2, "attendeeEmail"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 926
    .local v10, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b1

    .line 927
    const-string v2, "attendeeStatus"

    invoke-static/range {p5 .. p5}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_180

    .line 930
    :cond_1b1
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->size()I

    move-result v2

    const/16 v4, 0x1f4

    if-ge v2, v4, :cond_1bf

    .line 931
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_180

    .line 933
    :cond_1bf
    const/4 v11, 0x1

    goto :goto_180

    .line 938
    .end local v9           #attValues:Landroid/content/ContentValues;
    .end local v10           #attendeeEmail:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_1c1
    if-lez p4, :cond_1ca

    .line 939
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(II)V

    .line 941
    :cond_1ca
    if-eqz v11, :cond_16f

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Attendees redacted in this exception"

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_16f

    .line 842
    :sswitch_data_1dc
    .sparse-switch
        0x106 -> :sswitch_c9
        0x10b -> :sswitch_e1
        0x10d -> :sswitch_134
        0x112 -> :sswitch_f4
        0x115 -> :sswitch_b7
        0x116 -> :sswitch_a5
        0x117 -> :sswitch_fd
        0x11b -> :sswitch_107
        0x125 -> :sswitch_11f
        0x126 -> :sswitch_114
        0x127 -> :sswitch_eb
        0x12c -> :sswitch_a1
        0x44a -> :sswitch_d7
    .end sparse-switch
.end method

.method private exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .registers 12
    .parameter "ops"
    .parameter "cv"
    .parameter
    .parameter "reminderMins"
    .parameter "busyStatus"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 968
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_0
    const/16 v0, 0x114

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 969
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v0, :pswitch_data_18

    .line 975
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 971
    :pswitch_12
    invoke-direct/range {p0 .. p9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->exceptionParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto :goto_0

    .line 978
    :cond_16
    return-void

    .line 969
    nop

    :pswitch_data_18
    .packed-switch 0x113
        :pswitch_12
    .end packed-switch
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "clientId"

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1119
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "sync_data2=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "serverId"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_sync_id=? AND original_sync_id ISNULL AND calendar_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 9
    .parameter "cv"
    .parameter "reason"

    .prologue
    .line 724
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_57

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event invalid, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipping: Columns = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 727
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 728
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 731
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_45
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "EasCalendarSyncAdapter"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 733
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_57
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V
    .registers 53
    .parameter "ops"
    .parameter "serverId"
    .parameter "update"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 402
    .local v12, cv:Landroid/content/ContentValues;
    const-string v4, "calendar_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J
    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    const-string v4, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v4, "hasAttendeeData"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    const-string v4, "sync_data2"

    const-string v5, "0"

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/16 v26, 0x0

    .line 408
    .local v26, allDayEvent:I
    const/4 v8, 0x0

    .line 409
    .local v8, organizerName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 410
    .local v9, organizerEmail:Ljava/lang/String;
    const/16 v36, -0x1

    .line 411
    .local v36, eventOffset:I
    const/16 v34, -0x1

    .line 412
    .local v34, deleteOffset:I
    const/4 v15, 0x1

    .line 413
    .local v15, busyStatus:I
    const/16 v44, 0x0

    .line 415
    .local v44, responseType:I
    const/16 v37, 0x1

    .line 416
    .local v37, firstTag:Z
    const-wide/16 v6, -0x1

    .line 417
    .local v6, eventId:J
    const-wide/16 v16, -0x1

    .line 418
    .local v16, startTime:J
    const-wide/16 v18, -0x1

    .line 419
    .local v18, endTime:J
    const/16 v48, 0x0

    .line 422
    .local v48, timeZone:Ljava/util/TimeZone;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v13, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v14, -0x1

    .line 424
    .local v14, reminderMins:I
    const/16 v35, 0x0

    .line 425
    .local v35, dtStamp:Ljava/lang/String;
    const/16 v43, 0x0

    .line 427
    .local v43, organizerAdded:Z
    :cond_4d
    :goto_4d
    const/16 v4, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2bd

    .line 428
    if-eqz p3, :cond_11e

    if-eqz v37, :cond_11e

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 431
    .local v30, c:Landroid/database/Cursor;
    const-wide/16 v40, -0x1

    .line 433
    .local v40, id:J
    if-eqz v30, :cond_75

    :try_start_68
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 434
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_8d

    move-result-wide v40

    .line 437
    :cond_75
    if-eqz v30, :cond_7a

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_7a
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-lez v4, :cond_101

    .line 441
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v5, 0x111

    if-ne v4, v5, :cond_94

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v35

    .line 443
    goto :goto_4d

    .line 437
    :catchall_8d
    move-exception v4

    if-eqz v30, :cond_93

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    :cond_93
    throw v4

    .line 444
    :cond_94
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v5, 0x107

    if-ne v4, v5, :cond_dc

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    .line 448
    sget-object v4, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v5, v5, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v10, "com.android.exchange"

    invoke-static {v4, v5, v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "event_id=? AND attendeeRelationship!=2"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    invoke-virtual {v4, v5, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 454
    move-wide/from16 v6, v40

    .line 473
    .end local v30           #c:Landroid/database/Cursor;
    .end local v40           #id:J
    :cond_ce
    :goto_ce
    const/16 v37, 0x0

    .line 474
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v4, :sswitch_data_4b6

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto/16 :goto_4d

    .line 457
    .restart local v30       #c:Landroid/database/Cursor;
    .restart local v40       #id:J
    :cond_dc
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "Changing (delete/add) event "

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newDelete(JLjava/lang/String;)I

    move-result v34

    .line 461
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Landroid/content/ContentProviderOperation;)I

    move-result v36

    goto :goto_ce

    .line 465
    :cond_101
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Landroid/content/ContentProviderOperation;)I

    move-result v36

    .line 466
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "EasCalendarSyncAdapter"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v10, "Changed item not found; treating as new."

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_ce

    .line 468
    .end local v30           #c:Landroid/database/Cursor;
    .end local v40           #id:J
    :cond_11e
    if-eqz v37, :cond_ce

    .line 471
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Landroid/content/ContentProviderOperation;)I

    move-result v36

    goto :goto_ce

    .line 476
    :sswitch_12b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v26

    .line 477
    if-eqz v26, :cond_1ab

    if-eqz v48, :cond_1ab

    .line 480
    new-instance v31, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 481
    .local v31, cal:Ljava/util/GregorianCalendar;
    move-object/from16 v0, v31

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 482
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "All-day event arrived in: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 483
    const/16 v4, 0xb

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-nez v4, :cond_17f

    const/16 v4, 0xc

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_1ab

    .line 485
    :cond_17f
    const/16 v26, 0x0

    .line 486
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not an all-day event locally: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v11}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 489
    .end local v31           #cal:Ljava/util/GregorianCalendar;
    :cond_1ab
    const-string v4, "allDay"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4d

    .line 492
    :sswitch_1b6
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attachmentsParser()V

    goto/16 :goto_4d

    .line 496
    :sswitch_1bb
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Ljava/util/ArrayList;

    move-result-object v13

    .line 497
    goto/16 :goto_4d

    .line 499
    :sswitch_1c5
    const-string v4, "description"

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 502
    :sswitch_1d0
    const-string v4, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 505
    :sswitch_1db
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v48

    .line 506
    if-nez v48, :cond_1ed

    .line 507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v48

    .line 509
    :cond_1ed
    const-string v4, "eventTimezone"

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 512
    :sswitch_1f8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v16

    .line 513
    goto/16 :goto_4d

    .line 515
    :sswitch_202
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v18

    .line 516
    goto/16 :goto_4d

    :sswitch_20c
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 520
    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 521
    const/16 v43, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 522
    invoke-direct/range {v10 .. v19}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto/16 :goto_4d

    .line 526
    :sswitch_21e
    const-string v4, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 529
    :sswitch_229
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v45

    .line 530
    .local v45, rrule:Ljava/lang/String;
    if-eqz v45, :cond_4d

    .line 531
    const-string v4, "rrule"

    move-object/from16 v0, v45

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 535
    .end local v45           #rrule:Ljava/lang/String;
    :sswitch_238
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 536
    const-string v4, "organizer"

    invoke-virtual {v12, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 539
    :sswitch_243
    const-string v4, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 542
    :sswitch_24e
    const-string v4, "accessLevel"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->encodeVisibility(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4d

    .line 545
    :sswitch_263
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 546
    goto/16 :goto_4d

    .line 548
    :sswitch_269
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v14

    .line 549
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(I)V

    .line 550
    const-string v4, "hasAlarm"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4d

    .line 555
    :sswitch_27e
    const-string v4, "sync_data2"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 558
    :sswitch_289
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v35

    .line 559
    goto/16 :goto_4d

    .line 561
    :sswitch_28f
    const-string v4, "meeting_status"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 567
    :sswitch_29c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v15

    .line 568
    goto/16 :goto_4d

    .line 572
    :sswitch_2a2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v44

    .line 573
    goto/16 :goto_4d

    .line 575
    :sswitch_2a8
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->categoriesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;

    move-result-object v32

    .line 576
    .local v32, categories:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4d

    .line 577
    const-string v4, "categories"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .end local v32           #categories:Ljava/lang/String;
    :cond_2bd
    move-object/from16 v20, p0

    move-object/from16 v21, v12

    move-wide/from16 v22, v16

    move-wide/from16 v24, v18

    .line 586
    invoke-virtual/range {v20 .. v26}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 589
    if-nez v43, :cond_2d1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 590
    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_2d1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    .line 600
    .local v47, selfOrganizer:Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 601
    .local v42, numAttendees:I
    const/16 v4, 0x32

    move/from16 v0, v42

    if-le v0, v4, :cond_36a

    .line 607
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_355

    .line 608
    const-string v4, "attendeesRedacted"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    if-eqz v47, :cond_2ff

    .line 610
    const-string v4, "upsyncProhibited"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_2ff
    :goto_2ff
    if-eqz v47, :cond_308

    .line 620
    const-string v9, "upload_disallowed@uploadisdisallowed.aaa"

    .line 621
    const-string v4, "organizer"

    invoke-virtual {v12, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_308
    const-string v4, "hasAttendeeData"

    const-string v5, "0"

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Maximum number of attendees exceeded; redacting"

    aput-object v11, v5, v10

    invoke-virtual {v4, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 687
    :cond_31e
    :goto_31e
    if-ltz v36, :cond_354

    .line 689
    if-eqz v35, :cond_32b

    .line 690
    const-string v4, "dtstamp"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_32b
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_442

    .line 694
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v5, v5, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v10, "com.android.exchange"

    invoke-static {v4, v5, v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 721
    :cond_354
    :goto_354
    return-void

    .line 613
    :cond_355
    const-string v4, "attendeesRedacted"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 614
    if-eqz v47, :cond_2ff

    .line 615
    const-string v4, "upsyncProhibited"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2ff

    .line 626
    :cond_36a
    if-lez v42, :cond_31e

    .line 627
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .local v46, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, i$:Ljava/util/Iterator;
    :goto_375
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3fe

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    .line 629
    .local v27, attendee:Landroid/content/ContentValues;
    const-string v4, "attendeeEmail"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 630
    .local v28, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v4, "\\"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d1

    .line 636
    if-eqz v44, :cond_3df

    .line 637
    invoke-static/range {v44 .. v44}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromResponseType(I)I

    move-result v29

    .line 649
    .local v29, attendeeStatus:I
    :goto_3ab
    const-string v4, "attendeeStatus"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    if-eqz v9, :cond_3c0

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d1

    .line 658
    :cond_3c0
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_3e9

    .line 659
    const-string v4, "userAttendeeStatus"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .end local v29           #attendeeStatus:I
    :cond_3d1
    :goto_3d1
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_3f5

    .line 669
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    goto :goto_375

    .line 639
    :cond_3df
    if-nez p3, :cond_3e4

    .line 642
    const/16 v29, 0x0

    .restart local v29       #attendeeStatus:I
    goto :goto_3ab

    .line 646
    .end local v29           #attendeeStatus:I
    :cond_3e4
    invoke-static {v15}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v29

    .restart local v29       #attendeeStatus:I
    goto :goto_3ab

    .line 662
    :cond_3e9
    const-string v4, "userAttendeeStatus"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3d1

    .line 671
    .end local v29           #attendeeStatus:I
    :cond_3f5
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto/16 :goto_375

    .line 674
    .end local v27           #attendee:Landroid/content/ContentValues;
    .end local v28           #attendeeEmail:Ljava/lang/String;
    :cond_3fe
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_423

    .line 675
    const-string v4, "attendees"

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v4, "attendeesRedacted"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v4, "upsyncProhibited"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31e

    .line 679
    :cond_423
    const-string v4, "attendees"

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 681
    const-string v4, "attendeesRedacted"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 682
    const-string v4, "upsyncProhibited"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_31e

    .line 703
    .end local v39           #i$:Ljava/util/Iterator;
    .end local v46           #sb:Ljava/lang/StringBuilder;
    :cond_442
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    sub-int v33, v4, v36

    .line 704
    .local v33, cnt:I
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "EasCalendarSyncAdapter"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " inserts from mOps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 705
    const/16 v38, 0x0

    .local v38, i:I
    :goto_475
    move/from16 v0, v38

    move/from16 v1, v33

    if-ge v0, v1, :cond_485

    .line 706
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 705
    add-int/lit8 v38, v38, 0x1

    goto :goto_475

    .line 708
    :cond_485
    move/from16 v0, v36

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 711
    if-ltz v34, :cond_354

    .line 713
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 715
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 716
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "EasCalendarSyncAdapter"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v10, "Removing deletion ops from mOps"

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 717
    move/from16 v0, v34

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    goto/16 :goto_354

    .line 474
    nop

    :sswitch_data_4b6
    .sparse-switch
        0x105 -> :sswitch_1db
        0x106 -> :sswitch_12b
        0x107 -> :sswitch_1bb
        0x10b -> :sswitch_1d0
        0x10d -> :sswitch_29c
        0x10e -> :sswitch_2a8
        0x111 -> :sswitch_289
        0x112 -> :sswitch_202
        0x114 -> :sswitch_20c
        0x117 -> :sswitch_21e
        0x118 -> :sswitch_28f
        0x119 -> :sswitch_238
        0x11a -> :sswitch_263
        0x11b -> :sswitch_229
        0x124 -> :sswitch_269
        0x125 -> :sswitch_24e
        0x126 -> :sswitch_243
        0x127 -> :sswitch_1f8
        0x128 -> :sswitch_27e
        0x12c -> :sswitch_1b6
        0x136 -> :sswitch_2a2
        0x44a -> :sswitch_1c5
    .end sparse-switch
.end method

.method public addParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .registers 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1097
    const/4 v0, 0x0

    .line 1098
    .local v0, serverId:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    .line 1099
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_1e

    .line 1107
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_1

    .line 1101
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1102
    goto :goto_1

    .line 1104
    :sswitch_17
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1110
    :cond_1c
    return-void

    .line 1099
    nop

    :sswitch_data_1e
    .sparse-switch
        0xd -> :sswitch_12
        0x1d -> :sswitch_17
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1247
    const/4 v5, 0x0

    .line 1248
    .local v5, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1249
    .local v1, clientId:Ljava/lang/String;
    const/4 v6, -0x1

    .line 1250
    .local v6, status:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1251
    .local v2, cv:Landroid/content/ContentValues;
    :cond_a
    :goto_a
    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_46

    .line 1252
    iget v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v7, :pswitch_data_c8

    .line 1266
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_a

    .line 1254
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1255
    goto :goto_a

    .line 1257
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1258
    goto :goto_a

    .line 1260
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    .line 1261
    if-eq v6, v11, :cond_a

    .line 1262
    new-array v7, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to add event failed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_a

    .line 1270
    :cond_46
    if-nez v1, :cond_49

    .line 1294
    :goto_48
    return-void

    .line 1271
    :cond_49
    if-nez v5, :cond_5e

    .line 1273
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAIL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1276
    :cond_5e
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1278
    .local v0, c:Landroid/database/Cursor;
    :try_start_62
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_be

    .line 1279
    const-string v7, "_sync_id"

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v7, "sync_data2"

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1283
    .local v3, id:J
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    sget-object v8, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v9, v9, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v10, "com.android.exchange"

    invoke-static {v8, v9, v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1289
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was given serverId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_62 .. :try_end_be} :catchall_c2

    .line 1292
    .end local v3           #id:J
    :cond_be
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_48

    :catchall_c2
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7

    .line 1252
    nop

    :pswitch_data_c8
    .packed-switch 0xc
        :pswitch_20
        :pswitch_1b
        :pswitch_25
    .end packed-switch
.end method

.method public changeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .registers 8
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1153
    const/4 v0, 0x0

    .line 1154
    .local v0, serverId:Ljava/lang/String;
    :goto_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_38

    .line 1155
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_3a

    .line 1164
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_2

    .line 1157
    :sswitch_14
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1158
    goto :goto_2

    .line 1160
    :sswitch_19
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1167
    :cond_38
    return-void

    .line 1155
    nop

    :sswitch_data_3a
    .sparse-switch
        0xd -> :sswitch_14
        0x1d -> :sswitch_19
    .end sparse-switch
.end method

.method public changeResponsesParser()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1297
    const/4 v0, 0x0

    .line 1298
    .local v0, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1299
    .local v1, status:Ljava/lang/String;
    :goto_2
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1e

    .line 1300
    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v2, :pswitch_data_4a

    .line 1308
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_2

    .line 1302
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1303
    goto :goto_2

    .line 1305
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1306
    goto :goto_2

    .line 1311
    :cond_1e
    if-eqz v0, :cond_48

    if-eqz v1, :cond_48

    .line 1312
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1314
    :cond_48
    return-void

    .line 1300
    nop

    :pswitch_data_4a
    .packed-switch 0xd
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method

.method public commandsParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1171
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3f

    .line 1172
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_19

    .line 1173
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1174
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1175
    :cond_19
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2a

    .line 1176
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->deleteParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1177
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1178
    :cond_2a
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 1179
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->changeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1180
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1182
    :cond_3b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1184
    :cond_3f
    return-void
.end method

.method public commit()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1188
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Calendar SyncKey saved as: "

    aput-object v3, v0, v11

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    sget-object v3, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-static {v3, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1197
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$600(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_3e
    :goto_3e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1200
    .local v1, eventId:J
    :try_start_4e
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    const/16 v3, 0x20

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_58} :catch_65

    move-result-object v9

    .line 1207
    .local v9, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v9, :cond_3e

    .line 1208
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v3, v4, v9}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_3e

    .line 1203
    .end local v9           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_65
    move-exception v7

    .line 1205
    .local v7, e:Landroid/os/RemoteException;
    goto :goto_3e

    .line 1213
    .end local v1           #eventId:J
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_67
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->execute()V

    .line 1215
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->access$700(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    if-eqz v0, :cond_121

    .line 1217
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$800(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c5

    .line 1218
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1219
    .local v6, cv:Landroid/content/ContentValues;
    const-string v0, "dirty"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1220
    const-string v0, "sync_data8"

    const-string v3, "0"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$800(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1222
    .restart local v1       #eventId:J
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-static {v3, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_9f

    .line 1230
    .end local v1           #eventId:J
    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_c5
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$900(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    .line 1231
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$900(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_db
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1232
    .restart local v1       #eventId:J
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-static {v3, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_db

    .line 1240
    .end local v1           #eventId:J
    :cond_101
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1241
    .restart local v9       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v3, v4, v9}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_10b

    .line 1244
    .end local v9           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_121
    return-void
.end method

.method public deleteParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .registers 7
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1124
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3f

    .line 1125
    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v2, :pswitch_data_40

    .line 1140
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1127
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1129
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1131
    .local v0, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1132
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1133
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->delete(JLjava/lang/String;)V
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_3a

    .line 1136
    :cond_36
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_3a
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1143
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_3f
    return-void

    .line 1125
    :pswitch_data_40
    .packed-switch 0xd
        :pswitch_12
    .end packed-switch
.end method

.method isValidEventValues(Landroid/content/ContentValues;)Z
    .registers 7
    .parameter "cv"

    .prologue
    const/4 v3, 0x0

    .line 736
    const-string v4, "originalInstanceTime"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 738
    .local v2, isException:Z
    const-string v4, "dtstart"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 739
    const-string v4, "DTSTART missing"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 765
    :cond_14
    :goto_14
    return v3

    .line 742
    :cond_15
    if-nez v2, :cond_25

    const-string v4, "sync_data2"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 743
    const-string v4, "_SYNC_DATA missing"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_14

    .line 746
    :cond_25
    if-nez v2, :cond_3d

    const-string v4, "dtend"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    const-string v4, "duration"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 748
    const-string v4, "DTEND/DURATION missing"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_14

    .line 751
    :cond_3d
    if-eqz v2, :cond_4d

    const-string v4, "dtend"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 752
    const-string v4, "Exception missing DTEND"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_14

    .line 755
    :cond_4d
    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 756
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, duration:Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 758
    const-string v4, "allDay"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 759
    const-string v4, "allDay"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 760
    .local v0, ade:Ljava/lang/Integer;
    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_7b

    const-string v4, "D"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 765
    .end local v0           #ade:Ljava/lang/Integer;
    .end local v1           #duration:Ljava/lang/String;
    :cond_7b
    const/4 v3, 0x1

    goto :goto_14
.end method

.method public recurrenceParser()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    const/4 v0, -0x1

    .line 771
    .local v0, type:I
    const/4 v1, -0x1

    .line 772
    .local v1, occurrences:I
    const/4 v2, -0x1

    .line 773
    .local v2, interval:I
    const/4 v3, -0x1

    .line 774
    .local v3, dow:I
    const/4 v4, -0x1

    .line 775
    .local v4, dom:I
    const/4 v5, -0x1

    .line 776
    .local v5, wom:I
    const/4 v6, -0x1

    .line 777
    .local v6, moy:I
    const/4 v7, 0x0

    .line 779
    .local v7, until:Ljava/lang/String;
    :goto_8
    const/16 v8, 0x11b

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_42

    .line 780
    iget v8, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v8, :pswitch_data_48

    .line 806
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_8

    .line 782
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v0

    .line 783
    goto :goto_8

    .line 785
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v2

    .line 786
    goto :goto_8

    .line 788
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v1

    .line 789
    goto :goto_8

    .line 791
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    .line 792
    goto :goto_8

    .line 794
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v4

    .line 795
    goto :goto_8

    .line 797
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v5

    .line 798
    goto :goto_8

    .line 800
    :pswitch_38
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    .line 801
    goto :goto_8

    .line 803
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 804
    goto :goto_8

    .line 810
    :cond_42
    invoke-static/range {v0 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 780
    nop

    :pswitch_data_48
    .packed-switch 0x11c
        :pswitch_1a
        :pswitch_3d
        :pswitch_24
        :pswitch_1f
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_38
    .end packed-switch
.end method

.method public responsesParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1320
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    .line 1321
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    .line 1322
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 1323
    :cond_11
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1b

    .line 1324
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 1326
    :cond_1b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1328
    :cond_1f
    return-void
.end method

.method setTimeRelatedValues(Landroid/content/ContentValues;JJI)V
    .registers 20
    .parameter "cv"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "allDayEvent"

    .prologue
    .line 352
    const-wide/16 v7, 0x0

    cmp-long v7, p2, v7

    if-gez v7, :cond_7

    .line 397
    :goto_6
    return-void

    .line 355
    :cond_7
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-gez v7, :cond_12

    const-wide/32 v7, 0x1b7740

    add-long p4, p2, v7

    .line 358
    :cond_12
    if-eqz p6, :cond_43

    .line 359
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v7

    move-wide v0, p2

    invoke-static {v0, v1, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p2

    .line 360
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v7

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p4

    .line 361
    const-string v7, "eventTimezone"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, originalTimeZone:Ljava/lang/String;
    const-string v7, "sync_data1"

    invoke-virtual {p1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v7, "eventTimezone"

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v6           #originalTimeZone:Ljava/lang/String;
    :cond_43
    const-string v7, "originalInstanceTime"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_96

    const-string v7, "originalAllDay"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 370
    const-string v7, "originalAllDay"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 371
    .local v2, ade:Ljava/lang/Integer;
    if-eqz v2, :cond_96

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_96

    .line 372
    const-string v7, "originalInstanceTime"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 373
    .local v4, exceptionTime:J
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100()Ljava/util/TimeZone;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 374
    .local v3, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 375
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 376
    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 377
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 378
    const-string v7, "originalInstanceTime"

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 383
    .end local v2           #ade:Ljava/lang/Integer;
    .end local v3           #cal:Ljava/util/GregorianCalendar;
    .end local v4           #exceptionTime:J
    :cond_96
    const-string v7, "dtstart"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 385
    const-string v7, "rrule"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f5

    .line 386
    if-eqz p6, :cond_cf

    .line 387
    const-string v7, "duration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "P"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, p4, p2

    const-wide/32 v11, 0x5265c00

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "D"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 390
    :cond_cf
    const-string v7, "duration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "P"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, p4, p2

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "M"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 394
    :cond_f5
    const-string v7, "dtend"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    const-string v7, "lastDate"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_6
.end method

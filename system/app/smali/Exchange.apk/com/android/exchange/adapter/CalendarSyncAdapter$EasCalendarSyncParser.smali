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
.method public constructor <init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/CalendarSyncAdapter;Z)V
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
    .line 598
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    .line 599
    invoke-direct {p0, p2, p3, p4}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V

    .line 584
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 588
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    .line 600
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 601
    return-void
.end method

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
    .line 591
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    .line 592
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 584
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 588
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    .line 593
    const-string v0, "CalendarParser"

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setLoggingTag(Ljava/lang/String;)V

    .line 594
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 595
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

    .line 608
    if-nez p4, :cond_5

    if-eqz p5, :cond_3d

    .line 609
    :cond_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 610
    .local v0, attendeeCv:Landroid/content/ContentValues;
    if-eqz p4, :cond_11

    .line 611
    const-string v1, "attendeeName"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_11
    if-eqz p5, :cond_18

    .line 614
    const-string v1, "attendeeEmail"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_18
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v1, "attendeeType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v1, "attendeeStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_3e

    .line 620
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    .line 625
    .end local v0           #attendeeCv:Landroid/content/ContentValues;
    :cond_3d
    :goto_3d
    return-void

    .line 622
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
    .line 1535
    :goto_0
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    .line 1536
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_1a

    .line 1541
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1538
    :pswitch_12
    const/16 v0, 0x12b

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipParser(I)V

    goto :goto_0

    .line 1544
    :cond_18
    return-void

    .line 1536
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

    .line 1575
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1576
    .local v0, cv:Landroid/content/ContentValues;
    :goto_9
    const/16 v3, 0x108

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    if-eq v3, v7, :cond_64

    .line 1577
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v3, :sswitch_data_6e

    .line 1618
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_9

    .line 1579
    :sswitch_1a
    const-string v3, "attendeeEmail"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1582
    :sswitch_24
    const-string v3, "attendeeName"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1594
    :sswitch_2e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v1

    .line 1595
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

    .line 1605
    .end local v1           #status:I
    :sswitch_4e
    const/4 v2, 0x0

    .line 1607
    .local v2, type:I
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    packed-switch v3, :pswitch_data_80

    .line 1615
    :goto_56
    const-string v3, "attendeeType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    .line 1609
    :pswitch_60
    const/4 v2, 0x1

    .line 1610
    goto :goto_56

    .line 1612
    :pswitch_62
    const/4 v2, 0x2

    goto :goto_56

    .line 1621
    .end local v2           #type:I
    :cond_64
    const-string v3, "attendeeRelationship"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1622
    return-object v0

    .line 1577
    :sswitch_data_6e
    .sparse-switch
        0x109 -> :sswitch_1a
        0x10a -> :sswitch_24
        0x129 -> :sswitch_2e
        0x12a -> :sswitch_4e
    .end sparse-switch

    .line 1607
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
    .line 1548
    const/4 v0, 0x0

    .line 1549
    .local v0, attendeeCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1550
    .local v1, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6
    :goto_6
    const/16 v3, 0x107

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_26

    .line 1551
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v3, :pswitch_data_28

    .line 1567
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_6

    .line 1553
    :pswitch_18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Landroid/content/ContentValues;

    move-result-object v2

    .line 1558
    .local v2, cv:Landroid/content/ContentValues;
    add-int/lit8 v0, v0, 0x1

    .line 1562
    const/16 v3, 0x33

    if-gt v0, v3, :cond_6

    .line 1563
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1570
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_26
    return-object v1

    .line 1551
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
    .line 1626
    const/4 v0, 0x0

    .line 1627
    .local v0, body:Ljava/lang/String;
    :goto_1
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    .line 1628
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_26

    .line 1633
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_1

    .line 1630
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1631
    goto :goto_1

    .line 1638
    :cond_18
    if-nez v0, :cond_1d

    .line 1639
    const-string v1, ""

    .line 1641
    :goto_1c
    return-object v1

    :cond_1d
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 1628
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
    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1514
    .local v0, categories:Ljava/lang/StringBuilder;
    :goto_5
    const/16 v1, 0x10e

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    .line 1515
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_2a

    .line 1525
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_5

    .line 1521
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1528
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1515
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
    .line 1475
    const/4 v0, 0x0

    .line 1476
    .local v0, visibility:I
    packed-switch p1, :pswitch_data_e

    .line 1494
    :goto_4
    return v0

    .line 1479
    :pswitch_5
    const/4 v0, 0x0

    .line 1480
    goto :goto_4

    .line 1483
    :pswitch_7
    const/4 v0, 0x3

    .line 1484
    goto :goto_4

    .line 1487
    :pswitch_9
    const/4 v0, 0x2

    .line 1488
    goto :goto_4

    .line 1491
    :pswitch_b
    const/4 v0, 0x1

    goto :goto_4

    .line 1476
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
    .registers 27
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
    .line 1304
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1305
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

    .line 1315
    const-string v2, "organizer"

    const-string v4, "organizer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v2, "title"

    const-string v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string v2, "description"

    const-string v4, "description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v2, "originalAllDay"

    const-string v4, "allDay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1319
    const-string v2, "eventLocation"

    const-string v4, "eventLocation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string v2, "accessLevel"

    const-string v4, "accessLevel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v2, "eventTimezone"

    const-string v4, "eventTimezone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const/4 v14, 0x0

    .line 1336
    .local v14, hasAttendeeData:Z
    const/4 v8, 0x0

    .line 1340
    .local v8, allDayEvent:I
    const-string v2, "original_sync_id"

    const-string v4, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    const-string v13, "_noStartTime"

    .line 1343
    .local v13, exceptionStartTime:Ljava/lang/String;
    :cond_82
    :goto_82
    const/16 v2, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_149

    .line 1344
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v2, :sswitch_data_202

    .line 1410
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_82

    .line 1346
    :sswitch_98
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attachmentsParser()V

    goto :goto_82

    .line 1349
    :sswitch_9c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 1350
    const-string v2, "originalInstanceTime"

    invoke-static {v13}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_82

    .line 1354
    :sswitch_ae
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_82

    .line 1355
    const-string v2, "eventStatus"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_82

    .line 1359
    :sswitch_c0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v8

    .line 1360
    const-string v2, "allDay"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_82

    .line 1363
    :sswitch_ce
    const-string v2, "description"

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 1366
    :sswitch_d8
    const-string v2, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 1369
    :sswitch_e2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p6

    .line 1370
    goto :goto_82

    .line 1372
    :sswitch_eb
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p8

    .line 1373
    goto :goto_82

    .line 1375
    :sswitch_f4
    const-string v2, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 1378
    :sswitch_fe
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v16

    .line 1379
    .local v16, rrule:Ljava/lang/String;
    if-eqz v16, :cond_82

    .line 1380
    const-string v2, "rrule"

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1384
    .end local v16           #rrule:Ljava/lang/String;
    :sswitch_10d
    const-string v2, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 1388
    :sswitch_118
    const-string v2, "accessLevel"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->encodeVisibility(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_82

    .line 1391
    :sswitch_12d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result p5

    .line 1392
    const-string v2, "availabilityStatus"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_82

    .line 1398
    :sswitch_13c
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Ljava/util/ArrayList;

    move-result-object p3

    .line 1399
    const/4 v14, 0x1

    .line 1400
    goto/16 :goto_82

    .line 1413
    :cond_149
    if-eqz v14, :cond_18b

    .line 1415
    const-string v2, "hasAttendeeData"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1428
    :goto_155
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

    .line 1432
    invoke-virtual/range {v2 .. v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 1435
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_196

    .line 1472
    :cond_18a
    :goto_18a
    return-void

    .line 1424
    :cond_18b
    const-string v2, "hasAttendeeData"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_155

    .line 1439
    :cond_196
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1440
    .local v12, exceptionStart:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newException(Landroid/content/ContentValues;)V

    .line 1443
    const/4 v11, 0x0

    .line 1444
    .local v11, attendeesRedacted:Z
    if-eqz p3, :cond_1e7

    .line 1445
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1a6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 1448
    .local v9, attValues:Landroid/content/ContentValues;
    const-string v2, "attendeeEmail"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1454
    .local v10, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    .line 1455
    const-string v2, "attendeeStatus"

    invoke-static/range {p5 .. p5}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1457
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_1a6

    .line 1458
    :cond_1d7
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->size()I

    move-result v2

    const/16 v4, 0x1f4

    if-ge v2, v4, :cond_1e5

    .line 1459
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_1a6

    .line 1461
    :cond_1e5
    const/4 v11, 0x1

    goto :goto_1a6

    .line 1466
    .end local v9           #attValues:Landroid/content/ContentValues;
    .end local v10           #attendeeEmail:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_1e7
    if-lez p4, :cond_1f0

    .line 1467
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(II)V

    .line 1469
    :cond_1f0
    if-eqz v11, :cond_18a

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Attendees redacted in this exception"

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_18a

    .line 1344
    :sswitch_data_202
    .sparse-switch
        0x106 -> :sswitch_c0
        0x107 -> :sswitch_13c
        0x10b -> :sswitch_d8
        0x10d -> :sswitch_12d
        0x112 -> :sswitch_eb
        0x115 -> :sswitch_ae
        0x116 -> :sswitch_9c
        0x117 -> :sswitch_f4
        0x11b -> :sswitch_fe
        0x125 -> :sswitch_118
        0x126 -> :sswitch_10d
        0x127 -> :sswitch_e2
        0x12c -> :sswitch_98
        0x44a -> :sswitch_ce
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
    .line 1500
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_0
    const/16 v0, 0x114

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    .line 1501
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_18

    .line 1507
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1503
    :pswitch_12
    invoke-direct/range {p0 .. p9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->exceptionParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto :goto_0

    .line 1510
    :cond_16
    return-void

    .line 1501
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
    .line 1668
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1669
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$600()[Ljava/lang/String;

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
    .line 1661
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$600()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_sync_id=? AND original_sync_id ISNULL AND calendar_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

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
    .line 1208
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_57

    .line 1209
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

    .line 1211
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

    .line 1212
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 1215
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

    .line 1217
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_57
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V
    .registers 66
    .parameter "ops"
    .parameter "serverId"
    .parameter "update"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 729
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

    .line 736
    const-string v4, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v4, "hasAttendeeData"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 739
    const-string v4, "sync_data2"

    const-string v5, "0"

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const/16 v26, 0x0

    .line 742
    .local v26, allDayEvent:I
    const/4 v8, 0x0

    .line 743
    .local v8, organizerName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 744
    .local v9, organizerEmail:Ljava/lang/String;
    const/16 v47, -0x1

    .line 745
    .local v47, eventOffset:I
    const/16 v44, -0x1

    .line 746
    .local v44, deleteOffset:I
    const/4 v15, 0x1

    .line 751
    .local v15, busyStatus:I
    const/16 v57, 0x0

    .line 753
    .local v57, responseTypeStatus:I
    const/16 v53, 0x0

    .line 755
    .local v53, is2010_SERVR:Z
    const/16 v54, 0x0

    .line 757
    .local v54, myAttendeeStatus:I
    const/16 v48, 0x1

    .line 758
    .local v48, firstTag:Z
    const-wide/16 v6, -0x1

    .line 759
    .local v6, eventId:J
    const-wide/16 v16, -0x1

    .line 760
    .local v16, startTime:J
    const-wide/16 v18, -0x1

    .line 761
    .local v18, endTime:J
    const/16 v61, 0x0

    .line 764
    .local v61, timeZone:Ljava/util/TimeZone;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v13, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v14, -0x1

    .line 766
    .local v14, reminderMins:I
    const/16 v46, 0x0

    .line 767
    .local v46, dtStamp:Ljava/lang/String;
    const/16 v56, 0x0

    .line 769
    .local v56, organizerAdded:Z
    :cond_51
    :goto_51
    const/16 v4, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2ce

    .line 770
    if-eqz p3, :cond_11d

    if-eqz v48, :cond_11d

    .line 772
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 773
    .local v40, c:Landroid/database/Cursor;
    const-wide/16 v51, -0x1

    .line 775
    .local v51, id:J
    if-eqz v40, :cond_79

    :try_start_6c
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 776
    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_91

    move-result-wide v51

    .line 779
    :cond_79
    if-eqz v40, :cond_7e

    .line 780
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_7e
    const-wide/16 v4, 0x0

    cmp-long v4, v51, v4

    if-lez v4, :cond_100

    .line 785
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v5, 0x111

    if-ne v4, v5, :cond_98

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v46

    .line 787
    goto :goto_51

    .line 779
    :catchall_91
    move-exception v4

    if-eqz v40, :cond_97

    .line 780
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 779
    :cond_97
    throw v4

    .line 788
    :cond_98
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v5, 0x107

    if-ne v4, v5, :cond_db

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    .line 802
    new-instance v4, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterAttendees:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v10, "event_id=? AND attendeeRelationship!=2"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 805
    move-wide/from16 v6, v51

    .line 830
    .end local v40           #c:Landroid/database/Cursor;
    .end local v51           #id:J
    :cond_cd
    :goto_cd
    const/16 v48, 0x0

    .line 831
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v4, :sswitch_data_5fc

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto/16 :goto_51

    .line 809
    .restart local v40       #c:Landroid/database/Cursor;
    .restart local v51       #id:J
    :cond_db
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "Changing (delete/add) event "

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p1

    move-wide/from16 v1, v51

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newDelete(JLjava/lang/String;)I

    move-result v44

    .line 815
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v47

    goto :goto_cd

    .line 820
    :cond_100
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v47

    .line 821
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

    goto :goto_cd

    .line 823
    .end local v40           #c:Landroid/database/Cursor;
    .end local v51           #id:J
    :cond_11d
    if-eqz v48, :cond_cd

    .line 828
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v47

    goto :goto_cd

    .line 833
    :sswitch_12a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v26

    .line 834
    if-eqz v26, :cond_1aa

    if-eqz v61, :cond_1aa

    .line 839
    new-instance v41, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 840
    .local v41, cal:Ljava/util/GregorianCalendar;
    move-object/from16 v0, v41

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 841
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "All-day event arrived in: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v61 .. v61}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 842
    const/16 v4, 0xb

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-nez v4, :cond_17e

    const/16 v4, 0xc

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_1aa

    .line 844
    :cond_17e
    const/16 v26, 0x0

    .line 845
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

    .line 848
    .end local v41           #cal:Ljava/util/GregorianCalendar;
    :cond_1aa
    const-string v4, "allDay"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_51

    .line 851
    :sswitch_1b5
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attachmentsParser()V

    goto/16 :goto_51

    .line 856
    :sswitch_1ba
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Ljava/util/ArrayList;

    move-result-object v13

    .line 857
    goto/16 :goto_51

    .line 859
    :sswitch_1c4
    const-string v4, "description"

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 862
    :sswitch_1cf
    const-string v4, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 865
    :sswitch_1da
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v61

    .line 866
    if-nez v61, :cond_1f0

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v61

    .line 869
    :cond_1f0
    const-string v4, "eventTimezone"

    invoke-virtual/range {v61 .. v61}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 872
    :sswitch_1fb
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v16

    .line 873
    goto/16 :goto_51

    .line 875
    :sswitch_205
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v18

    .line 876
    goto/16 :goto_51

    :sswitch_20f
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 881
    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 882
    const/16 v56, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 883
    invoke-direct/range {v10 .. v19}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto/16 :goto_51

    .line 887
    :sswitch_221
    const-string v4, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 890
    :sswitch_22c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v58

    .line 891
    .local v58, rrule:Ljava/lang/String;
    if-eqz v58, :cond_51

    .line 892
    const-string v4, "rrule"

    move-object/from16 v0, v58

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 896
    .end local v58           #rrule:Ljava/lang/String;
    :sswitch_23b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 897
    const-string v4, "organizer"

    invoke-virtual {v12, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 900
    :sswitch_246
    const-string v4, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 904
    :sswitch_251
    const-string v4, "accessLevel"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->encodeVisibility(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_51

    .line 907
    :sswitch_266
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 908
    goto/16 :goto_51

    .line 910
    :sswitch_26c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueIntForReminder()I

    move-result v14

    .line 911
    const/4 v4, -0x1

    if-eq v14, v4, :cond_51

    .line 913
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(I)V

    .line 914
    const-string v4, "hasAlarm"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_51

    .line 922
    :sswitch_284
    const-string v4, "sync_data2"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 925
    :sswitch_28f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v46

    .line 926
    goto/16 :goto_51

    .line 928
    :sswitch_295
    const-string v4, "meeting_status"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 936
    :sswitch_2a2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v15

    .line 937
    const-string v4, "availabilityStatus"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_51

    .line 940
    :sswitch_2b1
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->categoriesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;

    move-result-object v42

    .line 941
    .local v42, categories:Ljava/lang/String;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_51

    .line 942
    const-string v4, "categories"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    .line 948
    .end local v42           #categories:Ljava/lang/String;
    :sswitch_2c6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v57

    .line 950
    const/16 v53, 0x1

    .line 951
    goto/16 :goto_51

    :cond_2ce
    move-object/from16 v20, p0

    move-object/from16 v21, v12

    move-wide/from16 v22, v16

    move-wide/from16 v24, v18

    .line 967
    invoke-virtual/range {v20 .. v26}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 970
    if-nez v56, :cond_2e2

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 971
    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 978
    :cond_2e2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    .line 979
    .local v60, selfOrganizer:Z
    const/4 v4, 0x1

    move/from16 v0, v57

    if-ne v0, v4, :cond_2f3

    const/16 v60, 0x1

    .line 981
    :cond_2f3
    const/4 v4, 0x1

    move/from16 v0, v57

    if-ne v0, v4, :cond_37a

    const/16 v54, 0x1

    .line 997
    :goto_2fa
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v55

    .line 998
    .local v55, numAttendees:I
    const/16 v4, 0x32

    move/from16 v0, v55

    if-le v0, v4, :cond_3b8

    .line 1008
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_3a2

    .line 1009
    const-string v4, "attendeesRedacted"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    if-eqz v60, :cond_31e

    .line 1011
    const-string v4, "upsyncProhibited"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_31e
    :goto_31e
    if-eqz v60, :cond_327

    .line 1021
    const-string v9, "upload_disallowed@uploadisdisallowed.aaa"

    .line 1022
    const-string v4, "organizer"

    invoke-virtual {v12, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_327
    const-string v4, "hasAttendeeData"

    const-string v5, "0"

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Maximum number of attendees exceeded; redacting"

    aput-object v11, v5, v10

    invoke-virtual {v4, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1160
    :cond_33d
    :goto_33d
    if-ltz v47, :cond_36e

    .line 1162
    if-eqz v46, :cond_34a

    .line 1163
    const-string v4, "dtstamp"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :cond_34a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_589

    .line 1176
    new-instance v4, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterEvents:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-virtual {v0, v1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1204
    :cond_36e
    :goto_36e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->addSeparatorOperation(Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 1205
    return-void

    .line 981
    .end local v55           #numAttendees:I
    :cond_37a
    const/4 v4, 0x2

    move/from16 v0, v57

    if-ne v0, v4, :cond_383

    const/16 v54, 0x4

    goto/16 :goto_2fa

    :cond_383
    const/4 v4, 0x3

    move/from16 v0, v57

    if-ne v0, v4, :cond_38c

    const/16 v54, 0x1

    goto/16 :goto_2fa

    :cond_38c
    const/4 v4, 0x4

    move/from16 v0, v57

    if-ne v0, v4, :cond_395

    const/16 v54, 0x2

    goto/16 :goto_2fa

    :cond_395
    const/4 v4, 0x5

    move/from16 v0, v57

    if-ne v0, v4, :cond_39e

    const/16 v54, 0x3

    goto/16 :goto_2fa

    :cond_39e
    const/16 v54, 0x0

    goto/16 :goto_2fa

    .line 1014
    .restart local v55       #numAttendees:I
    :cond_3a2
    const-string v4, "attendeesRedacted"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1015
    if-eqz v60, :cond_31e

    .line 1016
    const-string v4, "upsyncProhibited"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_31e

    .line 1027
    :cond_3b8
    if-lez v55, :cond_33d

    .line 1028
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    .local v59, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .local v50, i$:Ljava/util/Iterator;
    :goto_3c3
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_545

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/ContentValues;

    .line 1030
    .local v33, attendee:Landroid/content/ContentValues;
    const-string v4, "attendeeEmail"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1031
    .local v34, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, v59

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string v4, "\\"

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    const/4 v4, -0x1

    move/from16 v0, v57

    if-eq v0, v4, :cond_433

    if-eqz v53, :cond_433

    .line 1051
    move/from16 v38, v54

    .line 1052
    .local v38, attendeeStatusFromBusy:I
    const-string v4, "jsl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "jsl attendeeStatusFromBusy 1 = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_408
    if-eqz v60, :cond_45e

    .line 1077
    if-eqz v9, :cond_414

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_425

    .line 1079
    :cond_414
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_452

    .line 1080
    const-string v4, "userAttendeeStatus"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_425
    :goto_425
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_53c

    .line 1141
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    goto :goto_3c3

    .line 1057
    .end local v38           #attendeeStatusFromBusy:I
    :cond_433
    invoke-static {v15}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v38

    .line 1059
    .restart local v38       #attendeeStatusFromBusy:I
    const-string v4, "jsl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "jsl attendeeStatusFromBusy 3 = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_408

    .line 1083
    :cond_452
    const-string v4, "userAttendeeStatus"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_425

    .line 1096
    :cond_45e
    const-string v4, "@"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4fd

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    .line 1099
    .local v31, atSignIndex1:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 1100
    .local v30, accountUserName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    add-int/lit8 v5, v31, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 1101
    .local v29, accountServerName:Ljava/lang/String;
    const/16 v4, 0x40

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    .line 1102
    .local v32, atSignIndex2:I
    const/4 v4, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 1103
    .local v39, attendeeUserName:Ljava/lang/String;
    add-int/lit8 v4, v32, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v37

    .line 1105
    .local v37, attendeeServerName:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4fd

    .line 1106
    const-string v45, "\\."

    .line 1111
    .local v45, delimiter:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1112
    .local v27, accountServer:[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    .line 1113
    .local v28, accountServerLen:I
    move-object/from16 v0, v37

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 1114
    .local v35, attendeeServer:[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v36, v0

    .line 1116
    .local v36, attendeeServerLen:I
    const/4 v4, 0x2

    move/from16 v0, v28

    if-lt v0, v4, :cond_4fd

    const/4 v4, 0x2

    move/from16 v0, v36

    if-lt v0, v4, :cond_4fd

    .line 1117
    add-int/lit8 v4, v28, -0x1

    aget-object v4, v27, v4

    add-int/lit8 v5, v36, -0x1

    aget-object v5, v35, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4fd

    .line 1119
    add-int/lit8 v4, v28, -0x2

    aget-object v4, v27, v4

    add-int/lit8 v5, v36, -0x2

    aget-object v5, v35, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4fd

    .line 1121
    const-string v4, "attendeeStatus"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1126
    .end local v27           #accountServer:[Ljava/lang/String;
    .end local v28           #accountServerLen:I
    .end local v29           #accountServerName:Ljava/lang/String;
    .end local v30           #accountUserName:Ljava/lang/String;
    .end local v31           #atSignIndex1:I
    .end local v32           #atSignIndex2:I
    .end local v35           #attendeeServer:[Ljava/lang/String;
    .end local v36           #attendeeServerLen:I
    .end local v37           #attendeeServerName:Ljava/lang/String;
    .end local v39           #attendeeUserName:Ljava/lang/String;
    .end local v45           #delimiter:Ljava/lang/String;
    :cond_4fd
    if-eqz v9, :cond_507

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_425

    .line 1128
    :cond_507
    const-string v4, "jsl"

    const-string v5, "add jsl selforganaizer 1"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_528

    .line 1130
    const-string v4, "jsl"

    const-string v5, "add jsl selforganaizer2"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const-string v4, "userAttendeeStatus"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_425

    .line 1134
    :cond_528
    const-string v4, "jsl"

    const-string v5, "add jsl selforganaizer3"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string v4, "userAttendeeStatus"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_425

    .line 1143
    :cond_53c
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto/16 :goto_3c3

    .line 1146
    .end local v33           #attendee:Landroid/content/ContentValues;
    .end local v34           #attendeeEmail:Ljava/lang/String;
    .end local v38           #attendeeStatusFromBusy:I
    :cond_545
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_56a

    .line 1147
    const-string v4, "attendees"

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v4, "attendeesRedacted"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v4, "upsyncProhibited"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33d

    .line 1151
    :cond_56a
    const-string v4, "attendees"

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1154
    const-string v4, "attendeesRedacted"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1155
    const-string v4, "upsyncProhibited"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_33d

    .line 1184
    .end local v50           #i$:Ljava/util/Iterator;
    .end local v59           #sb:Ljava/lang/StringBuilder;
    :cond_589
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    sub-int v43, v4, v47

    .line 1185
    .local v43, cnt:I
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

    move/from16 v0, v43

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

    .line 1186
    const/16 v49, 0x0

    .local v49, i:I
    :goto_5bc
    move/from16 v0, v49

    move/from16 v1, v43

    if-ge v0, v1, :cond_5cc

    .line 1187
    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 1186
    add-int/lit8 v49, v49, 0x1

    goto :goto_5bc

    .line 1189
    :cond_5cc
    move/from16 v0, v47

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1193
    if-ltz v44, :cond_36e

    .line 1195
    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 1197
    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 1198
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

    .line 1199
    move/from16 v0, v44

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    goto/16 :goto_36e

    .line 831
    :sswitch_data_5fc
    .sparse-switch
        0x105 -> :sswitch_1da
        0x106 -> :sswitch_12a
        0x107 -> :sswitch_1ba
        0x10b -> :sswitch_1cf
        0x10d -> :sswitch_2a2
        0x10e -> :sswitch_2b1
        0x111 -> :sswitch_28f
        0x112 -> :sswitch_205
        0x114 -> :sswitch_20f
        0x117 -> :sswitch_221
        0x118 -> :sswitch_295
        0x119 -> :sswitch_23b
        0x11a -> :sswitch_266
        0x11b -> :sswitch_22c
        0x124 -> :sswitch_26c
        0x125 -> :sswitch_251
        0x126 -> :sswitch_246
        0x127 -> :sswitch_1fb
        0x128 -> :sswitch_284
        0x12c -> :sswitch_1b5
        0x136 -> :sswitch_2c6
        0x44a -> :sswitch_1c4
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
    .line 1645
    const/4 v0, 0x0

    .line 1646
    .local v0, serverId:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    .line 1647
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v1, :sswitch_data_1e

    .line 1655
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_1

    .line 1649
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1650
    goto :goto_1

    .line 1652
    :sswitch_17
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1658
    :cond_1c
    return-void

    .line 1647
    nop

    :sswitch_data_1e
    .sparse-switch
        0xd -> :sswitch_12
        0x1d -> :sswitch_17
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1912
    .line 1914
    const/4 v0, -0x1

    .line 1915
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object v2, v1

    .line 1916
    :cond_a
    :goto_a
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_46

    .line 1917
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v4, :pswitch_data_c2

    .line 1931
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_a

    .line 1919
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 1922
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1925
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v0

    .line 1926
    if-eq v0, v8, :cond_a

    .line 1927
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to add event failed with status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_a

    .line 1935
    :cond_46
    if-nez v1, :cond_49

    .line 1967
    :goto_48
    return-void

    .line 1937
    :cond_49
    if-nez v2, :cond_5e

    .line 1939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAIL:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1942
    :cond_5e
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1944
    :try_start_62
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1945
    const-string v0, "_sync_id"

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    const-string v0, "sync_data2"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1958
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    new-instance v7, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v8, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterEvents:Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 1962
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " was given serverId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_62 .. :try_end_b9} :catchall_bd

    .line 1965
    :cond_b9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_48

    :catchall_bd
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1917
    :pswitch_data_c2
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

    .line 1709
    const/4 v0, 0x0

    .line 1710
    .local v0, serverId:Ljava/lang/String;
    :goto_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_38

    .line 1711
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v1, :sswitch_data_3a

    .line 1720
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_2

    .line 1713
    :sswitch_14
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1714
    goto :goto_2

    .line 1716
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

    .line 1717
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1723
    :cond_38
    return-void

    .line 1711
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
    const/4 v0, 0x0

    .line 1970
    move-object v1, v0

    .line 1972
    :goto_2
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1e

    .line 1973
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v2, :pswitch_data_4a

    .line 1981
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_2

    .line 1975
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1978
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1984
    :cond_1e
    if-eqz v1, :cond_48

    if-eqz v0, :cond_48

    .line 1985
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " failed with status: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1987
    :cond_48
    return-void

    .line 1973
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
    .line 1728
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_45

    .line 1729
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_19

    .line 1730
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1731
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1732
    :cond_19
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_25

    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_30

    .line 1733
    :cond_25
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->deleteParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1734
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1735
    :cond_30
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_41

    .line 1736
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->changeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1737
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1739
    :cond_41
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1750
    :cond_45
    return-void
.end method

.method public commit()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1808
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Calendar SyncKey saved as: "

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1819
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    new-instance v1, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    sget-object v2, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v4, "com.android.exchange"

    invoke-static {v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation;)V

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 1827
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$900(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_43
    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1830
    :try_start_53
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    const/16 v3, 0x20

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5d} :catch_199

    move-result-object v0

    .line 1836
    if-eqz v0, :cond_43

    .line 1837
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_43

    .line 1844
    :cond_6a
    :try_start_6a
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    const-string v2, "com.android.calendar"

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->safeExecute(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    #setter for: Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;
    invoke-static {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->access$1002(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;[Landroid/content/ContentProviderResult;)[Landroid/content/ContentProviderResult;
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_79} :catch_d4

    .line 1849
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    if-eqz v0, :cond_198

    .line 1851
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dd

    .line 1852
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1855
    const-string v0, "dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1856
    const-string v0, "sync_data8"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1858
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1861
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-static {v3, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_ae

    .line 1845
    :catch_d4
    move-exception v0

    .line 1846
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception caught; will retry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1869
    :cond_dd
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_119

    .line 1870
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1873
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v4, "com.android.exchange"

    invoke-static {v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_f3

    .line 1882
    :cond_119
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedEventsIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$800(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_178

    .line 1883
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedEventsIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$800(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_178

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1886
    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1888
    :try_start_13f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 1889
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Deleting "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1890
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-static {v3, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16f
    .catchall {:try_start_13f .. :try_end_16f} :catchall_173

    .line 1897
    :cond_16f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_12f

    :catchall_173
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1905
    :cond_178
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_182
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_198

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1906
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v0}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_182

    .line 1909
    :cond_198
    return-void

    .line 1832
    :catch_199
    move-exception v0

    goto/16 :goto_43
.end method

.method public deleteParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .registers 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1674
    :goto_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_20

    .line 1675
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_22

    .line 1694
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1678
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1679
    .local v0, serverId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedEventsIdList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$800(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1697
    .end local v0           #serverId:Ljava/lang/String;
    :cond_20
    return-void

    .line 1675
    nop

    :pswitch_data_22
    .packed-switch 0xd
        :pswitch_12
    .end packed-switch
.end method

.method isValidEventValues(Landroid/content/ContentValues;)Z
    .registers 7
    .parameter "cv"

    .prologue
    const/4 v3, 0x0

    .line 1220
    const-string v4, "originalInstanceTime"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 1222
    .local v2, isException:Z
    const-string v4, "dtstart"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1223
    const-string v4, "DTSTART missing"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1252
    :cond_14
    :goto_14
    return v3

    .line 1227
    :cond_15
    if-nez v2, :cond_25

    const-string v4, "sync_data2"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 1228
    const-string v4, "_SYNC_DATA missing"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_14

    .line 1231
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

    .line 1233
    const-string v4, "DTEND/DURATION missing"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_14

    .line 1236
    :cond_3d
    if-eqz v2, :cond_4d

    const-string v4, "dtend"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 1237
    const-string v4, "Exception missing DTEND"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_14

    .line 1241
    :cond_4d
    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1242
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1243
    .local v1, duration:Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 1245
    const-string v4, "allDay"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1246
    const-string v4, "allDay"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1247
    .local v0, ade:Ljava/lang/Integer;
    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_7b

    const-string v4, "D"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1252
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
    .line 1257
    const/4 v0, -0x1

    .line 1258
    .local v0, type:I
    const/4 v1, -0x1

    .line 1259
    .local v1, occurrences:I
    const/4 v2, -0x1

    .line 1260
    .local v2, interval:I
    const/4 v3, -0x1

    .line 1261
    .local v3, dow:I
    const/4 v4, -0x1

    .line 1262
    .local v4, dom:I
    const/4 v5, -0x1

    .line 1263
    .local v5, wom:I
    const/4 v6, -0x1

    .line 1264
    .local v6, moy:I
    const/4 v7, 0x0

    .line 1266
    .local v7, until:Ljava/lang/String;
    :goto_8
    const/16 v8, 0x11b

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_42

    .line 1267
    iget v8, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v8, :pswitch_data_48

    .line 1293
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_8

    .line 1269
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v0

    .line 1270
    goto :goto_8

    .line 1272
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v2

    .line 1273
    goto :goto_8

    .line 1275
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v1

    .line 1276
    goto :goto_8

    .line 1278
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    .line 1279
    goto :goto_8

    .line 1281
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v4

    .line 1282
    goto :goto_8

    .line 1284
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v5

    .line 1285
    goto :goto_8

    .line 1287
    :pswitch_38
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    .line 1288
    goto :goto_8

    .line 1290
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1291
    goto :goto_8

    .line 1297
    :cond_42
    invoke-static/range {v0 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1267
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
    .line 1992
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    .line 1993
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    .line 1994
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 1995
    :cond_11
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1b

    .line 1996
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 1998
    :cond_1b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 2000
    :cond_1f
    return-void
.end method

.method setTimeRelatedValues(Landroid/content/ContentValues;JJI)V
    .registers 23
    .parameter "cv"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "allDayEvent"

    .prologue
    .line 648
    const-wide/16 v10, 0x0

    cmp-long v10, p2, v10

    if-gez v10, :cond_7

    .line 724
    :goto_6
    return-void

    .line 654
    :cond_7
    const-wide/16 v10, 0x0

    cmp-long v10, p4, v10

    if-gez v10, :cond_12

    .line 655
    const-wide/32 v10, 0x1b7740

    add-long p4, p2, v10

    .line 659
    :cond_12
    if-eqz p6, :cond_4e

    .line 660
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v10}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p2

    .line 661
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v10}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p4

    .line 662
    const-string v10, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 664
    .local v9, originalTimeZone:Ljava/lang/String;
    const-string v10, "sync_data1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v10, "eventTimezone"

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .end local v9           #originalTimeZone:Ljava/lang/String;
    :cond_4e
    const-string v10, "originalInstanceTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_130

    const-string v10, "originalAllDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_130

    .line 674
    const-string v10, "originalAllDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 675
    .local v2, ade:Ljava/lang/Integer;
    if-eqz v2, :cond_130

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_130

    .line 676
    const-string v10, "originalInstanceTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 677
    .local v4, exceptionTime:J
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100()Ljava/util/TimeZone;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 680
    .local v3, cal:Ljava/util/GregorianCalendar;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "orginal instance time ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 681
    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 682
    const/16 v10, 0xb

    invoke-virtual {v3, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    if-nez v10, :cond_c0

    const/16 v10, 0xc

    invoke-virtual {v3, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    if-nez v10, :cond_c0

    const/16 v10, 0xd

    invoke-virtual {v3, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    if-eqz v10, :cond_ff

    .line 686
    :cond_c0
    const-string v10, "sync_data1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 687
    .local v8, orginalTimezone2:Ljava/lang/String;
    if-nez v8, :cond_d2

    .line 688
    const-string v10, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 690
    :cond_d2
    if-eqz v8, :cond_16f

    .line 691
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    int-to-long v6, v10

    .line 693
    .local v6, offset:J
    add-long/2addr v4, v6

    .line 694
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "modified orginal instance time ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 695
    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 703
    .end local v6           #offset:J
    .end local v8           #orginalTimezone2:Ljava/lang/String;
    :cond_ff
    :goto_ff
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "time from calendar ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 705
    const-string v10, "originalInstanceTime"

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 710
    .end local v2           #ade:Ljava/lang/Integer;
    .end local v3           #cal:Ljava/util/GregorianCalendar;
    .end local v4           #exceptionTime:J
    :cond_130
    const-string v10, "dtstart"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 713
    const-string v10, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1ab

    .line 714
    if-eqz p6, :cond_183

    .line 715
    const-string v10, "duration"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "P"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, p4, p2

    const-wide/32 v14, 0x5265c00

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "D"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 697
    .restart local v2       #ade:Ljava/lang/Integer;
    .restart local v3       #cal:Ljava/util/GregorianCalendar;
    .restart local v4       #exceptionTime:J
    .restart local v8       #orginalTimezone2:Ljava/lang/String;
    :cond_16f
    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Ljava/util/GregorianCalendar;->set(II)V

    .line 698
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Ljava/util/GregorianCalendar;->set(II)V

    .line 699
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_ff

    .line 717
    .end local v2           #ade:Ljava/lang/Integer;
    .end local v3           #cal:Ljava/util/GregorianCalendar;
    .end local v4           #exceptionTime:J
    .end local v8           #orginalTimezone2:Ljava/lang/String;
    :cond_183
    const-string v10, "duration"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "P"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, p4, p2

    const-wide/32 v14, 0xea60

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "M"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 721
    :cond_1ab
    const-string v10, "dtend"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 722
    const-string v10, "lastDate"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_6
.end method

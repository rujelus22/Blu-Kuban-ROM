.class public Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;
.super Lcom/android/calendar/vcal/pim/VParser;
.source "VCalParser_V10.java"


# static fields
.field private static final mEscAllowedProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEvtPropNameGroup1:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEvtPropNameGroup2:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpecialValueSetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mValueCAT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueCLASS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueRES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueSTAT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ATTACH"

    aput-object v2, v1, v4

    const-string v2, "ATTENDEE"

    aput-object v2, v1, v5

    const-string v2, "DCREATED"

    aput-object v2, v1, v6

    const-string v2, "COMPLETED"

    aput-object v2, v1, v7

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "DUE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DTEND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "EXRULE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "LAST-MODIFIED"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "RNUM"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "PRIORITY"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "RELATED-TO"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "RRULE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "SEQUENCE"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "DTSTART"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "SUMMARY"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "TRANSP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CLASS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "STATUS"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "TZ"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup1:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AALARM"

    aput-object v2, v1, v4

    const-string v2, "CATEGORIES"

    aput-object v2, v1, v5

    const-string v2, "DALARM"

    aput-object v2, v1, v6

    const-string v2, "EXDATE"

    aput-object v2, v1, v7

    const-string v2, "MALARM"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "PALARM"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RDATE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "RESOURCES"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup2:Ljava/util/HashSet;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "APPOINTMENT"

    aput-object v2, v1, v4

    const-string v2, "BUSINESS"

    aput-object v2, v1, v5

    const-string v2, "EDUCATION"

    aput-object v2, v1, v6

    const-string v2, "HOLIDAY"

    aput-object v2, v1, v7

    const-string v2, "MEETING"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "MISCELLANEOUS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PERSONAL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "PHONE CALL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "SICK DAY"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "SPECIAL OCCASION"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TRAVEL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "VACATION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueCAT:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "PUBLIC"

    aput-object v2, v1, v4

    const-string v2, "PRIVATE"

    aput-object v2, v1, v5

    const-string v2, "CONFIDENTIAL"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueCLASS:Ljava/util/HashSet;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CATERING"

    aput-object v2, v1, v4

    const-string v2, "CHAIRS"

    aput-object v2, v1, v5

    const-string v2, "EASEL"

    aput-object v2, v1, v6

    const-string v2, "PROJECTOR"

    aput-object v2, v1, v7

    const-string v2, "VCR"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "VEHICLE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueRES:Ljava/util/HashSet;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ACCEPTED"

    aput-object v2, v1, v4

    const-string v2, "NEEDS ACTION"

    aput-object v2, v1, v5

    const-string v2, "SENT"

    aput-object v2, v1, v6

    const-string v2, "TENTATIVE"

    aput-object v2, v1, v7

    const-string v2, "CONFIRMED"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "DECLINED"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "COMPLETED"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "DELEGATED"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueSTAT:Ljava/util/HashSet;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v4

    const-string v2, "SUMMARY"

    aput-object v2, v1, v5

    const-string v2, "AALARM"

    aput-object v2, v1, v6

    const-string v2, "DALARM"

    aput-object v2, v1, v7

    const-string v2, "MALARM"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "PALARM"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEscAllowedProps:Ljava/util/HashSet;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    .line 70
    sget-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "CATEGORIES"

    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueCAT:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "CLASS"

    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueCLASS:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "RESOURCES"

    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueRES:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "STATUS"

    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mValueSTAT:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/calendar/vcal/pim/VParser;-><init>()V

    .line 78
    return-void
.end method

.method private exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "propName"
    .parameter "str"

    .prologue
    .line 1602
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 1603
    :cond_4
    const/4 p2, 0x0

    .line 1615
    .end local p2
    :cond_5
    :goto_5
    return-object p2

    .line 1604
    .restart local p2
    :cond_6
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    .line 1605
    :cond_16
    const-string p2, ""

    goto :goto_5

    .line 1607
    :cond_19
    sget-object v1, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEscAllowedProps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1610
    const-string v1, "\\\\"

    const-string v2, "\n\r\n"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1611
    .local v0, tmp:Ljava/lang/String;
    const-string v1, "\\;"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1612
    const-string v1, "\\:"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1613
    const-string v1, "\\,"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1614
    const-string v1, "\n\r\n"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 1615
    goto :goto_5
.end method

.method private parseCalentities(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 302
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 304
    .local v1, sum:I
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalentity(I)I

    move-result v0

    .line 305
    if-ne v2, v0, :cond_a

    .line 326
    :goto_9
    return v2

    .line 308
    :cond_a
    add-int/2addr p1, v0

    .line 309
    add-int/2addr v1, v0

    .line 313
    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_15

    .line 314
    add-int/2addr p1, v0

    .line 315
    add-int/2addr v1, v0

    goto :goto_c

    .line 318
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalentity(I)I

    move-result v0

    .line 319
    if-ne v2, v0, :cond_1d

    move v2, v1

    .line 326
    goto :goto_9

    .line 322
    :cond_1d
    add-int/2addr p1, v0

    .line 323
    add-int/2addr v1, v0

    goto :goto_c
.end method

.method private parseCalentity(I)I
    .registers 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 366
    const/4 v0, 0x0

    .line 368
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEvententity(I)I

    move-result v0

    .line 369
    if-eq v1, v0, :cond_a

    move v1, v0

    .line 377
    :cond_9
    :goto_9
    return v1

    .line 373
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseTodoentity(I)I

    move-result v0

    .line 374
    if-eq v1, v0, :cond_9

    move v1, v0

    .line 375
    goto :goto_9
.end method

.method private parseCalprop(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, ret:I
    const-string v2, "DAYLIGHT"

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 336
    if-eq v1, v0, :cond_c

    move v1, v0

    .line 359
    :cond_b
    :goto_b
    return v1

    .line 340
    :cond_c
    const-string v2, "GEO"

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 341
    if-eq v1, v0, :cond_16

    move v1, v0

    .line 342
    goto :goto_b

    .line 345
    :cond_16
    const-string v2, "PRODID"

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 346
    if-eq v1, v0, :cond_20

    move v1, v0

    .line 347
    goto :goto_b

    .line 350
    :cond_20
    const-string v2, "TZ"

    invoke-direct {p0, p1, v2}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 351
    if-eq v1, v0, :cond_2a

    move v1, v0

    .line 352
    goto :goto_b

    .line 355
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop1(I)I

    move-result v0

    .line 356
    if-eq v1, v0, :cond_b

    move v1, v0

    .line 357
    goto :goto_b
.end method

.method private parseCalprop0(ILjava/lang/String;)I
    .registers 10
    .parameter "offset"
    .parameter "propName"

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 385
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    const/4 v1, 0x0

    .line 387
    .local v1, start:I
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 388
    if-ne v4, v0, :cond_c

    .line 429
    :cond_b
    :goto_b
    return v4

    .line 391
    :cond_c
    add-int/2addr p1, v0

    .line 392
    add-int/2addr v2, v0

    .line 393
    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v5, :cond_17

    .line 394
    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v5, p2}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 397
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v0

    .line 398
    if-eq v4, v0, :cond_1f

    .line 399
    add-int/2addr p1, v0

    .line 400
    add-int/2addr v2, v0

    .line 403
    :cond_1f
    const-string v5, ":"

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 404
    if-eq v4, v0, :cond_b

    .line 407
    add-int/2addr p1, v0

    .line 408
    add-int/2addr v2, v0

    .line 410
    move v1, p1

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v0

    .line 412
    if-eq v4, v0, :cond_b

    .line 415
    add-int/2addr p1, v0

    .line 416
    add-int/2addr v2, v0

    .line 417
    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v5, :cond_49

    .line 418
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v3, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v5, v3}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 423
    .end local v3           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 424
    if-eq v4, v0, :cond_b

    .line 427
    add-int/2addr v2, v0

    move v4, v2

    .line 429
    goto :goto_b
.end method

.method private parseCalprop1(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 436
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 438
    .local v1, sum:I
    const-string v4, "VERSION"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 439
    if-ne v3, v0, :cond_d

    .line 478
    :cond_c
    :goto_c
    return v3

    .line 442
    :cond_d
    add-int/2addr p1, v0

    .line 443
    add-int/2addr v1, v0

    .line 444
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_1a

    .line 445
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const-string v5, "VERSION"

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 448
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v0

    .line 449
    if-eq v3, v0, :cond_22

    .line 450
    add-int/2addr p1, v0

    .line 451
    add-int/2addr v1, v0

    .line 454
    :cond_22
    const-string v4, ":"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 455
    if-eq v3, v0, :cond_c

    .line 458
    add-int/2addr p1, v0

    .line 459
    add-int/2addr v1, v0

    .line 461
    const-string v4, "1.0"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 462
    if-eq v3, v0, :cond_c

    .line 465
    add-int/2addr p1, v0

    .line 466
    add-int/2addr v1, v0

    .line 467
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_49

    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v2, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "1.0"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v4, v2}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 472
    .end local v2           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 473
    if-eq v3, v0, :cond_c

    .line 476
    add-int/2addr v1, v0

    move v3, v1

    .line 478
    goto :goto_c
.end method

.method private parseCalprops(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 259
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 261
    .local v1, sum:I
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_c

    .line 262
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->startProperty()V

    .line 264
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop(I)I

    move-result v0

    .line 265
    if-ne v2, v0, :cond_13

    .line 295
    :goto_12
    return v2

    .line 268
    :cond_13
    add-int/2addr p1, v0

    .line 269
    add-int/2addr v1, v0

    .line 270
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_1e

    .line 271
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endProperty()V

    .line 276
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_27

    .line 277
    add-int/2addr p1, v0

    .line 278
    add-int/2addr v1, v0

    goto :goto_1e

    .line 281
    :cond_27
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_30

    .line 282
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->startProperty()V

    .line 284
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop(I)I

    move-result v0

    .line 285
    if-ne v2, v0, :cond_38

    move v2, v1

    .line 295
    goto :goto_12

    .line 288
    :cond_38
    add-int/2addr p1, v0

    .line 289
    add-int/2addr v1, v0

    .line 290
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_1e

    .line 291
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endProperty()V

    goto :goto_1e
.end method

.method private parseEntprop(I)I
    .registers 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop0(I)I

    move-result v0

    .line 793
    if-eq v1, v0, :cond_a

    move v1, v0

    .line 801
    :cond_9
    :goto_9
    return v1

    .line 797
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop1(I)I

    move-result v0

    .line 798
    if-eq v1, v0, :cond_9

    move v1, v0

    .line 799
    goto :goto_9
.end method

.method private parseEntprop0(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v5, -0x1

    .line 939
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    const/4 v2, 0x0

    .line 941
    .local v2, start:I
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 942
    add-int/2addr p1, v1

    .line 943
    add-int/2addr v3, v1

    .line 945
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->getWord(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, propName:Ljava/lang/String;
    sget-object v6, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup1:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v6

    if-ne v5, v6, :cond_21

    .line 991
    :cond_20
    :goto_20
    return v5

    .line 950
    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 951
    add-int/2addr p1, v1

    .line 952
    add-int/2addr v3, v1

    .line 953
    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v6, :cond_30

    .line 954
    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v6, v0}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 957
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v1

    .line 958
    if-eq v5, v1, :cond_38

    .line 959
    add-int/2addr p1, v1

    .line 960
    add-int/2addr v3, v1

    .line 963
    :cond_38
    const-string v6, ":"

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 964
    if-eq v5, v1, :cond_20

    .line 967
    add-int/2addr p1, v1

    .line 968
    add-int/2addr v3, v1

    .line 970
    move v2, p1

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v1

    .line 972
    if-eq v5, v1, :cond_20

    .line 975
    add-int/2addr p1, v1

    .line 976
    add-int/2addr v3, v1

    .line 977
    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v6, :cond_6d

    .line 978
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .local v4, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v6, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 982
    invoke-direct {p0, v0, v4}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v6

    if-eq v5, v6, :cond_20

    .line 986
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6d
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v1

    .line 987
    if-eq v5, v1, :cond_20

    .line 990
    add-int/2addr v3, v1

    move v5, v3

    .line 991
    goto :goto_20
.end method

.method private parseEntprop1(I)I
    .registers 15
    .parameter "offset"

    .prologue
    const/4 v10, -0x1

    .line 1000
    const/4 v5, 0x0

    .local v5, ret:I
    const/4 v8, 0x0

    .line 1002
    .local v8, sum:I
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v5

    .line 1003
    add-int/2addr p1, v5

    .line 1004
    add-int/2addr v8, v5

    .line 1006
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->getWord(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 1007
    .local v4, propName:Ljava/lang/String;
    sget-object v11, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup2:Ljava/util/HashSet;

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 1068
    :cond_19
    :goto_19
    return v10

    .line 1010
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 1011
    add-int/2addr p1, v5

    .line 1012
    add-int/2addr v8, v5

    .line 1013
    iget-object v11, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v11, :cond_29

    .line 1014
    iget-object v11, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v11, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 1017
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v5

    .line 1018
    if-eq v10, v5, :cond_31

    .line 1019
    add-int/2addr p1, v5

    .line 1020
    add-int/2addr v8, v5

    .line 1023
    :cond_31
    const-string v11, ":"

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, v12}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v5

    .line 1024
    if-eq v10, v5, :cond_19

    .line 1027
    add-int/2addr p1, v5

    .line 1028
    add-int/2addr v8, v5

    .line 1030
    move v7, p1

    .line 1031
    .local v7, start:I
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v5

    .line 1032
    if-eq v10, v5, :cond_19

    .line 1035
    add-int/2addr p1, v5

    .line 1036
    add-int/2addr v8, v5

    .line 1038
    iget-object v11, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v11, :cond_93

    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, end:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v9, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "([^;\\\\]*(\\\\[\\\\;:,])*[^;\\\\]*)(;?)"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1042
    .local v3, p:Ljava/util/regex/Pattern;
    iget-object v11, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v11, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1043
    .local v2, m:Ljava/util/regex/Matcher;
    :cond_5f
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8b

    .line 1044
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v11}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1045
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 1047
    add-int v11, v7, v0

    if-ne p1, v11, :cond_5f

    .line 1048
    const/4 v11, 0x3

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, endValue:Ljava/lang/String;
    const-string v11, ";"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8b

    .line 1050
    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    .end local v1           #endValue:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    :cond_8b
    iget-object v11, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v11, v9}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 1060
    invoke-direct {p0, v4, v9}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I

    .line 1063
    .end local v0           #end:I
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v9           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_93
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v5

    .line 1064
    if-eq v10, v5, :cond_19

    .line 1067
    add-int/2addr v8, v5

    move v10, v8

    .line 1068
    goto/16 :goto_19
.end method

.method private parseEntprops(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 750
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 751
    .local v1, sum:I
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_c

    .line 752
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->startProperty()V

    .line 755
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop(I)I

    move-result v0

    .line 756
    if-ne v2, v0, :cond_13

    .line 784
    :goto_12
    return v2

    .line 759
    :cond_13
    add-int/2addr p1, v0

    .line 760
    add-int/2addr v1, v0

    .line 761
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_1e

    .line 762
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endProperty()V

    .line 766
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_27

    .line 767
    add-int/2addr p1, v0

    .line 768
    add-int/2addr v1, v0

    goto :goto_1e

    .line 770
    :cond_27
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_30

    .line 771
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->startProperty()V

    .line 774
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop(I)I

    move-result v0

    .line 775
    if-ne v2, v0, :cond_38

    move v2, v1

    .line 784
    goto :goto_12

    .line 778
    :cond_38
    add-int/2addr p1, v0

    .line 779
    add-int/2addr v1, v0

    .line 780
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_1e

    .line 781
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endProperty()V

    goto :goto_1e
.end method

.method private parseEvententity(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 486
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 488
    .local v1, sum:I
    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 489
    if-ne v2, v0, :cond_d

    .line 613
    :cond_c
    :goto_c
    return v2

    .line 492
    :cond_d
    add-int/2addr p1, v0

    .line 493
    add-int/2addr v1, v0

    .line 496
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 497
    add-int/2addr p1, v0

    .line 498
    add-int/2addr v1, v0

    .line 501
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 502
    if-eq v2, v0, :cond_c

    .line 505
    add-int/2addr p1, v0

    .line 506
    add-int/2addr v1, v0

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 510
    add-int/2addr p1, v0

    .line 511
    add-int/2addr v1, v0

    .line 514
    const-string v3, "VEVENT"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 515
    if-eq v2, v0, :cond_c

    .line 518
    add-int/2addr p1, v0

    .line 519
    add-int/2addr v1, v0

    .line 520
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_3a

    .line 521
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const-string v4, "VEVENT"

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 525
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 526
    add-int/2addr p1, v0

    .line 527
    add-int/2addr v1, v0

    .line 530
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 531
    if-eq v2, v0, :cond_c

    .line 534
    add-int/2addr p1, v0

    .line 535
    add-int/2addr v1, v0

    .line 536
    :goto_48
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_51

    .line 537
    add-int/2addr p1, v0

    .line 538
    add-int/2addr v1, v0

    goto :goto_48

    .line 541
    :cond_51
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprops(I)I

    move-result v0

    .line 542
    if-eq v2, v0, :cond_c

    .line 545
    add-int/2addr p1, v0

    .line 546
    add-int/2addr v1, v0

    .line 549
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 550
    add-int/2addr p1, v0

    .line 551
    add-int/2addr v1, v0

    .line 554
    :goto_5f
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_68

    .line 555
    add-int/2addr p1, v0

    .line 556
    add-int/2addr v1, v0

    goto :goto_5f

    .line 560
    :cond_68
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 561
    if-eq v2, v0, :cond_c

    .line 564
    add-int/2addr p1, v0

    .line 565
    add-int/2addr v1, v0

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 569
    add-int/2addr p1, v0

    .line 570
    add-int/2addr v1, v0

    .line 573
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 574
    if-eq v2, v0, :cond_c

    .line 577
    add-int/2addr p1, v0

    .line 578
    add-int/2addr v1, v0

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 582
    add-int/2addr p1, v0

    .line 583
    add-int/2addr v1, v0

    .line 586
    const-string v3, "VEVENT"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 587
    if-eq v2, v0, :cond_c

    .line 590
    add-int/2addr p1, v0

    .line 591
    add-int/2addr v1, v0

    .line 592
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_9b

    .line 593
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endRecord()V

    .line 597
    :cond_9b
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 598
    add-int/2addr p1, v0

    .line 599
    add-int/2addr v1, v0

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 603
    if-eq v2, v0, :cond_c

    .line 606
    add-int/2addr p1, v0

    .line 607
    add-int/2addr v1, v0

    .line 608
    :goto_a9
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_b2

    .line 609
    add-int/2addr p1, v0

    .line 610
    add-int/2addr v1, v0

    goto :goto_a9

    :cond_b2
    move v2, v1

    .line 613
    goto/16 :goto_c
.end method

.method private parseKnownType(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1448
    const/4 v0, 0x0

    .line 1450
    .local v0, ret:I
    const-string v2, "WAVE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1451
    if-eq v1, v0, :cond_d

    move v1, v0

    .line 1470
    :cond_c
    :goto_c
    return v1

    .line 1455
    :cond_d
    const-string v2, "PCM"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1456
    if-eq v1, v0, :cond_17

    move v1, v0

    .line 1457
    goto :goto_c

    .line 1460
    :cond_17
    const-string v2, "VCARD"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1461
    if-eq v1, v0, :cond_21

    move v1, v0

    .line 1462
    goto :goto_c

    .line 1465
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1466
    if-eq v1, v0, :cond_c

    move v1, v0

    .line 1467
    goto :goto_c
.end method

.method private parseParam(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 878
    const/4 v0, 0x0

    .line 880
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam0(I)I

    move-result v0

    .line 881
    if-eq v2, v0, :cond_a

    move v2, v0

    .line 931
    :cond_9
    :goto_9
    return v2

    .line 885
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam1(I)I

    move-result v0

    .line 886
    if-eq v2, v0, :cond_12

    move v2, v0

    .line 887
    goto :goto_9

    .line 890
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam2(I)I

    move-result v0

    .line 891
    if-eq v2, v0, :cond_1a

    move v2, v0

    .line 892
    goto :goto_9

    .line 895
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam3(I)I

    move-result v0

    .line 896
    if-eq v2, v0, :cond_22

    move v2, v0

    .line 897
    goto :goto_9

    .line 900
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam4(I)I

    move-result v0

    .line 901
    if-eq v2, v0, :cond_2a

    move v2, v0

    .line 902
    goto :goto_9

    .line 905
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam5(I)I

    move-result v0

    .line 906
    if-eq v2, v0, :cond_32

    move v2, v0

    .line 907
    goto :goto_9

    .line 910
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam6(I)I

    move-result v0

    .line 911
    if-eq v2, v0, :cond_3a

    move v2, v0

    .line 912
    goto :goto_9

    .line 915
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam7(I)I

    move-result v0

    .line 916
    if-eq v2, v0, :cond_42

    move v2, v0

    .line 917
    goto :goto_9

    .line 920
    :cond_42
    move v1, p1

    .line 921
    .local v1, start:I
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseKnownType(I)I

    move-result v0

    .line 922
    if-eq v2, v0, :cond_9

    .line 925
    add-int/2addr p1, v0

    .line 926
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v2, :cond_5f

    .line 927
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 928
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_5f
    move v2, v0

    .line 931
    goto :goto_9
.end method

.method private parseParam0(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 1075
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1077
    .local v1, start:I
    const-string v4, "TYPE"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1078
    if-ne v3, v0, :cond_e

    .line 1112
    :cond_d
    :goto_d
    return v3

    .line 1081
    :cond_e
    add-int/2addr p1, v0

    .line 1082
    add-int/2addr v2, v0

    .line 1083
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_1f

    .line 1084
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1087
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1088
    add-int/2addr p1, v0

    .line 1089
    add-int/2addr v2, v0

    .line 1091
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1092
    if-eq v3, v0, :cond_d

    .line 1095
    add-int/2addr p1, v0

    .line 1096
    add-int/2addr v2, v0

    .line 1098
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1099
    add-int/2addr p1, v0

    .line 1100
    add-int/2addr v2, v0

    .line 1102
    move v1, p1

    .line 1103
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parsePtypeval(I)I

    move-result v0

    .line 1104
    if-eq v3, v0, :cond_d

    .line 1107
    add-int/2addr p1, v0

    .line 1108
    add-int/2addr v2, v0

    .line 1109
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_4e

    .line 1110
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4e
    move v3, v2

    .line 1112
    goto :goto_d
.end method

.method private parseParam1(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 1119
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    move v2, p1

    .line 1120
    .local v2, start:I
    const/4 v0, 0x0

    .line 1122
    .local v0, flag:Z
    const-string v5, "VALUE"

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1123
    if-eq v4, v1, :cond_11

    .line 1124
    add-int/2addr p1, v1

    .line 1125
    add-int/2addr v3, v1

    .line 1126
    const/4 v0, 0x1

    .line 1128
    :cond_11
    if-ne v0, v7, :cond_22

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v5, :cond_22

    .line 1129
    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1132
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1133
    add-int/2addr p1, v1

    .line 1134
    add-int/2addr v3, v1

    .line 1136
    const-string v5, "="

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1137
    if-eq v4, v1, :cond_55

    .line 1138
    if-nez v0, :cond_33

    .line 1164
    :cond_32
    :goto_32
    return v4

    .line 1141
    :cond_33
    add-int/2addr p1, v1

    .line 1142
    add-int/2addr v3, v1

    .line 1149
    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1150
    add-int/2addr p1, v1

    .line 1151
    add-int/2addr v3, v1

    .line 1153
    move v2, p1

    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parsePValueVal(I)I

    move-result v1

    .line 1155
    if-eq v4, v1, :cond_32

    .line 1158
    add-int/2addr p1, v1

    .line 1159
    add-int/2addr v3, v1

    .line 1160
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_53

    .line 1161
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_53
    move v4, v3

    .line 1164
    goto :goto_32

    .line 1144
    :cond_55
    if-ne v0, v7, :cond_35

    goto :goto_32
.end method

.method private parseParam2(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 1169
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    move v2, p1

    .line 1170
    .local v2, start:I
    const/4 v0, 0x0

    .line 1172
    .local v0, flag:Z
    const-string v5, "ENCODING"

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1173
    if-eq v4, v1, :cond_11

    .line 1174
    add-int/2addr p1, v1

    .line 1175
    add-int/2addr v3, v1

    .line 1176
    const/4 v0, 0x1

    .line 1178
    :cond_11
    if-ne v0, v7, :cond_22

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v5, :cond_22

    .line 1179
    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v6, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1182
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1183
    add-int/2addr p1, v1

    .line 1184
    add-int/2addr v3, v1

    .line 1186
    const-string v5, "="

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1187
    if-eq v4, v1, :cond_55

    .line 1188
    if-nez v0, :cond_33

    .line 1214
    :cond_32
    :goto_32
    return v4

    .line 1191
    :cond_33
    add-int/2addr p1, v1

    .line 1192
    add-int/2addr v3, v1

    .line 1199
    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1200
    add-int/2addr p1, v1

    .line 1201
    add-int/2addr v3, v1

    .line 1203
    move v2, p1

    .line 1204
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parsePEncodingVal(I)I

    move-result v1

    .line 1205
    if-eq v4, v1, :cond_32

    .line 1208
    add-int/2addr p1, v1

    .line 1209
    add-int/2addr v3, v1

    .line 1210
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_53

    .line 1211
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_53
    move v4, v3

    .line 1214
    goto :goto_32

    .line 1194
    :cond_55
    if-ne v0, v7, :cond_35

    goto :goto_32
.end method

.method private parseParam3(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1221
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1223
    .local v1, start:I
    const-string v4, "CHARSET"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1224
    if-ne v3, v0, :cond_e

    .line 1259
    :cond_d
    :goto_d
    return v3

    .line 1227
    :cond_e
    add-int/2addr p1, v0

    .line 1228
    add-int/2addr v2, v0

    .line 1229
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_1f

    .line 1230
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1233
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1234
    add-int/2addr p1, v0

    .line 1235
    add-int/2addr v2, v0

    .line 1237
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1238
    if-eq v3, v0, :cond_d

    .line 1241
    add-int/2addr p1, v0

    .line 1242
    add-int/2addr v2, v0

    .line 1244
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1245
    add-int/2addr p1, v0

    .line 1246
    add-int/2addr v2, v0

    .line 1248
    move v1, p1

    .line 1249
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCharsetVal(I)I

    move-result v0

    .line 1250
    if-eq v3, v0, :cond_d

    .line 1253
    add-int/2addr p1, v0

    .line 1254
    add-int/2addr v2, v0

    .line 1255
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_4d

    .line 1256
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4d
    move v3, v2

    .line 1259
    goto :goto_d
.end method

.method private parseParam4(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1266
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1268
    .local v1, start:I
    const-string v4, "LANGUAGE"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1269
    if-ne v3, v0, :cond_e

    .line 1304
    :cond_d
    :goto_d
    return v3

    .line 1272
    :cond_e
    add-int/2addr p1, v0

    .line 1273
    add-int/2addr v2, v0

    .line 1274
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_1f

    .line 1275
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1278
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1279
    add-int/2addr p1, v0

    .line 1280
    add-int/2addr v2, v0

    .line 1282
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1283
    if-eq v3, v0, :cond_d

    .line 1286
    add-int/2addr p1, v0

    .line 1287
    add-int/2addr v2, v0

    .line 1289
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1290
    add-int/2addr p1, v0

    .line 1291
    add-int/2addr v2, v0

    .line 1293
    move v1, p1

    .line 1294
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseLangVal(I)I

    move-result v0

    .line 1295
    if-eq v3, v0, :cond_d

    .line 1298
    add-int/2addr p1, v0

    .line 1299
    add-int/2addr v2, v0

    .line 1300
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_4d

    .line 1301
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4d
    move v3, v2

    .line 1304
    goto :goto_d
.end method

.method private parseParam5(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1311
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1313
    .local v1, start:I
    const-string v4, "ROLE"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1314
    if-ne v3, v0, :cond_e

    .line 1349
    :cond_d
    :goto_d
    return v3

    .line 1317
    :cond_e
    add-int/2addr p1, v0

    .line 1318
    add-int/2addr v2, v0

    .line 1319
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_1f

    .line 1320
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1323
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1324
    add-int/2addr p1, v0

    .line 1325
    add-int/2addr v2, v0

    .line 1327
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1328
    if-eq v3, v0, :cond_d

    .line 1331
    add-int/2addr p1, v0

    .line 1332
    add-int/2addr v2, v0

    .line 1334
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1335
    add-int/2addr p1, v0

    .line 1336
    add-int/2addr v2, v0

    .line 1338
    move v1, p1

    .line 1339
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseRoleVal(I)I

    move-result v0

    .line 1340
    if-eq v3, v0, :cond_d

    .line 1343
    add-int/2addr p1, v0

    .line 1344
    add-int/2addr v2, v0

    .line 1345
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_4d

    .line 1346
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4d
    move v3, v2

    .line 1349
    goto :goto_d
.end method

.method private parseParam6(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1356
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1358
    .local v1, start:I
    const-string v4, "STATUS"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1359
    if-ne v3, v0, :cond_e

    .line 1394
    :cond_d
    :goto_d
    return v3

    .line 1362
    :cond_e
    add-int/2addr p1, v0

    .line 1363
    add-int/2addr v2, v0

    .line 1364
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_1f

    .line 1365
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1368
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1369
    add-int/2addr p1, v0

    .line 1370
    add-int/2addr v2, v0

    .line 1372
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1373
    if-eq v3, v0, :cond_d

    .line 1376
    add-int/2addr p1, v0

    .line 1377
    add-int/2addr v2, v0

    .line 1379
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1380
    add-int/2addr p1, v0

    .line 1381
    add-int/2addr v2, v0

    .line 1383
    move v1, p1

    .line 1384
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseStatuVal(I)I

    move-result v0

    .line 1385
    if-eq v3, v0, :cond_d

    .line 1388
    add-int/2addr p1, v0

    .line 1389
    add-int/2addr v2, v0

    .line 1390
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_4d

    .line 1391
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4d
    move v3, v2

    .line 1394
    goto :goto_d
.end method

.method private parseParam7(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 1402
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1404
    .local v1, start:I
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1405
    if-ne v3, v0, :cond_b

    .line 1440
    :cond_a
    :goto_a
    return v3

    .line 1408
    :cond_b
    add-int/2addr p1, v0

    .line 1409
    add-int/2addr v2, v0

    .line 1410
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v4, :cond_1c

    .line 1411
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1414
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1415
    add-int/2addr p1, v0

    .line 1416
    add-int/2addr v2, v0

    .line 1418
    const-string v4, "="

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1419
    if-eq v3, v0, :cond_a

    .line 1422
    add-int/2addr p1, v0

    .line 1423
    add-int/2addr v2, v0

    .line 1425
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1426
    add-int/2addr p1, v0

    .line 1427
    add-int/2addr v2, v0

    .line 1429
    move v1, p1

    .line 1430
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseWord(I)I

    move-result v0

    .line 1431
    if-eq v3, v0, :cond_a

    .line 1434
    add-int/2addr p1, v0

    .line 1435
    add-int/2addr v2, v0

    .line 1436
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_4b

    .line 1437
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4b
    move v3, v2

    .line 1440
    goto :goto_a
.end method

.method private parseParamlist(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 834
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 836
    .local v2, sum:I
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam(I)I

    move-result v1

    .line 837
    if-ne v4, v1, :cond_a

    .line 871
    :goto_9
    return v4

    .line 840
    :cond_a
    add-int/2addr p1, v1

    .line 841
    add-int/2addr v2, v1

    .line 843
    move v0, p1

    .line 844
    .local v0, offsetTemp:I
    move v3, v2

    .line 846
    .local v3, sumTemp:I
    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 847
    add-int/2addr v0, v1

    .line 848
    add-int/2addr v3, v1

    .line 850
    const-string v5, ";"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 851
    if-ne v4, v1, :cond_1f

    move v4, v2

    .line 852
    goto :goto_9

    .line 854
    :cond_1f
    add-int/2addr v0, v1

    .line 855
    add-int/2addr v3, v1

    .line 857
    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 858
    add-int/2addr v0, v1

    .line 859
    add-int/2addr v3, v1

    .line 861
    invoke-direct {p0, v0}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParam(I)I

    move-result v1

    .line 862
    if-ne v4, v1, :cond_2f

    move v4, v2

    .line 871
    goto :goto_9

    .line 865
    :cond_2f
    add-int/2addr v0, v1

    .line 866
    add-int/2addr v3, v1

    .line 869
    move v2, v3

    goto :goto_e
.end method

.method private parseParams(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 808
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 810
    .local v1, sum:I
    const-string v3, ";"

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 811
    if-ne v2, v0, :cond_d

    .line 827
    :cond_c
    :goto_c
    return v2

    .line 814
    :cond_d
    add-int/2addr p1, v0

    .line 815
    add-int/2addr v1, v0

    .line 817
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 818
    add-int/2addr p1, v0

    .line 819
    add-int/2addr v1, v0

    .line 821
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseParamlist(I)I

    move-result v0

    .line 822
    if-eq v2, v0, :cond_c

    .line 825
    add-int/2addr v1, v0

    move v2, v1

    .line 827
    goto :goto_c
.end method

.method private parsePtypeval(I)I
    .registers 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 1477
    const/4 v0, 0x0

    .line 1479
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseKnownType(I)I

    move-result v0

    .line 1480
    if-eq v1, v0, :cond_a

    move v1, v0

    .line 1489
    :cond_9
    :goto_9
    return v1

    .line 1484
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1485
    if-eq v1, v0, :cond_9

    move v1, v0

    .line 1486
    goto :goto_9
.end method

.method private parseRoleVal(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1496
    const/4 v0, 0x0

    .line 1498
    .local v0, ret:I
    const-string v2, "ATTENDEE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1499
    if-eq v1, v0, :cond_d

    move v1, v0

    .line 1518
    :cond_c
    :goto_c
    return v1

    .line 1503
    :cond_d
    const-string v2, "ORGANIZER"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1504
    if-eq v1, v0, :cond_17

    move v1, v0

    .line 1505
    goto :goto_c

    .line 1508
    :cond_17
    const-string v2, "OWNER"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1509
    if-eq v1, v0, :cond_21

    move v1, v0

    .line 1510
    goto :goto_c

    .line 1513
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1514
    if-eq v1, v0, :cond_c

    move v1, v0

    .line 1515
    goto :goto_c
.end method

.method private parseStatuVal(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1526
    const/4 v0, 0x0

    .line 1528
    .local v0, ret:I
    const-string v2, "ACCEPTED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1529
    if-eq v1, v0, :cond_d

    move v1, v0

    .line 1564
    :cond_c
    :goto_c
    return v1

    .line 1533
    :cond_d
    const-string v2, "NEED ACTION"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1534
    if-eq v1, v0, :cond_17

    move v1, v0

    .line 1535
    goto :goto_c

    .line 1538
    :cond_17
    const-string v2, "TENTATIVE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1539
    if-eq v1, v0, :cond_21

    move v1, v0

    .line 1540
    goto :goto_c

    .line 1542
    :cond_21
    const-string v2, "CONFIRMED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1543
    if-eq v1, v0, :cond_2b

    move v1, v0

    .line 1544
    goto :goto_c

    .line 1546
    :cond_2b
    const-string v2, "DECLINED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1547
    if-eq v1, v0, :cond_35

    move v1, v0

    .line 1548
    goto :goto_c

    .line 1550
    :cond_35
    const-string v2, "COMPLETED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1551
    if-eq v1, v0, :cond_3f

    move v1, v0

    .line 1552
    goto :goto_c

    .line 1554
    :cond_3f
    const-string v2, "DELEGATED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1555
    if-eq v1, v0, :cond_49

    move v1, v0

    .line 1556
    goto :goto_c

    .line 1559
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1560
    if-eq v1, v0, :cond_c

    move v1, v0

    .line 1561
    goto :goto_c
.end method

.method private parseTodoentity(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 621
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 623
    .local v1, sum:I
    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 624
    if-ne v2, v0, :cond_d

    .line 743
    :cond_c
    :goto_c
    return v2

    .line 627
    :cond_d
    add-int/2addr p1, v0

    .line 628
    add-int/2addr v1, v0

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 632
    add-int/2addr p1, v0

    .line 633
    add-int/2addr v1, v0

    .line 636
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 637
    if-eq v2, v0, :cond_c

    .line 640
    add-int/2addr p1, v0

    .line 641
    add-int/2addr v1, v0

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 645
    add-int/2addr p1, v0

    .line 646
    add-int/2addr v1, v0

    .line 649
    const-string v3, "VTODO"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 650
    if-eq v2, v0, :cond_c

    .line 653
    add-int/2addr p1, v0

    .line 654
    add-int/2addr v1, v0

    .line 655
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_3a

    .line 656
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const-string v4, "VTODO"

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 660
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 661
    if-eq v2, v0, :cond_c

    .line 664
    add-int/2addr p1, v0

    .line 665
    add-int/2addr v1, v0

    .line 666
    :goto_42
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_4b

    .line 667
    add-int/2addr p1, v0

    .line 668
    add-int/2addr v1, v0

    goto :goto_42

    .line 671
    :cond_4b
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseEntprops(I)I

    move-result v0

    .line 672
    if-eq v2, v0, :cond_c

    .line 675
    add-int/2addr p1, v0

    .line 676
    add-int/2addr v1, v0

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 680
    add-int/2addr p1, v0

    .line 681
    add-int/2addr v1, v0

    .line 684
    :goto_59
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_62

    .line 685
    add-int/2addr p1, v0

    .line 686
    add-int/2addr v1, v0

    goto :goto_59

    .line 690
    :cond_62
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 691
    if-eq v2, v0, :cond_c

    .line 694
    add-int/2addr p1, v0

    .line 695
    add-int/2addr v1, v0

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 699
    add-int/2addr p1, v0

    .line 700
    add-int/2addr v1, v0

    .line 703
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 704
    if-eq v2, v0, :cond_c

    .line 707
    add-int/2addr p1, v0

    .line 708
    add-int/2addr v1, v0

    .line 711
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 712
    add-int/2addr p1, v0

    .line 713
    add-int/2addr v1, v0

    .line 716
    const-string v3, "VTODO"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 717
    if-eq v2, v0, :cond_c

    .line 720
    add-int/2addr p1, v0

    .line 721
    add-int/2addr v1, v0

    .line 722
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_95

    .line 723
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endRecord()V

    .line 727
    :cond_95
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 728
    add-int/2addr p1, v0

    .line 729
    add-int/2addr v1, v0

    .line 732
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 733
    if-eq v2, v0, :cond_c

    .line 736
    add-int/2addr p1, v0

    .line 737
    add-int/2addr v1, v0

    .line 738
    :goto_a3
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_ac

    .line 739
    add-int/2addr p1, v0

    .line 740
    add-int/2addr v1, v0

    goto :goto_a3

    :cond_ac
    move v2, v1

    .line 743
    goto/16 :goto_c
.end method

.method private parseVCal(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 114
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 117
    .local v1, sum:I
    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 118
    if-ne v2, v0, :cond_d

    .line 252
    :cond_c
    :goto_c
    return v2

    .line 121
    :cond_d
    add-int/2addr p1, v0

    .line 122
    add-int/2addr v1, v0

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 126
    add-int/2addr p1, v0

    .line 127
    add-int/2addr v1, v0

    .line 130
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 131
    if-eq v2, v0, :cond_c

    .line 134
    add-int/2addr p1, v0

    .line 135
    add-int/2addr v1, v0

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 139
    add-int/2addr p1, v0

    .line 140
    add-int/2addr v1, v0

    .line 143
    const-string v3, "VCALENDAR"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 144
    if-eq v2, v0, :cond_c

    .line 147
    add-int/2addr p1, v0

    .line 148
    add-int/2addr v1, v0

    .line 149
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_3a

    .line 150
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const-string v4, "VCALENDAR"

    invoke-interface {v3, v4}, Lcom/android/calendar/vcal/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 154
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 155
    add-int/2addr p1, v0

    .line 156
    add-int/2addr v1, v0

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 160
    if-eq v2, v0, :cond_c

    .line 163
    add-int/2addr p1, v0

    .line 164
    add-int/2addr v1, v0

    .line 165
    :goto_48
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_51

    .line 166
    add-int/2addr p1, v0

    .line 167
    add-int/2addr v1, v0

    goto :goto_48

    .line 171
    :cond_51
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalprops(I)I

    move-result v0

    .line 172
    if-eq v2, v0, :cond_c

    .line 175
    add-int/2addr p1, v0

    .line 176
    add-int/2addr v1, v0

    .line 179
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCalentities(I)I

    move-result v0

    .line 180
    if-eq v2, v0, :cond_c

    .line 183
    add-int/2addr p1, v0

    .line 184
    add-int/2addr v1, v0

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 188
    add-int/2addr p1, v0

    .line 189
    add-int/2addr v1, v0

    .line 192
    :goto_67
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_70

    .line 193
    add-int/2addr p1, v0

    .line 194
    add-int/2addr v1, v0

    goto :goto_67

    .line 198
    :cond_70
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 199
    if-eq v2, v0, :cond_c

    .line 202
    add-int/2addr p1, v0

    .line 203
    add-int/2addr v1, v0

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 207
    add-int/2addr p1, v0

    .line 208
    add-int/2addr v1, v0

    .line 212
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 213
    if-eq v2, v0, :cond_c

    .line 216
    add-int/2addr p1, v0

    .line 217
    add-int/2addr v1, v0

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 221
    add-int/2addr p1, v0

    .line 222
    add-int/2addr v1, v0

    .line 225
    const-string v3, "VCALENDAR"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 226
    if-eq v2, v0, :cond_c

    .line 229
    add-int/2addr p1, v0

    .line 230
    add-int/2addr v1, v0

    .line 231
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_a3

    .line 232
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->endRecord()V

    .line 236
    :cond_a3
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 237
    add-int/2addr p1, v0

    .line 238
    add-int/2addr v1, v0

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 242
    if-eq v2, v0, :cond_c

    .line 245
    add-int/2addr p1, v0

    .line 246
    add-int/2addr v1, v0

    .line 247
    :goto_b1
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_ba

    .line 248
    add-int/2addr p1, v0

    .line 249
    add-int/2addr v1, v0

    goto :goto_b1

    :cond_ba
    move v2, v1

    .line 252
    goto/16 :goto_c
.end method

.method private parseVCalFile(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 85
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 88
    .local v1, sum:I
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseWsls(I)I

    move-result v0

    if-eq v2, v0, :cond_c

    .line 89
    add-int/2addr p1, v0

    .line 90
    add-int/2addr v1, v0

    goto :goto_3

    .line 93
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseVCal(I)I

    move-result v0

    .line 94
    if-eq v2, v0, :cond_1e

    .line 95
    add-int/2addr p1, v0

    .line 96
    add-int/2addr v1, v0

    .line 102
    :goto_14
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseWsls(I)I

    move-result v0

    if-eq v2, v0, :cond_1d

    .line 103
    add-int/2addr p1, v0

    .line 104
    add-int/2addr v1, v0

    goto :goto_14

    :cond_1d
    move v2, v1

    .line 106
    :cond_1e
    return v2
.end method

.method private valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 7
    .parameter "propName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1573
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_11
    move v2, v3

    .line 1585
    :goto_12
    return v2

    .line 1576
    :cond_13
    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1577
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1578
    .local v1, value:Ljava/lang/String;
    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1579
    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1580
    const/4 v2, -0x1

    goto :goto_12

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #value:Ljava/lang/String;
    :cond_43
    move v2, v3

    .line 1585
    goto :goto_12
.end method


# virtual methods
.method protected parseVFile(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/calendar/vcal/pim/vcalendar/VCalParser_V10;->parseVCalFile(I)I

    move-result v0

    return v0
.end method

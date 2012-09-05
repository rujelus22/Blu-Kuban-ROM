.class public Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;
.super Lcom/android/task/vcal/pim/VParser;
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

    sput-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup1:Ljava/util/HashSet;

    .line 44
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

    sput-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup2:Ljava/util/HashSet;

    .line 47
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

    sput-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mValueCAT:Ljava/util/HashSet;

    .line 51
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

    sput-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mValueCLASS:Ljava/util/HashSet;

    .line 54
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

    sput-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mValueRES:Ljava/util/HashSet;

    .line 57
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

    sput-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mValueSTAT:Ljava/util/HashSet;

    .line 63
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

    sput-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mEscAllowedProps:Ljava/util/HashSet;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    .line 69
    sget-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "CATEGORIES"

    sget-object v2, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mValueCAT:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "CLASS"

    sget-object v2, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mValueCLASS:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "RESOURCES"

    sget-object v2, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mValueRES:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "STATUS"

    sget-object v2, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mValueSTAT:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/task/vcal/pim/VParser;-><init>()V

    .line 76
    return-void
.end method

.method private exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "propName"
    .parameter "str"

    .prologue
    .line 1604
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 1605
    :cond_4
    const/4 p2, 0x0

    .line 1617
    .end local p2
    :cond_5
    :goto_5
    return-object p2

    .line 1606
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

    .line 1607
    :cond_16
    const-string p2, ""

    goto :goto_5

    .line 1609
    :cond_19
    sget-object v1, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mEscAllowedProps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1612
    const-string v1, "\\\\"

    const-string v2, "\n\r\n"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1613
    .local v0, tmp:Ljava/lang/String;
    const-string v1, "\\;"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1614
    const-string v1, "\\:"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    const-string v1, "\\,"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1616
    const-string v1, "\n\r\n"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 1617
    goto :goto_5
.end method

.method private parseCalentities(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 300
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 302
    .local v1, sum:I
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalentity(I)I

    move-result v0

    .line 303
    if-ne v2, v0, :cond_a

    .line 324
    :goto_9
    return v2

    .line 306
    :cond_a
    add-int/2addr p1, v0

    .line 307
    add-int/2addr v1, v0

    .line 311
    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_15

    .line 312
    add-int/2addr p1, v0

    .line 313
    add-int/2addr v1, v0

    goto :goto_c

    .line 316
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalentity(I)I

    move-result v0

    .line 317
    if-ne v2, v0, :cond_1d

    move v2, v1

    .line 324
    goto :goto_9

    .line 320
    :cond_1d
    add-int/2addr p1, v0

    .line 321
    add-int/2addr v1, v0

    goto :goto_c
.end method

.method private parseCalentity(I)I
    .registers 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 364
    const/4 v0, 0x0

    .line 366
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseEvententity(I)I

    move-result v0

    .line 367
    if-eq v1, v0, :cond_a

    move v1, v0

    .line 375
    :cond_9
    :goto_9
    return v1

    .line 371
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseTodoentity(I)I

    move-result v0

    .line 372
    if-eq v1, v0, :cond_9

    move v1, v0

    .line 373
    goto :goto_9
.end method

.method private parseCalprop(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, ret:I
    const-string v2, "DAYLIGHT"

    invoke-direct {p0, p1, v2}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 334
    if-eq v1, v0, :cond_c

    move v1, v0

    .line 357
    :cond_b
    :goto_b
    return v1

    .line 338
    :cond_c
    const-string v2, "GEO"

    invoke-direct {p0, p1, v2}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 339
    if-eq v1, v0, :cond_16

    move v1, v0

    .line 340
    goto :goto_b

    .line 343
    :cond_16
    const-string v2, "PRODID"

    invoke-direct {p0, p1, v2}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 344
    if-eq v1, v0, :cond_20

    move v1, v0

    .line 345
    goto :goto_b

    .line 348
    :cond_20
    const-string v2, "TZ"

    invoke-direct {p0, p1, v2}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 349
    if-eq v1, v0, :cond_2a

    move v1, v0

    .line 350
    goto :goto_b

    .line 353
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop1(I)I

    move-result v0

    .line 354
    if-eq v1, v0, :cond_b

    move v1, v0

    .line 355
    goto :goto_b
.end method

.method private parseCalprop0(ILjava/lang/String;)I
    .registers 10
    .parameter "offset"
    .parameter "propName"

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 383
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    const/4 v1, 0x0

    .line 385
    .local v1, start:I
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 386
    if-ne v4, v0, :cond_c

    .line 427
    :cond_b
    :goto_b
    return v4

    .line 389
    :cond_c
    add-int/2addr p1, v0

    .line 390
    add-int/2addr v2, v0

    .line 391
    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v5, :cond_17

    .line 392
    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v5, p2}, Lcom/android/task/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 395
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v0

    .line 396
    if-eq v4, v0, :cond_1f

    .line 397
    add-int/2addr p1, v0

    .line 398
    add-int/2addr v2, v0

    .line 401
    :cond_1f
    const-string v5, ":"

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 402
    if-eq v4, v0, :cond_b

    .line 405
    add-int/2addr p1, v0

    .line 406
    add-int/2addr v2, v0

    .line 408
    move v1, p1

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v0

    .line 410
    if-eq v4, v0, :cond_b

    .line 413
    add-int/2addr p1, v0

    .line 414
    add-int/2addr v2, v0

    .line 415
    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v5, :cond_49

    .line 416
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v3, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v5, v3}, Lcom/android/task/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 421
    .end local v3           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 422
    if-eq v4, v0, :cond_b

    .line 425
    add-int/2addr v2, v0

    move v4, v2

    .line 427
    goto :goto_b
.end method

.method private parseCalprop1(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 434
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 436
    .local v1, sum:I
    const-string v4, "VERSION"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 437
    if-ne v3, v0, :cond_d

    .line 476
    :cond_c
    :goto_c
    return v3

    .line 440
    :cond_d
    add-int/2addr p1, v0

    .line 441
    add-int/2addr v1, v0

    .line 442
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v4, :cond_1a

    .line 443
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    const-string v5, "VERSION"

    invoke-interface {v4, v5}, Lcom/android/task/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 446
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v0

    .line 447
    if-eq v3, v0, :cond_22

    .line 448
    add-int/2addr p1, v0

    .line 449
    add-int/2addr v1, v0

    .line 452
    :cond_22
    const-string v4, ":"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 453
    if-eq v3, v0, :cond_c

    .line 456
    add-int/2addr p1, v0

    .line 457
    add-int/2addr v1, v0

    .line 459
    const-string v4, "1.0"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 460
    if-eq v3, v0, :cond_c

    .line 463
    add-int/2addr p1, v0

    .line 464
    add-int/2addr v1, v0

    .line 465
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v4, :cond_49

    .line 466
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v2, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "1.0"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v4, v2}, Lcom/android/task/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 470
    .end local v2           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 471
    if-eq v3, v0, :cond_c

    .line 474
    add-int/2addr v1, v0

    move v3, v1

    .line 476
    goto :goto_c
.end method

.method private parseCalprops(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 257
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 259
    .local v1, sum:I
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_c

    .line 260
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->startProperty()V

    .line 262
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop(I)I

    move-result v0

    .line 263
    if-ne v2, v0, :cond_13

    .line 293
    :goto_12
    return v2

    .line 266
    :cond_13
    add-int/2addr p1, v0

    .line 267
    add-int/2addr v1, v0

    .line 268
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_1e

    .line 269
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->endProperty()V

    .line 274
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_27

    .line 275
    add-int/2addr p1, v0

    .line 276
    add-int/2addr v1, v0

    goto :goto_1e

    .line 279
    :cond_27
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_30

    .line 280
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->startProperty()V

    .line 282
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalprop(I)I

    move-result v0

    .line 283
    if-ne v2, v0, :cond_38

    move v2, v1

    .line 293
    goto :goto_12

    .line 286
    :cond_38
    add-int/2addr p1, v0

    .line 287
    add-int/2addr v1, v0

    .line 288
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_1e

    .line 289
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->endProperty()V

    goto :goto_1e
.end method

.method private parseEntprop(I)I
    .registers 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop0(I)I

    move-result v0

    .line 791
    if-eq v1, v0, :cond_a

    move v1, v0

    .line 799
    :cond_9
    :goto_9
    return v1

    .line 795
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop1(I)I

    move-result v0

    .line 796
    if-eq v1, v0, :cond_9

    move v1, v0

    .line 797
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
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 942
    add-int/2addr p1, v1

    .line 943
    add-int/2addr v3, v1

    .line 945
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->getWord(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, propName:Ljava/lang/String;
    sget-object v6, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup1:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

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
    iget-object v6, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v6, :cond_30

    .line 954
    iget-object v6, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v6, v0}, Lcom/android/task/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 957
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

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

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

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
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v1

    .line 972
    if-eq v5, v1, :cond_20

    .line 975
    add-int/2addr p1, v1

    .line 976
    add-int/2addr v3, v1

    .line 977
    iget-object v6, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v6, :cond_6d

    .line 978
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .local v4, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object v6, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v6, v4}, Lcom/android/task/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 982
    invoke-direct {p0, v0, v4}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v6

    if-eq v5, v6, :cond_20

    .line 986
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6d
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

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
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v5

    .line 1003
    add-int/2addr p1, v5

    .line 1004
    add-int/2addr v8, v5

    .line 1006
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->getWord(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 1007
    .local v4, propName:Ljava/lang/String;
    sget-object v11, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup2:Ljava/util/HashSet;

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 1066
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
    iget-object v11, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v11, :cond_29

    .line 1014
    iget-object v11, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v11, v4}, Lcom/android/task/vcal/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 1017
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParams(I)I

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

    invoke-virtual {p0, p1, v11, v12}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

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
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v5

    .line 1032
    if-eq v10, v5, :cond_19

    .line 1035
    add-int/2addr p1, v5

    .line 1036
    add-int/2addr v8, v5

    .line 1038
    iget-object v11, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v11, :cond_96

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
    iget-object v11, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

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

    invoke-direct {p0, v4, v11}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v11, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v11, v9}, Lcom/android/task/vcal/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 1057
    invoke-direct {p0, v4, v9}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v11

    if-eq v10, v11, :cond_19

    .line 1061
    .end local v0           #end:I
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v9           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_96
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v5

    .line 1062
    if-eq v10, v5, :cond_19

    .line 1065
    add-int/2addr v8, v5

    move v10, v8

    .line 1066
    goto/16 :goto_19
.end method

.method private parseEntprops(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 748
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 749
    .local v1, sum:I
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_c

    .line 750
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->startProperty()V

    .line 753
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop(I)I

    move-result v0

    .line 754
    if-ne v2, v0, :cond_13

    .line 782
    :goto_12
    return v2

    .line 757
    :cond_13
    add-int/2addr p1, v0

    .line 758
    add-int/2addr v1, v0

    .line 759
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_1e

    .line 760
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->endProperty()V

    .line 764
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_27

    .line 765
    add-int/2addr p1, v0

    .line 766
    add-int/2addr v1, v0

    goto :goto_1e

    .line 768
    :cond_27
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_30

    .line 769
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->startProperty()V

    .line 772
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseEntprop(I)I

    move-result v0

    .line 773
    if-ne v2, v0, :cond_38

    move v2, v1

    .line 782
    goto :goto_12

    .line 776
    :cond_38
    add-int/2addr p1, v0

    .line 777
    add-int/2addr v1, v0

    .line 778
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_1e

    .line 779
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->endProperty()V

    goto :goto_1e
.end method

.method private parseEvententity(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 484
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 486
    .local v1, sum:I
    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 487
    if-ne v2, v0, :cond_d

    .line 611
    :cond_c
    :goto_c
    return v2

    .line 490
    :cond_d
    add-int/2addr p1, v0

    .line 491
    add-int/2addr v1, v0

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 495
    add-int/2addr p1, v0

    .line 496
    add-int/2addr v1, v0

    .line 499
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 500
    if-eq v2, v0, :cond_c

    .line 503
    add-int/2addr p1, v0

    .line 504
    add-int/2addr v1, v0

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 508
    add-int/2addr p1, v0

    .line 509
    add-int/2addr v1, v0

    .line 512
    const-string v3, "VEVENT"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 513
    if-eq v2, v0, :cond_c

    .line 516
    add-int/2addr p1, v0

    .line 517
    add-int/2addr v1, v0

    .line 518
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_3a

    .line 519
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    const-string v4, "VEVENT"

    invoke-interface {v3, v4}, Lcom/android/task/vcal/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 523
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 524
    add-int/2addr p1, v0

    .line 525
    add-int/2addr v1, v0

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 529
    if-eq v2, v0, :cond_c

    .line 532
    add-int/2addr p1, v0

    .line 533
    add-int/2addr v1, v0

    .line 534
    :goto_48
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_51

    .line 535
    add-int/2addr p1, v0

    .line 536
    add-int/2addr v1, v0

    goto :goto_48

    .line 539
    :cond_51
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseEntprops(I)I

    move-result v0

    .line 540
    if-eq v2, v0, :cond_c

    .line 543
    add-int/2addr p1, v0

    .line 544
    add-int/2addr v1, v0

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 548
    add-int/2addr p1, v0

    .line 549
    add-int/2addr v1, v0

    .line 552
    :goto_5f
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_68

    .line 553
    add-int/2addr p1, v0

    .line 554
    add-int/2addr v1, v0

    goto :goto_5f

    .line 558
    :cond_68
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 559
    if-eq v2, v0, :cond_c

    .line 562
    add-int/2addr p1, v0

    .line 563
    add-int/2addr v1, v0

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 567
    add-int/2addr p1, v0

    .line 568
    add-int/2addr v1, v0

    .line 571
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 572
    if-eq v2, v0, :cond_c

    .line 575
    add-int/2addr p1, v0

    .line 576
    add-int/2addr v1, v0

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 580
    add-int/2addr p1, v0

    .line 581
    add-int/2addr v1, v0

    .line 584
    const-string v3, "VEVENT"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 585
    if-eq v2, v0, :cond_c

    .line 588
    add-int/2addr p1, v0

    .line 589
    add-int/2addr v1, v0

    .line 590
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_9b

    .line 591
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->endRecord()V

    .line 595
    :cond_9b
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 596
    add-int/2addr p1, v0

    .line 597
    add-int/2addr v1, v0

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 601
    if-eq v2, v0, :cond_c

    .line 604
    add-int/2addr p1, v0

    .line 605
    add-int/2addr v1, v0

    .line 606
    :goto_a9
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_b2

    .line 607
    add-int/2addr p1, v0

    .line 608
    add-int/2addr v1, v0

    goto :goto_a9

    :cond_b2
    move v2, v1

    .line 611
    goto/16 :goto_c
.end method

.method private parseKnownType(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1446
    const/4 v0, 0x0

    .line 1448
    .local v0, ret:I
    const-string v2, "WAVE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1449
    if-eq v1, v0, :cond_d

    move v1, v0

    .line 1468
    :cond_c
    :goto_c
    return v1

    .line 1453
    :cond_d
    const-string v2, "PCM"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1454
    if-eq v1, v0, :cond_17

    move v1, v0

    .line 1455
    goto :goto_c

    .line 1458
    :cond_17
    const-string v2, "VCARD"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1459
    if-eq v1, v0, :cond_21

    move v1, v0

    .line 1460
    goto :goto_c

    .line 1463
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1464
    if-eq v1, v0, :cond_c

    move v1, v0

    .line 1465
    goto :goto_c
.end method

.method private parseParam(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 876
    const/4 v0, 0x0

    .line 878
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParam0(I)I

    move-result v0

    .line 879
    if-eq v2, v0, :cond_a

    move v2, v0

    .line 929
    :cond_9
    :goto_9
    return v2

    .line 883
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParam1(I)I

    move-result v0

    .line 884
    if-eq v2, v0, :cond_12

    move v2, v0

    .line 885
    goto :goto_9

    .line 888
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParam2(I)I

    move-result v0

    .line 889
    if-eq v2, v0, :cond_1a

    move v2, v0

    .line 890
    goto :goto_9

    .line 893
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParam3(I)I

    move-result v0

    .line 894
    if-eq v2, v0, :cond_22

    move v2, v0

    .line 895
    goto :goto_9

    .line 898
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParam4(I)I

    move-result v0

    .line 899
    if-eq v2, v0, :cond_2a

    move v2, v0

    .line 900
    goto :goto_9

    .line 903
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParam5(I)I

    move-result v0

    .line 904
    if-eq v2, v0, :cond_32

    move v2, v0

    .line 905
    goto :goto_9

    .line 908
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParam6(I)I

    move-result v0

    .line 909
    if-eq v2, v0, :cond_3a

    move v2, v0

    .line 910
    goto :goto_9

    .line 913
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParam7(I)I

    move-result v0

    .line 914
    if-eq v2, v0, :cond_42

    move v2, v0

    .line 915
    goto :goto_9

    .line 918
    :cond_42
    move v1, p1

    .line 919
    .local v1, start:I
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseKnownType(I)I

    move-result v0

    .line 920
    if-eq v2, v0, :cond_9

    .line 923
    add-int/2addr p1, v0

    .line 924
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v2, :cond_5f

    .line 925
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 926
    iget-object v2, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_5f
    move v2, v0

    .line 929
    goto :goto_9
.end method

.method private parseParam0(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 1073
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1075
    .local v1, start:I
    const-string v4, "TYPE"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1076
    if-ne v3, v0, :cond_e

    .line 1110
    :cond_d
    :goto_d
    return v3

    .line 1079
    :cond_e
    add-int/2addr p1, v0

    .line 1080
    add-int/2addr v2, v0

    .line 1081
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v4, :cond_1f

    .line 1082
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1085
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1086
    add-int/2addr p1, v0

    .line 1087
    add-int/2addr v2, v0

    .line 1089
    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1090
    if-eq v3, v0, :cond_d

    .line 1093
    add-int/2addr p1, v0

    .line 1094
    add-int/2addr v2, v0

    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1097
    add-int/2addr p1, v0

    .line 1098
    add-int/2addr v2, v0

    .line 1100
    move v1, p1

    .line 1101
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parsePtypeval(I)I

    move-result v0

    .line 1102
    if-eq v3, v0, :cond_d

    .line 1105
    add-int/2addr p1, v0

    .line 1106
    add-int/2addr v2, v0

    .line 1107
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_4e

    .line 1108
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4e
    move v3, v2

    .line 1110
    goto :goto_d
.end method

.method private parseParam1(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 1117
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    move v2, p1

    .line 1118
    .local v2, start:I
    const/4 v0, 0x0

    .line 1120
    .local v0, flag:Z
    const-string v5, "VALUE"

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1121
    if-eq v4, v1, :cond_11

    .line 1122
    add-int/2addr p1, v1

    .line 1123
    add-int/2addr v3, v1

    .line 1124
    const/4 v0, 0x1

    .line 1126
    :cond_11
    if-ne v0, v7, :cond_22

    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v5, :cond_22

    .line 1127
    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v6, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1130
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1131
    add-int/2addr p1, v1

    .line 1132
    add-int/2addr v3, v1

    .line 1134
    const-string v5, "="

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1135
    if-eq v4, v1, :cond_55

    .line 1136
    if-nez v0, :cond_33

    .line 1162
    :cond_32
    :goto_32
    return v4

    .line 1139
    :cond_33
    add-int/2addr p1, v1

    .line 1140
    add-int/2addr v3, v1

    .line 1147
    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1148
    add-int/2addr p1, v1

    .line 1149
    add-int/2addr v3, v1

    .line 1151
    move v2, p1

    .line 1152
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parsePValueVal(I)I

    move-result v1

    .line 1153
    if-eq v4, v1, :cond_32

    .line 1156
    add-int/2addr p1, v1

    .line 1157
    add-int/2addr v3, v1

    .line 1158
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v4, :cond_53

    .line 1159
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_53
    move v4, v3

    .line 1162
    goto :goto_32

    .line 1142
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

    .line 1167
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    move v2, p1

    .line 1168
    .local v2, start:I
    const/4 v0, 0x0

    .line 1170
    .local v0, flag:Z
    const-string v5, "ENCODING"

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1171
    if-eq v4, v1, :cond_11

    .line 1172
    add-int/2addr p1, v1

    .line 1173
    add-int/2addr v3, v1

    .line 1174
    const/4 v0, 0x1

    .line 1176
    :cond_11
    if-ne v0, v7, :cond_22

    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v5, :cond_22

    .line 1177
    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v6, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1180
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1181
    add-int/2addr p1, v1

    .line 1182
    add-int/2addr v3, v1

    .line 1184
    const-string v5, "="

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1185
    if-eq v4, v1, :cond_55

    .line 1186
    if-nez v0, :cond_33

    .line 1212
    :cond_32
    :goto_32
    return v4

    .line 1189
    :cond_33
    add-int/2addr p1, v1

    .line 1190
    add-int/2addr v3, v1

    .line 1197
    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1198
    add-int/2addr p1, v1

    .line 1199
    add-int/2addr v3, v1

    .line 1201
    move v2, p1

    .line 1202
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parsePEncodingVal(I)I

    move-result v1

    .line 1203
    if-eq v4, v1, :cond_32

    .line 1206
    add-int/2addr p1, v1

    .line 1207
    add-int/2addr v3, v1

    .line 1208
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v4, :cond_53

    .line 1209
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_53
    move v4, v3

    .line 1212
    goto :goto_32

    .line 1192
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

    .line 1219
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1221
    .local v1, start:I
    const-string v4, "CHARSET"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1222
    if-ne v3, v0, :cond_e

    .line 1257
    :cond_d
    :goto_d
    return v3

    .line 1225
    :cond_e
    add-int/2addr p1, v0

    .line 1226
    add-int/2addr v2, v0

    .line 1227
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v4, :cond_1f

    .line 1228
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1231
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1232
    add-int/2addr p1, v0

    .line 1233
    add-int/2addr v2, v0

    .line 1235
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1236
    if-eq v3, v0, :cond_d

    .line 1239
    add-int/2addr p1, v0

    .line 1240
    add-int/2addr v2, v0

    .line 1242
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1243
    add-int/2addr p1, v0

    .line 1244
    add-int/2addr v2, v0

    .line 1246
    move v1, p1

    .line 1247
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCharsetVal(I)I

    move-result v0

    .line 1248
    if-eq v3, v0, :cond_d

    .line 1251
    add-int/2addr p1, v0

    .line 1252
    add-int/2addr v2, v0

    .line 1253
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_4d

    .line 1254
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4d
    move v3, v2

    .line 1257
    goto :goto_d
.end method

.method private parseParam4(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1264
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1266
    .local v1, start:I
    const-string v4, "LANGUAGE"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1267
    if-ne v3, v0, :cond_e

    .line 1302
    :cond_d
    :goto_d
    return v3

    .line 1270
    :cond_e
    add-int/2addr p1, v0

    .line 1271
    add-int/2addr v2, v0

    .line 1272
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v4, :cond_1f

    .line 1273
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1276
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1277
    add-int/2addr p1, v0

    .line 1278
    add-int/2addr v2, v0

    .line 1280
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1281
    if-eq v3, v0, :cond_d

    .line 1284
    add-int/2addr p1, v0

    .line 1285
    add-int/2addr v2, v0

    .line 1287
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1288
    add-int/2addr p1, v0

    .line 1289
    add-int/2addr v2, v0

    .line 1291
    move v1, p1

    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseLangVal(I)I

    move-result v0

    .line 1293
    if-eq v3, v0, :cond_d

    .line 1296
    add-int/2addr p1, v0

    .line 1297
    add-int/2addr v2, v0

    .line 1298
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_4d

    .line 1299
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4d
    move v3, v2

    .line 1302
    goto :goto_d
.end method

.method private parseParam5(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1309
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1311
    .local v1, start:I
    const-string v4, "ROLE"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1312
    if-ne v3, v0, :cond_e

    .line 1347
    :cond_d
    :goto_d
    return v3

    .line 1315
    :cond_e
    add-int/2addr p1, v0

    .line 1316
    add-int/2addr v2, v0

    .line 1317
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v4, :cond_1f

    .line 1318
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1321
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1322
    add-int/2addr p1, v0

    .line 1323
    add-int/2addr v2, v0

    .line 1325
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1326
    if-eq v3, v0, :cond_d

    .line 1329
    add-int/2addr p1, v0

    .line 1330
    add-int/2addr v2, v0

    .line 1332
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1333
    add-int/2addr p1, v0

    .line 1334
    add-int/2addr v2, v0

    .line 1336
    move v1, p1

    .line 1337
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseRoleVal(I)I

    move-result v0

    .line 1338
    if-eq v3, v0, :cond_d

    .line 1341
    add-int/2addr p1, v0

    .line 1342
    add-int/2addr v2, v0

    .line 1343
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_4d

    .line 1344
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4d
    move v3, v2

    .line 1347
    goto :goto_d
.end method

.method private parseParam6(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 1354
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1356
    .local v1, start:I
    const-string v4, "STATUS"

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1357
    if-ne v3, v0, :cond_e

    .line 1392
    :cond_d
    :goto_d
    return v3

    .line 1360
    :cond_e
    add-int/2addr p1, v0

    .line 1361
    add-int/2addr v2, v0

    .line 1362
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v4, :cond_1f

    .line 1363
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1366
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1367
    add-int/2addr p1, v0

    .line 1368
    add-int/2addr v2, v0

    .line 1370
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1371
    if-eq v3, v0, :cond_d

    .line 1374
    add-int/2addr p1, v0

    .line 1375
    add-int/2addr v2, v0

    .line 1377
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1378
    add-int/2addr p1, v0

    .line 1379
    add-int/2addr v2, v0

    .line 1381
    move v1, p1

    .line 1382
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseStatuVal(I)I

    move-result v0

    .line 1383
    if-eq v3, v0, :cond_d

    .line 1386
    add-int/2addr p1, v0

    .line 1387
    add-int/2addr v2, v0

    .line 1388
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_4d

    .line 1389
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4d
    move v3, v2

    .line 1392
    goto :goto_d
.end method

.method private parseParam7(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 1400
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1402
    .local v1, start:I
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1403
    if-ne v3, v0, :cond_b

    .line 1438
    :cond_a
    :goto_a
    return v3

    .line 1406
    :cond_b
    add-int/2addr p1, v0

    .line 1407
    add-int/2addr v2, v0

    .line 1408
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v4, :cond_1c

    .line 1409
    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v5, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1412
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1413
    add-int/2addr p1, v0

    .line 1414
    add-int/2addr v2, v0

    .line 1416
    const-string v4, "="

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1417
    if-eq v3, v0, :cond_a

    .line 1420
    add-int/2addr p1, v0

    .line 1421
    add-int/2addr v2, v0

    .line 1423
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1424
    add-int/2addr p1, v0

    .line 1425
    add-int/2addr v2, v0

    .line 1427
    move v1, p1

    .line 1428
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseWord(I)I

    move-result v0

    .line 1429
    if-eq v3, v0, :cond_a

    .line 1432
    add-int/2addr p1, v0

    .line 1433
    add-int/2addr v2, v0

    .line 1434
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_4b

    .line 1435
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    iget-object v4, p0, Lcom/android/task/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/task/vcal/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_4b
    move v3, v2

    .line 1438
    goto :goto_a
.end method

.method private parseParamlist(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 832
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 834
    .local v2, sum:I
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParam(I)I

    move-result v1

    .line 835
    if-ne v4, v1, :cond_a

    .line 869
    :goto_9
    return v4

    .line 838
    :cond_a
    add-int/2addr p1, v1

    .line 839
    add-int/2addr v2, v1

    .line 841
    move v0, p1

    .line 842
    .local v0, offsetTemp:I
    move v3, v2

    .line 844
    .local v3, sumTemp:I
    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 845
    add-int/2addr v0, v1

    .line 846
    add-int/2addr v3, v1

    .line 848
    const-string v5, ";"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 849
    if-ne v4, v1, :cond_1f

    move v4, v2

    .line 850
    goto :goto_9

    .line 852
    :cond_1f
    add-int/2addr v0, v1

    .line 853
    add-int/2addr v3, v1

    .line 855
    invoke-virtual {p0, v0}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 856
    add-int/2addr v0, v1

    .line 857
    add-int/2addr v3, v1

    .line 859
    invoke-direct {p0, v0}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParam(I)I

    move-result v1

    .line 860
    if-ne v4, v1, :cond_2f

    move v4, v2

    .line 869
    goto :goto_9

    .line 863
    :cond_2f
    add-int/2addr v0, v1

    .line 864
    add-int/2addr v3, v1

    .line 867
    move v2, v3

    goto :goto_e
.end method

.method private parseParams(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 806
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 808
    .local v1, sum:I
    const-string v3, ";"

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 809
    if-ne v2, v0, :cond_d

    .line 825
    :cond_c
    :goto_c
    return v2

    .line 812
    :cond_d
    add-int/2addr p1, v0

    .line 813
    add-int/2addr v1, v0

    .line 815
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 816
    add-int/2addr p1, v0

    .line 817
    add-int/2addr v1, v0

    .line 819
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseParamlist(I)I

    move-result v0

    .line 820
    if-eq v2, v0, :cond_c

    .line 823
    add-int/2addr v1, v0

    move v2, v1

    .line 825
    goto :goto_c
.end method

.method private parsePtypeval(I)I
    .registers 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 1475
    const/4 v0, 0x0

    .line 1477
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseKnownType(I)I

    move-result v0

    .line 1478
    if-eq v1, v0, :cond_a

    move v1, v0

    .line 1487
    :cond_9
    :goto_9
    return v1

    .line 1482
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1483
    if-eq v1, v0, :cond_9

    move v1, v0

    .line 1484
    goto :goto_9
.end method

.method private parseRoleVal(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1494
    const/4 v0, 0x0

    .line 1496
    .local v0, ret:I
    const-string v2, "ATTENDEE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1497
    if-eq v1, v0, :cond_d

    move v1, v0

    .line 1516
    :cond_c
    :goto_c
    return v1

    .line 1501
    :cond_d
    const-string v2, "ORGANIZER"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1502
    if-eq v1, v0, :cond_17

    move v1, v0

    .line 1503
    goto :goto_c

    .line 1506
    :cond_17
    const-string v2, "OWNER"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1507
    if-eq v1, v0, :cond_21

    move v1, v0

    .line 1508
    goto :goto_c

    .line 1511
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1512
    if-eq v1, v0, :cond_c

    move v1, v0

    .line 1513
    goto :goto_c
.end method

.method private parseStatuVal(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1524
    const/4 v0, 0x0

    .line 1526
    .local v0, ret:I
    const-string v2, "ACCEPTED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1527
    if-eq v1, v0, :cond_d

    move v1, v0

    .line 1562
    :cond_c
    :goto_c
    return v1

    .line 1531
    :cond_d
    const-string v2, "NEED ACTION"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1532
    if-eq v1, v0, :cond_17

    move v1, v0

    .line 1533
    goto :goto_c

    .line 1536
    :cond_17
    const-string v2, "TENTATIVE"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1537
    if-eq v1, v0, :cond_21

    move v1, v0

    .line 1538
    goto :goto_c

    .line 1540
    :cond_21
    const-string v2, "CONFIRMED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1541
    if-eq v1, v0, :cond_2b

    move v1, v0

    .line 1542
    goto :goto_c

    .line 1544
    :cond_2b
    const-string v2, "DECLINED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1545
    if-eq v1, v0, :cond_35

    move v1, v0

    .line 1546
    goto :goto_c

    .line 1548
    :cond_35
    const-string v2, "COMPLETED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1549
    if-eq v1, v0, :cond_3f

    move v1, v0

    .line 1550
    goto :goto_c

    .line 1552
    :cond_3f
    const-string v2, "DELEGATED"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1553
    if-eq v1, v0, :cond_49

    move v1, v0

    .line 1554
    goto :goto_c

    .line 1557
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1558
    if-eq v1, v0, :cond_c

    move v1, v0

    .line 1559
    goto :goto_c
.end method

.method private parseTodoentity(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 619
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 621
    .local v1, sum:I
    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 622
    if-ne v2, v0, :cond_d

    .line 741
    :cond_c
    :goto_c
    return v2

    .line 625
    :cond_d
    add-int/2addr p1, v0

    .line 626
    add-int/2addr v1, v0

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 630
    add-int/2addr p1, v0

    .line 631
    add-int/2addr v1, v0

    .line 634
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 635
    if-eq v2, v0, :cond_c

    .line 638
    add-int/2addr p1, v0

    .line 639
    add-int/2addr v1, v0

    .line 642
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 643
    add-int/2addr p1, v0

    .line 644
    add-int/2addr v1, v0

    .line 647
    const-string v3, "VTODO"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 648
    if-eq v2, v0, :cond_c

    .line 651
    add-int/2addr p1, v0

    .line 652
    add-int/2addr v1, v0

    .line 653
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_3a

    .line 654
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    const-string v4, "VTODO"

    invoke-interface {v3, v4}, Lcom/android/task/vcal/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 658
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 659
    if-eq v2, v0, :cond_c

    .line 662
    add-int/2addr p1, v0

    .line 663
    add-int/2addr v1, v0

    .line 664
    :goto_42
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_4b

    .line 665
    add-int/2addr p1, v0

    .line 666
    add-int/2addr v1, v0

    goto :goto_42

    .line 669
    :cond_4b
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseEntprops(I)I

    move-result v0

    .line 670
    if-eq v2, v0, :cond_c

    .line 673
    add-int/2addr p1, v0

    .line 674
    add-int/2addr v1, v0

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 678
    add-int/2addr p1, v0

    .line 679
    add-int/2addr v1, v0

    .line 682
    :goto_59
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_62

    .line 683
    add-int/2addr p1, v0

    .line 684
    add-int/2addr v1, v0

    goto :goto_59

    .line 688
    :cond_62
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 689
    if-eq v2, v0, :cond_c

    .line 692
    add-int/2addr p1, v0

    .line 693
    add-int/2addr v1, v0

    .line 696
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 697
    add-int/2addr p1, v0

    .line 698
    add-int/2addr v1, v0

    .line 701
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 702
    if-eq v2, v0, :cond_c

    .line 705
    add-int/2addr p1, v0

    .line 706
    add-int/2addr v1, v0

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 710
    add-int/2addr p1, v0

    .line 711
    add-int/2addr v1, v0

    .line 714
    const-string v3, "VTODO"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 715
    if-eq v2, v0, :cond_c

    .line 718
    add-int/2addr p1, v0

    .line 719
    add-int/2addr v1, v0

    .line 720
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_95

    .line 721
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->endRecord()V

    .line 725
    :cond_95
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 726
    add-int/2addr p1, v0

    .line 727
    add-int/2addr v1, v0

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 731
    if-eq v2, v0, :cond_c

    .line 734
    add-int/2addr p1, v0

    .line 735
    add-int/2addr v1, v0

    .line 736
    :goto_a3
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_ac

    .line 737
    add-int/2addr p1, v0

    .line 738
    add-int/2addr v1, v0

    goto :goto_a3

    :cond_ac
    move v2, v1

    .line 741
    goto/16 :goto_c
.end method

.method private parseVCal(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 112
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 115
    .local v1, sum:I
    const-string v3, "BEGIN"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 116
    if-ne v2, v0, :cond_d

    .line 250
    :cond_c
    :goto_c
    return v2

    .line 119
    :cond_d
    add-int/2addr p1, v0

    .line 120
    add-int/2addr v1, v0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 124
    add-int/2addr p1, v0

    .line 125
    add-int/2addr v1, v0

    .line 128
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 129
    if-eq v2, v0, :cond_c

    .line 132
    add-int/2addr p1, v0

    .line 133
    add-int/2addr v1, v0

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 137
    add-int/2addr p1, v0

    .line 138
    add-int/2addr v1, v0

    .line 141
    const-string v3, "VCALENDAR"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 142
    if-eq v2, v0, :cond_c

    .line 145
    add-int/2addr p1, v0

    .line 146
    add-int/2addr v1, v0

    .line 147
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_3a

    .line 148
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    const-string v4, "VCALENDAR"

    invoke-interface {v3, v4}, Lcom/android/task/vcal/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 152
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 153
    add-int/2addr p1, v0

    .line 154
    add-int/2addr v1, v0

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 158
    if-eq v2, v0, :cond_c

    .line 161
    add-int/2addr p1, v0

    .line 162
    add-int/2addr v1, v0

    .line 163
    :goto_48
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_51

    .line 164
    add-int/2addr p1, v0

    .line 165
    add-int/2addr v1, v0

    goto :goto_48

    .line 169
    :cond_51
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalprops(I)I

    move-result v0

    .line 170
    if-eq v2, v0, :cond_c

    .line 173
    add-int/2addr p1, v0

    .line 174
    add-int/2addr v1, v0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCalentities(I)I

    move-result v0

    .line 178
    if-eq v2, v0, :cond_c

    .line 181
    add-int/2addr p1, v0

    .line 182
    add-int/2addr v1, v0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 186
    add-int/2addr p1, v0

    .line 187
    add-int/2addr v1, v0

    .line 190
    :goto_67
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_70

    .line 191
    add-int/2addr p1, v0

    .line 192
    add-int/2addr v1, v0

    goto :goto_67

    .line 196
    :cond_70
    const-string v3, "END"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 197
    if-eq v2, v0, :cond_c

    .line 200
    add-int/2addr p1, v0

    .line 201
    add-int/2addr v1, v0

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 205
    add-int/2addr p1, v0

    .line 206
    add-int/2addr v1, v0

    .line 210
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 211
    if-eq v2, v0, :cond_c

    .line 214
    add-int/2addr p1, v0

    .line 215
    add-int/2addr v1, v0

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 219
    add-int/2addr p1, v0

    .line 220
    add-int/2addr v1, v0

    .line 223
    const-string v3, "VCALENDAR"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 224
    if-eq v2, v0, :cond_c

    .line 227
    add-int/2addr p1, v0

    .line 228
    add-int/2addr v1, v0

    .line 229
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    if-eqz v3, :cond_a3

    .line 230
    iget-object v3, p0, Lcom/android/task/vcal/pim/VParser;->mBuilder:Lcom/android/task/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/task/vcal/pim/VBuilder;->endRecord()V

    .line 234
    :cond_a3
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 235
    add-int/2addr p1, v0

    .line 236
    add-int/2addr v1, v0

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 240
    if-eq v2, v0, :cond_c

    .line 243
    add-int/2addr p1, v0

    .line 244
    add-int/2addr v1, v0

    .line 245
    :goto_b1
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_ba

    .line 246
    add-int/2addr p1, v0

    .line 247
    add-int/2addr v1, v0

    goto :goto_b1

    :cond_ba
    move v2, v1

    .line 250
    goto/16 :goto_c
.end method

.method private parseVCalFile(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 83
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 86
    .local v1, sum:I
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseWsls(I)I

    move-result v0

    if-eq v2, v0, :cond_c

    .line 87
    add-int/2addr p1, v0

    .line 88
    add-int/2addr v1, v0

    goto :goto_3

    .line 91
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseVCal(I)I

    move-result v0

    .line 92
    if-eq v2, v0, :cond_1e

    .line 93
    add-int/2addr p1, v0

    .line 94
    add-int/2addr v1, v0

    .line 100
    :goto_14
    invoke-virtual {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseWsls(I)I

    move-result v0

    if-eq v2, v0, :cond_1d

    .line 101
    add-int/2addr p1, v0

    .line 102
    add-int/2addr v1, v0

    goto :goto_14

    :cond_1d
    move v2, v1

    .line 104
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

    .line 1571
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

    .line 1583
    :goto_12
    return v2

    .line 1574
    :cond_13
    sget-object v2, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1575
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

    .line 1576
    .local v1, value:Ljava/lang/String;
    sget-object v2, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1577
    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1578
    const/4 v2, -0x1

    goto :goto_12

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #value:Ljava/lang/String;
    :cond_43
    move v2, v3

    .line 1583
    goto :goto_12
.end method


# virtual methods
.method protected parseVFile(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/task/vcal/pim/vcalendar/VCalParser_V10;->parseVCalFile(I)I

    move-result v0

    return v0
.end method

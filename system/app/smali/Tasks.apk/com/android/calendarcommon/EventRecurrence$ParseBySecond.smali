.class Lcom/android/calendarcommon/EventRecurrence$ParseBySecond;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseBySecond"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseBySecond;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .registers 7
    .parameter "value"
    .parameter "er"

    .prologue
    .line 772
    const/4 v1, 0x0

    const/16 v2, 0x3b

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseBySecond;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 773
    .local v0, bysecond:[I
    iput-object v0, p2, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    .line 774
    array-length v1, v0

    iput v1, p2, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    .line 775
    const/16 v1, 0x10

    return v1
.end method
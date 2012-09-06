.class Lcom/android/calendarcommon/EventRecurrence$ParseUntil;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseUntil"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseUntil;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .registers 4
    .parameter "value"
    .parameter "er"

    .prologue
    .line 743
    iput-object p1, p2, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 744
    const/4 v0, 0x2

    return v0
.end method

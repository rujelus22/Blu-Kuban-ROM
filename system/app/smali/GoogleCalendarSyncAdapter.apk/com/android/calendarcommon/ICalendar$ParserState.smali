.class final Lcom/android/calendarcommon/ICalendar$ParserState;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/ICalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserState"
.end annotation


# instance fields
.field public index:I

.field public line:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/ICalendar$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/calendarcommon/ICalendar$ParserState;-><init>()V

    return-void
.end method

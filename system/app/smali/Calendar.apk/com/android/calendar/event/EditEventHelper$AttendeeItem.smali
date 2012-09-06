.class public Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
.super Ljava/lang/Object;
.source "EditEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttendeeItem"
.end annotation


# instance fields
.field public mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

.field public mBadge:Landroid/graphics/drawable/Drawable;

.field public mRemoved:Z

.field public mUpdateCounts:I

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarEventModel$Attendee;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "attendee"
    .parameter "badge"

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 219
    iput-object p2, p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 220
    return-void
.end method

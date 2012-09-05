.class public Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarTimezone;
.super Ljava/lang/Object;
.source "CalendarPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/calendar/CalendarPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarTimezone"
.end annotation


# instance fields
.field public index:I

.field public name:Ljava/lang/String;

.field public offset:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

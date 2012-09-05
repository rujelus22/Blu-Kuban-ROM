.class public Lcom/samsung/swift/service/calendar/CalendarPlugin$CalendarDstinfo;
.super Ljava/lang/Object;
.source "CalendarPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/calendar/CalendarPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarDstinfo"
.end annotation


# instance fields
.field public dstActive:Z

.field public dstOffset:J

.field public nextTransition:J

.field public previousTransition:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

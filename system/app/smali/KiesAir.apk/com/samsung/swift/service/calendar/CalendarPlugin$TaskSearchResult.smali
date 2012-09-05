.class public Lcom/samsung/swift/service/calendar/CalendarPlugin$TaskSearchResult;
.super Ljava/lang/Object;
.source "CalendarPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/calendar/CalendarPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskSearchResult"
.end annotation


# instance fields
.field public estimatedResultSize:J

.field public resultArray:[Lcom/samsung/swift/service/calendar/Task;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$3;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)V
    .registers 2
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$3;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$3;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->clearCachedEvents()V

    .line 387
    return-void
.end method

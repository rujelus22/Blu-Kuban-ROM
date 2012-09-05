.class Lcom/android/calendar/DayEventListView$1;
.super Ljava/lang/Object;
.source "DayEventListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayEventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayEventListView;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/calendar/DayEventListView$1;->this$0:Lcom/android/calendar/DayEventListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/calendar/DayEventListView$1;->this$0:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->clearCachedEvents()V

    .line 436
    return-void
.end method

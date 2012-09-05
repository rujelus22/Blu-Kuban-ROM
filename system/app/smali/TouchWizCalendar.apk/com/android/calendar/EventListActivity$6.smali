.class Lcom/android/calendar/EventListActivity$6;
.super Landroid/database/ContentObserver;
.source "EventListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventListActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/calendar/EventListActivity$6;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 693
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$6;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-virtual {v0}, Lcom/android/calendar/EventListActivity;->reloadEvents()V

    .line 705
    return-void
.end method

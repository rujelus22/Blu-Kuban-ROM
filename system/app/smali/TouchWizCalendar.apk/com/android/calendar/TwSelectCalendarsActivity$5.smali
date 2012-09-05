.class Lcom/android/calendar/TwSelectCalendarsActivity$5;
.super Landroid/database/ContentObserver;
.source "TwSelectCalendarsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/TwSelectCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/TwSelectCalendarsActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/TwSelectCalendarsActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$5;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$5;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-virtual {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 347
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$5;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #getter for: Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$600(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 349
    :cond_11
    return-void
.end method

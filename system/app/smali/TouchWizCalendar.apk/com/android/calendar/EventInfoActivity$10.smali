.class Lcom/android/calendar/EventInfoActivity$10;
.super Landroid/database/ContentObserver;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 3452
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$10;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 3455
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 3460
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$10;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoActivity;->reloadEvents()V

    .line 3461
    return-void
.end method

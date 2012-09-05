.class Lcom/android/calendar/RecentlyParticipants$3;
.super Landroid/database/ContentObserver;
.source "RecentlyParticipants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/RecentlyParticipants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/RecentlyParticipants;


# direct methods
.method constructor <init>(Lcom/android/calendar/RecentlyParticipants;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/calendar/RecentlyParticipants$3;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$3;->this$0:Lcom/android/calendar/RecentlyParticipants;

    #calls: Lcom/android/calendar/RecentlyParticipants;->reloadEvents()V
    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$300(Lcom/android/calendar/RecentlyParticipants;)V

    .line 429
    return-void
.end method

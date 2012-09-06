.class Lcom/android/calendar/CalendarSettingsActivity$1;
.super Ljava/lang/Object;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/calendar/CalendarSettingsActivity$1;->this$0:Lcom/android/calendar/CalendarSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity$1;->this$0:Lcom/android/calendar/CalendarSettingsActivity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 119
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity$1;->this$0:Lcom/android/calendar/CalendarSettingsActivity;

    #getter for: Lcom/android/calendar/CalendarSettingsActivity;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/calendar/CalendarSettingsActivity;->access$000(Lcom/android/calendar/CalendarSettingsActivity;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 120
    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity$1;->this$0:Lcom/android/calendar/CalendarSettingsActivity;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarSettingsActivity;->invalidateHeaders()V

    .line 122
    :cond_1d
    return-void
.end method

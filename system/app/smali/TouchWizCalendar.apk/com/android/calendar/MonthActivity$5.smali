.class Lcom/android/calendar/MonthActivity$5;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$5;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 1117
    iget-object v3, p0, Lcom/android/calendar/MonthActivity$5;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v3}, Lcom/android/calendar/MonthActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1130
    :goto_9
    return-void

    .line 1119
    :cond_a
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1120
    iget-object v3, p0, Lcom/android/calendar/MonthActivity$5;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1122
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_day_view"

    sget-object v4, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, startActivityId:Ljava/lang/String;
    sget-object v3, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v3, v4

    .line 1126
    .local v1, startActivity:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/calendar/MonthActivity$5;->this$0:Lcom/android/calendar/MonthActivity;

    iget-object v3, p0, Lcom/android/calendar/MonthActivity$5;->this$0:Lcom/android/calendar/MonthActivity;

    #getter for: Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v3}, Lcom/android/calendar/MonthActivity;->access$400(Lcom/android/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/MonthInterface;

    invoke-interface {v3}, Lcom/android/calendar/MonthInterface;->getSelectedMillis()J

    move-result-wide v5

    invoke-static {v4, v1, v5, v6}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1128
    iget-object v3, p0, Lcom/android/calendar/MonthActivity$5;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v3}, Lcom/android/calendar/MonthActivity;->finish()V

    .line 1129
    iget-object v3, p0, Lcom/android/calendar/MonthActivity$5;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v3, v7, v7}, Lcom/android/calendar/MonthActivity;->overridePendingTransition(II)V

    goto :goto_9
.end method

.class Lcom/android/calendar/AgendaActivity$8;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->setupTabView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 895
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v3}, Lcom/android/calendar/AgendaActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 907
    :goto_9
    return-void

    .line 897
    :cond_a
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 898
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 900
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_day_view"

    sget-object v4, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, startActivityId:Ljava/lang/String;
    sget-object v3, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v3, v4

    .line 904
    .local v1, startActivity:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaActivity;->getSelectedDayInMillis()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 905
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v3}, Lcom/android/calendar/AgendaActivity;->finish()V

    .line 906
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v3, v6, v6}, Lcom/android/calendar/AgendaActivity;->overridePendingTransition(II)V

    goto :goto_9
.end method

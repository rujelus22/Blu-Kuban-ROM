.class Lcom/android/calendar/DayEventListActivity$4;
.super Ljava/lang/Object;
.source "DayEventListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayEventListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayEventListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity$4;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity$4;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    :goto_9
    return-void

    .line 234
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity$4;->this$0:Lcom/android/calendar/DayEventListActivity;

    const-class v1, Lcom/android/calendar/WeekActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity$4;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v2}, Lcom/android/calendar/DayEventListActivity;->getSelectedTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 237
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity$4;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListActivity;->finish()V

    .line 238
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity$4;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v0, v4, v4}, Lcom/android/calendar/DayEventListActivity;->overridePendingTransition(II)V

    goto :goto_9
.end method

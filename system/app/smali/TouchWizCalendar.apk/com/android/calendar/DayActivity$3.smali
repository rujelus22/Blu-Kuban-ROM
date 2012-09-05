.class Lcom/android/calendar/DayActivity$3;
.super Ljava/lang/Object;
.source "DayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/calendar/DayActivity$3;->this$0:Lcom/android/calendar/DayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/calendar/DayActivity$3;->this$0:Lcom/android/calendar/DayActivity;

    invoke-virtual {v0}, Lcom/android/calendar/DayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 179
    :goto_9
    return-void

    .line 174
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/calendar/DayActivity$3;->this$0:Lcom/android/calendar/DayActivity;

    const-class v1, Lcom/android/calendar/WeekActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/DayActivity$3;->this$0:Lcom/android/calendar/DayActivity;

    invoke-virtual {v2}, Lcom/android/calendar/DayActivity;->getSelectedDayInMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 177
    iget-object v0, p0, Lcom/android/calendar/DayActivity$3;->this$0:Lcom/android/calendar/DayActivity;

    invoke-virtual {v0}, Lcom/android/calendar/DayActivity;->finish()V

    .line 178
    iget-object v0, p0, Lcom/android/calendar/DayActivity$3;->this$0:Lcom/android/calendar/DayActivity;

    invoke-virtual {v0, v4, v4}, Lcom/android/calendar/DayActivity;->overridePendingTransition(II)V

    goto :goto_9
.end method

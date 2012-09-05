.class Lcom/android/calendar/EditEvent$46;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->initAlarmCustomizeDialog(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$alarm_day:Ljava/lang/String;

.field final synthetic val$alarm_hour:Ljava/lang/String;

.field final synthetic val$alarm_min:Ljava/lang/String;

.field final synthetic val$alarm_week:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1788
    iput-object p1, p0, Lcom/android/calendar/EditEvent$46;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_min:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_hour:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_day:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_week:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1790
    move-object v1, p1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1792
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_min:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1793
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iget-object v1, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_hour:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1801
    :cond_18
    :goto_18
    return-void

    .line 1794
    .restart local p1
    :cond_19
    iget-object v1, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_hour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1795
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iget-object v1, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_day:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 1796
    .restart local p1
    :cond_29
    iget-object v1, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_day:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1797
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iget-object v1, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_week:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 1798
    .restart local p1
    :cond_39
    iget-object v1, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_week:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1799
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iget-object v1, p0, Lcom/android/calendar/EditEvent$46;->val$alarm_min:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

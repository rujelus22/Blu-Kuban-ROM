.class Lcom/android/calendar/EditEvent$8;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/android/calendar/EditEvent$8;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1160
    iget-object v3, p0, Lcom/android/calendar/EditEvent$8;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$2200(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1161
    .local v2, selectedAlarmType:I
    iget-object v3, p0, Lcom/android/calendar/EditEvent$8;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$2200(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p2, v3, :cond_69

    .line 1162
    iget-object v3, p0, Lcom/android/calendar/EditEvent$8;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$2400(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/EditEvent$8;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$2300(Lcom/android/calendar/EditEvent;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1164
    .local v1, container:Landroid/widget/LinearLayout;
    const v3, 0x7f0f0038

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    .line 1166
    .local v0, alarmItem:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/calendar/EditEvent$8;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$2500(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1168
    iget-object v3, p0, Lcom/android/calendar/EditEvent$8;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mReminderMinutes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$2600(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/EditEvent$8;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mSelectedReminderItem:I
    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$2300(Lcom/android/calendar/EditEvent;)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .end local v0           #alarmItem:Landroid/widget/Button;
    .end local v1           #container:Landroid/widget/LinearLayout;
    :goto_65
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1174
    return-void

    .line 1171
    :cond_69
    iget-object v3, p0, Lcom/android/calendar/EditEvent$8;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto :goto_65
.end method

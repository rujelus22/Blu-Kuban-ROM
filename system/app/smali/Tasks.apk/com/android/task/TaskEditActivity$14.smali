.class Lcom/android/task/TaskEditActivity$14;
.super Ljava/lang/Object;
.source "TaskEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskEditActivity;->dialogReminderTypeSelectOption()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskEditActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1284
    move v0, p2

    .line 1286
    .local v0, button:I
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mDueMillis:Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$100(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 1287
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_36

    .line 1288
    if-nez v0, :cond_33

    .line 1298
    :cond_16
    :goto_16
    const/4 v2, 0x3

    if-ne v0, v2, :cond_49

    .line 1299
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v3, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/task/TaskEditActivity;->access$1300(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v3

    #setter for: Lcom/android/task/TaskEditActivity;->mDateButton:Landroid/widget/TextView;
    invoke-static {v2, v3}, Lcom/android/task/TaskEditActivity;->access$1002(Lcom/android/task/TaskEditActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1300
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v3, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderMillis:J
    invoke-static {v3}, Lcom/android/task/TaskEditActivity;->access$1400(Lcom/android/task/TaskEditActivity;)J

    move-result-wide v3

    #calls: Lcom/android/task/TaskEditActivity;->dialogDatePicker(J)V
    invoke-static {v2, v3, v4}, Lcom/android/task/TaskEditActivity;->access$2200(Lcom/android/task/TaskEditActivity;J)V

    .line 1301
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1327
    :goto_32
    return-void

    .line 1288
    :cond_33
    add-int/lit8 v0, v0, 0x2

    goto :goto_16

    .line 1290
    :cond_36
    if-ne v0, v3, :cond_3a

    add-int/lit8 v0, v0, 0x1

    :cond_3a
    goto :goto_16

    .line 1293
    :cond_3b
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mStartMillis:Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$200(Lcom/android/task/TaskEditActivity;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_16

    .line 1294
    if-nez v0, :cond_46

    :goto_45
    goto :goto_16

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 1304
    :cond_49
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #setter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v2, v0}, Lcom/android/task/TaskEditActivity;->access$602(Lcom/android/task/TaskEditActivity;I)I

    .line 1306
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$600(Lcom/android/task/TaskEditActivity;)I

    move-result v2

    if-ne v2, v5, :cond_9d

    .line 1307
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #setter for: Lcom/android/task/TaskEditActivity;->reminderSetOnStartDate:Z
    invoke-static {v2, v5}, Lcom/android/task/TaskEditActivity;->access$1802(Lcom/android/task/TaskEditActivity;Z)Z

    .line 1312
    :cond_5b
    :goto_5b
    :try_start_5b
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1300(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/task/TaskEditActivity;->access$2300(Lcom/android/task/TaskEditActivity;)[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v4}, Lcom/android/task/TaskEditActivity;->access$600(Lcom/android/task/TaskEditActivity;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_72
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5b .. :try_end_72} :catch_ab

    .line 1317
    :goto_72
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1318
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    iget-object v3, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v3}, Lcom/android/task/TaskEditActivity;->access$600(Lcom/android/task/TaskEditActivity;)I

    move-result v3

    #calls: Lcom/android/task/TaskEditActivity;->ReminderTypeSetItem(I)V
    invoke-static {v2, v3}, Lcom/android/task/TaskEditActivity;->access$2400(Lcom/android/task/TaskEditActivity;I)V

    .line 1320
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$600(Lcom/android/task/TaskEditActivity;)I

    move-result v2

    if-nez v2, :cond_c9

    .line 1321
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1500(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1322
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1500(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_32

    .line 1308
    :cond_9d
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$600(Lcom/android/task/TaskEditActivity;)I

    move-result v2

    if-ne v2, v3, :cond_5b

    .line 1309
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #setter for: Lcom/android/task/TaskEditActivity;->reminderSetOnDueDate:Z
    invoke-static {v2, v5}, Lcom/android/task/TaskEditActivity;->access$2002(Lcom/android/task/TaskEditActivity;Z)Z

    goto :goto_5b

    .line 1313
    :catch_ab
    move-exception v1

    .line 1314
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #setter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v2, v6}, Lcom/android/task/TaskEditActivity;->access$602(Lcom/android/task/TaskEditActivity;I)I

    .line 1315
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTypeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1300(Lcom/android/task/TaskEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminder_items:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/task/TaskEditActivity;->access$2300(Lcom/android/task/TaskEditActivity;)[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderType:I
    invoke-static {v4}, Lcom/android/task/TaskEditActivity;->access$600(Lcom/android/task/TaskEditActivity;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 1324
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_c9
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1500(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1325
    iget-object v2, p0, Lcom/android/task/TaskEditActivity$14;->this$0:Lcom/android/task/TaskEditActivity;

    #getter for: Lcom/android/task/TaskEditActivity;->mReminderTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/task/TaskEditActivity;->access$1500(Lcom/android/task/TaskEditActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_32
.end method

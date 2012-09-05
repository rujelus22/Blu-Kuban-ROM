.class Lcom/android/email/activity/MessageListXL$19;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 2
    .parameter

    .prologue
    .line 3945
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$19;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 13
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3949
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$19;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mYear:I
    invoke-static {v3, p2}, Lcom/android/email/activity/MessageListXL;->access$5202(Lcom/android/email/activity/MessageListXL;I)I

    .line 3950
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$19;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mMonth:I
    invoke-static {v3, p3}, Lcom/android/email/activity/MessageListXL;->access$5302(Lcom/android/email/activity/MessageListXL;I)I

    .line 3951
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$19;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mDay:I
    invoke-static {v3, p4}, Lcom/android/email/activity/MessageListXL;->access$5402(Lcom/android/email/activity/MessageListXL;I)I

    .line 3953
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDateSet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3957
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 3958
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 3959
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 3960
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 3961
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 3963
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 3965
    .local v1, when:J
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageListXL;->access$5502(J)J

    .line 3966
    const-wide/32 v3, 0x5265818

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageListXL;->access$5602(J)J

    .line 3967
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$19;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL$19;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->formatDate(JZ)Ljava/lang/String;
    invoke-static {v4, v1, v2, v7}, Lcom/android/email/activity/MessageListXL;->access$5700(Lcom/android/email/activity/MessageListXL;JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3968
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$19;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->formatDate(JZ)Ljava/lang/String;
    invoke-static {v3, v1, v2, v7}, Lcom/android/email/activity/MessageListXL;->access$5700(Lcom/android/email/activity/MessageListXL;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$4602(Ljava/lang/String;)Ljava/lang/String;

    .line 3969
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$19;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 3970
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$19;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateOrderManager()V
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$4300(Lcom/android/email/activity/MessageListXL;)V

    .line 3971
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$19;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v3, v6}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3972
    return-void
.end method

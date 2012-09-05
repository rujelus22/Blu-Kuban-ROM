.class Lcom/android/task/TaskViewActivity$2;
.super Ljava/lang/Object;
.source "TaskViewActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskViewActivity;->setCompleteTitleView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskViewActivity;

.field final synthetic val$r:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/task/TaskViewActivity;Landroid/content/res/Resources;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/task/TaskViewActivity$2;->this$0:Lcom/android/task/TaskViewActivity;

    iput-object p2, p0, Lcom/android/task/TaskViewActivity$2;->val$r:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 9
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 486
    const-string v1, "TaskViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeView - onCheckedChanged, isChecked= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, checked:I
    if-eqz p2, :cond_52

    .line 490
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$2;->this$0:Lcom/android/task/TaskViewActivity;

    #getter for: Lcom/android/task/TaskViewActivity;->mCompleteCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/task/TaskViewActivity;->access$100(Lcom/android/task/TaskViewActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 491
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$2;->this$0:Lcom/android/task/TaskViewActivity;

    const v2, 0x7f0c0032

    #calls: Lcom/android/task/TaskViewActivity;->setVisibilityCommon(II)V
    invoke-static {v1, v2, v5}, Lcom/android/task/TaskViewActivity;->access$200(Lcom/android/task/TaskViewActivity;II)V

    .line 492
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$2;->this$0:Lcom/android/task/TaskViewActivity;

    #getter for: Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/task/TaskViewActivity;->access$300(Lcom/android/task/TaskViewActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskViewActivity$2;->val$r:Landroid/content/res/Resources;

    const v3, 0x7f07000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$2;->this$0:Lcom/android/task/TaskViewActivity;

    #getter for: Lcom/android/task/TaskViewActivity;->mTaskListCompleteImage:Landroid/view/View;
    invoke-static {v1}, Lcom/android/task/TaskViewActivity;->access$400(Lcom/android/task/TaskViewActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 494
    const/4 v0, 0x1

    .line 503
    :goto_4c
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$2;->this$0:Lcom/android/task/TaskViewActivity;

    #calls: Lcom/android/task/TaskViewActivity;->saveCompleteState(I)V
    invoke-static {v1, v0}, Lcom/android/task/TaskViewActivity;->access$600(Lcom/android/task/TaskViewActivity;I)V

    .line 504
    return-void

    .line 497
    :cond_52
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$2;->this$0:Lcom/android/task/TaskViewActivity;

    #getter for: Lcom/android/task/TaskViewActivity;->mCompleteCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/task/TaskViewActivity;->access$100(Lcom/android/task/TaskViewActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 498
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$2;->this$0:Lcom/android/task/TaskViewActivity;

    #calls: Lcom/android/task/TaskViewActivity;->initDdayView()V
    invoke-static {v1}, Lcom/android/task/TaskViewActivity;->access$500(Lcom/android/task/TaskViewActivity;)V

    .line 499
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$2;->this$0:Lcom/android/task/TaskViewActivity;

    #getter for: Lcom/android/task/TaskViewActivity;->mSubjectTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/task/TaskViewActivity;->access$300(Lcom/android/task/TaskViewActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/task/TaskViewActivity$2;->val$r:Landroid/content/res/Resources;

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    iget-object v1, p0, Lcom/android/task/TaskViewActivity$2;->this$0:Lcom/android/task/TaskViewActivity;

    #getter for: Lcom/android/task/TaskViewActivity;->mTaskListCompleteImage:Landroid/view/View;
    invoke-static {v1}, Lcom/android/task/TaskViewActivity;->access$400(Lcom/android/task/TaskViewActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 501
    const/4 v0, 0x0

    goto :goto_4c
.end method

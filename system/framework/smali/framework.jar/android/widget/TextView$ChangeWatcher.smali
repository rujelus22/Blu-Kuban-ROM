.class Landroid/widget/TextView$ChangeWatcher;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private mBeforeText:Ljava/lang/CharSequence;

.field private mEasyEditSpanController:Landroid/widget/TextView$EasyEditSpanController;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 4
    .parameter

    .prologue
    .line 8488
    iput-object p1, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8489
    new-instance v0, Landroid/widget/TextView$EasyEditSpanController;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/TextView$EasyEditSpanController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mEasyEditSpanController:Landroid/widget/TextView$EasyEditSpanController;

    .line 8490
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8482
    invoke-direct {p0, p1}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/widget/TextView$ChangeWatcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 8482
    invoke-direct {p0}, Landroid/widget/TextView$ChangeWatcher;->hideControllers()V

    return-void
.end method

.method private hideControllers()V
    .registers 2

    .prologue
    .line 8550
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mEasyEditSpanController:Landroid/widget/TextView$EasyEditSpanController;

    #calls: Landroid/widget/TextView$EasyEditSpanController;->hide()V
    invoke-static {v0}, Landroid/widget/TextView$EasyEditSpanController;->access$1100(Landroid/widget/TextView$EasyEditSpanController;)V

    .line 8551
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "buffer"

    .prologue
    .line 8523
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 8525
    const/16 v0, 0x800

    invoke-static {p1, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_12

    .line 8526
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 8528
    :cond_12
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 8497
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$1500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mInputType:I
    invoke-static {v0}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)I

    move-result v0

    #calls: Landroid/widget/TextView;->isPasswordInputType(I)Z
    invoke-static {v0}, Landroid/widget/TextView;->access$1700(I)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hasPasswordTransformationMethod()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$1800(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 8500
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    .line 8503
    :cond_2a
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->access$1900(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    .line 8504
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 12
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"

    .prologue
    const/4 v3, -0x1

    .line 8540
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, v3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 8541
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 14
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    .line 8534
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 8535
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 12
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"

    .prologue
    const/4 v4, -0x1

    .line 8546
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 8547
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 8510
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->handleTextChanged(Ljava/lang/CharSequence;III)V

    .line 8512
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mEasyEditSpanController:Landroid/widget/TextView$EasyEditSpanController;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$EasyEditSpanController;->onTextChange(Ljava/lang/CharSequence;)V

    .line 8514
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$2000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 8516
    :cond_32
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 8517
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    .line 8519
    :cond_3c
    return-void
.end method

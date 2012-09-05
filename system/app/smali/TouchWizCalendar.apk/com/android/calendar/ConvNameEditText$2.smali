.class Lcom/android/calendar/ConvNameEditText$2;
.super Ljava/lang/Object;
.source "ConvNameEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ConvNameEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ConvNameEditText;


# direct methods
.method constructor <init>(Lcom/android/calendar/ConvNameEditText;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 439
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->isPerformingCompletion()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 511
    :cond_9
    :goto_9
    return-void

    .line 445
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, text:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_35

    .line 449
    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 451
    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView;->mToEditHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 465
    :cond_35
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 467
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    #calls: Lcom/android/calendar/ConvNameEditText;->getFilter()Landroid/widget/Filter;
    invoke-static {v1}, Lcom/android/calendar/ConvNameEditText;->access$100(Lcom/android/calendar/ConvNameEditText;)Landroid/widget/Filter;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 469
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    #calls: Lcom/android/calendar/ConvNameEditText;->performFiltering(Ljava/lang/CharSequence;I)V
    invoke-static {v1, p1, v3}, Lcom/android/calendar/ConvNameEditText;->access$200(Lcom/android/calendar/ConvNameEditText;Ljava/lang/CharSequence;I)V

    goto :goto_9

    .line 503
    :cond_4b
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    #calls: Lcom/android/calendar/ConvNameEditText;->getFilter()Landroid/widget/Filter;
    invoke-static {v1}, Lcom/android/calendar/ConvNameEditText;->access$300(Lcom/android/calendar/ConvNameEditText;)Landroid/widget/Filter;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 505
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$2;->this$0:Lcom/android/calendar/ConvNameEditText;

    #calls: Lcom/android/calendar/ConvNameEditText;->getFilter()Landroid/widget/Filter;
    invoke-static {v1}, Lcom/android/calendar/ConvNameEditText;->access$400(Lcom/android/calendar/ConvNameEditText;)Landroid/widget/Filter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 433
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 411
    return-void
.end method

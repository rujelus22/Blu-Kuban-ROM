.class Lcom/android/email/activity/MessageCompose$AddAddessTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddAddessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final bubbleButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/bubblelayout/BubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field private isCancelledFlag:Z

.field private isDuplicatedFlag:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 14334
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14335
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isCancelledFlag:Z

    .line 14336
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isDuplicatedFlag:Z

    .line 14338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->bubbleButtonList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14334
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$AddAddessTask;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method

.method static synthetic access$15302(Lcom/android/email/activity/MessageCompose$AddAddessTask;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14334
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isCancelledFlag:Z

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, list:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 14370
    aget-object v2, p1, v8

    .line 14371
    .local v2, emailAddressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 14373
    .local v0, arraySize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v0, :cond_38

    .line 14374
    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isCancelledFlag:Z

    if-eqz v5, :cond_14

    .line 14375
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 14388
    :goto_13
    return-object v5

    .line 14377
    :cond_14
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14379
    .local v1, emailAddress:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$15400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v7, Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-direct {v7, v1}, Lcom/android/email/activity/bubblelayout/BubbleData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)Lcom/android/email/activity/bubblelayout/BubbleButton;

    move-result-object v4

    .line 14381
    .local v4, temp:Lcom/android/email/activity/bubblelayout/BubbleButton;
    if-eqz v4, :cond_35

    .line 14382
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->bubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14373
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 14384
    :cond_35
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isDuplicatedFlag:Z

    goto :goto_32

    .line 14388
    .end local v1           #emailAddress:Ljava/lang/String;
    .end local v4           #temp:Lcom/android/email/activity/bubblelayout/BubbleButton;
    :cond_38
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_13
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14334
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 1

    .prologue
    .line 14343
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .parameter "result"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 14393
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 14394
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    .line 14395
    :cond_18
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->bubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/util/ArrayList;)V

    .line 14397
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_31

    .line 14398
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f08060c

    #calls: Lcom/android/email/activity/MessageCompose;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->access$15500(Lcom/android/email/activity/MessageCompose;II)V

    .line 14400
    :cond_31
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isDuplicatedFlag:Z

    if-eqz v0, :cond_3d

    .line 14401
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f08060b

    #calls: Lcom/android/email/activity/MessageCompose;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->access$15500(Lcom/android/email/activity/MessageCompose;II)V

    .line 14403
    :cond_3d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getBubbleListCount()I

    move-result v0

    if-lez v0, :cond_5f

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_5f

    .line 14405
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    .line 14407
    :cond_5f
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-eq v0, v2, :cond_88

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-eq v0, v2, :cond_88

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-eq v0, v2, :cond_88

    .line 14409
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->focusOutRecipient()V
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15600(Lcom/android/email/activity/MessageCompose;)V

    .line 14412
    :cond_88
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 14413
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 14334
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 14347
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v1, Lcom/android/email/activity/MessageCompose$AddAddessTask$1;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageCompose$AddAddessTask$1;-><init>(Lcom/android/email/activity/MessageCompose$AddAddessTask;Landroid/content/Context;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$15202(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 14359
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isCancelledFlag:Z

    .line 14360
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->isDuplicatedFlag:Z

    .line 14361
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f080524

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 14362
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 14364
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 14365
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$15400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setVisibility(I)V

    .line 14366
    :cond_43
    return-void
.end method

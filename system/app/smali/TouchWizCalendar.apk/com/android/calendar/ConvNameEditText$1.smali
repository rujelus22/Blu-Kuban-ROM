.class Lcom/android/calendar/ConvNameEditText$1;
.super Ljava/lang/Object;
.source "ConvNameEditText.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 273
    iput-object p1, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 279
    .local v3, recipientName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 289
    .local v4, recipientNumber:Ljava/lang/String;
    const/4 v2, 0x0

    .line 291
    .local v2, numberType:Ljava/lang/String;
    if-eqz p2, :cond_8a

    move-object v1, p2

    .line 295
    check-cast v1, Landroid/widget/LinearLayout;

    .line 297
    .local v1, ll:Landroid/widget/LinearLayout;
    const v5, 0x7f0f0017

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    const v5, 0x7f0f0018

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    const v5, 0x7f0f0019

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :goto_3b
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    #getter for: Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/calendar/ConvNameEditText;->access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, email:Ljava/lang/String;
    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_af

    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_af

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_af

    .line 351
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    #getter for: Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/calendar/ConvNameEditText;->access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    #getter for: Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/calendar/ConvNameEditText;->access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    #getter for: Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/calendar/ConvNameEditText;->access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00d5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/calendar/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_82
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void

    .line 313
    .end local v0           #email:Ljava/lang/String;
    :cond_8a
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v5}, Lcom/android/calendar/ConvNameEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;

    invoke-virtual {v5, p3}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getName(I)Ljava/lang/String;

    move-result-object v3

    .line 315
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v5}, Lcom/android/calendar/ConvNameEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;

    invoke-virtual {v5, p3}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 319
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v5}, Lcom/android/calendar/ConvNameEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;

    invoke-virtual {v5, p3}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getType(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 359
    .restart local v0       #email:Ljava/lang/String;
    :cond_af
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$1;->this$0:Lcom/android/calendar/ConvNameEditText;

    iget-object v6, v5, Lcom/android/calendar/ConvNameEditText;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    if-eqz p2, :cond_ba

    const/4 v5, 0x0

    :goto_b6
    invoke-virtual {v6, v3, v4, v0, v5}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_82

    :cond_ba
    const/4 v5, 0x1

    goto :goto_b6
.end method

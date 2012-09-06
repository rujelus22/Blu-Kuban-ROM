.class Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PurchaseInstrumentAndPriceViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSpinner:Landroid/widget/Spinner;

.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Landroid/widget/Spinner;)V
    .registers 6
    .parameter
    .parameter "instrumentSpinner"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    .line 66
    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$000(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0400dc

    const v2, 0x7f080161

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 68
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->mSpinner:Landroid/widget/Spinner;

    .line 69
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    .line 99
    .local v2, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 100
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerLeftPadding:I
    invoke-static {v5}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$100(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I

    move-result v5

    iget-object v7, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerRightPadding:I
    invoke-static {v7}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$200(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    const v5, 0x7f080161

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    .local v1, description:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionTopPadding:I
    invoke-static {v5}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$300(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I

    move-result v5

    iget-object v7, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionRightPadding:I
    invoke-static {v7}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->purchaseSpinnerDescriptionBottomPadding:I
    invoke-static {v8}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$500(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)I

    move-result v8

    invoke-virtual {v1, v6, v5, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    const v5, 0x7f080162

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 108
    .local v0, button:Landroid/widget/RadioButton;
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->isValidSelection()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 109
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 111
    iget-object v5, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-ne v5, p1, :cond_99

    const/4 v5, 0x1

    :goto_5a
    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->isEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    const v5, 0x7f0801c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 114
    .local v3, message:Landroid/widget/TextView;
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->getInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v5

    if-eqz v5, :cond_9b

    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->getInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/Instrument;->hasMessages()Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 115
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->getInstrument()Lcom/google/android/finsky/billing/Instrument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/Instrument;->getMessages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 117
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    .end local v3           #message:Landroid/widget/TextView;
    :goto_98
    return-object v4

    :cond_99
    move v5, v6

    .line 111
    goto :goto_5a

    .line 119
    .restart local v3       #message:Landroid/widget/TextView;
    :cond_9b
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_98

    .line 122
    .end local v3           #message:Landroid/widget/TextView;
    :cond_9f
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_98
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    .line 79
    .local v2, item:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;
    if-nez p2, :cond_1c

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 82
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400dd

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_1c
    move-object v0, p2

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, description:Landroid/widget/TextView;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-interface {v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->isValidSelection()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 88
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    :goto_31
    return-object p2

    .line 90
    :cond_32
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_31
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

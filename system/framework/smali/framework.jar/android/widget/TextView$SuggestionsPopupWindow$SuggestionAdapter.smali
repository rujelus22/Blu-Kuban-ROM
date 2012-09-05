.class Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$1:Landroid/widget/TextView$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;)V
    .registers 4
    .parameter

    .prologue
    .line 10175
    iput-object p1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 10176
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;Landroid/widget/TextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10175
    invoke-direct {p0, p1}, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/TextView$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 10181
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    #getter for: Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I
    invoke-static {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->access$3900(Landroid/widget/TextView$SuggestionsPopupWindow;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 10186
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    #getter for: Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    invoke-static {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->access$4000(Landroid/widget/TextView$SuggestionsPopupWindow;)[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 10191
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 10196
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    .line 10198
    .local v1, textView:Landroid/widget/TextView;
    if-nez v1, :cond_17

    .line 10199
    iget-object v2, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v3, v3, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I
    invoke-static {v3}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;)I

    move-result v3

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #textView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 10203
    .restart local v1       #textView:Landroid/widget/TextView;
    :cond_17
    iget-object v2, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    #getter for: Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    invoke-static {v2}, Landroid/widget/TextView$SuggestionsPopupWindow;->access$4000(Landroid/widget/TextView$SuggestionsPopupWindow;)[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 10204
    .local v0, suggestionInfo:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    iget-object v2, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10206
    iget v2, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_30

    .line 10207
    const v2, 0x108035a

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 10216
    :goto_2f
    return-object v1

    .line 10209
    :cond_30
    iget v2, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3c

    .line 10210
    const v2, 0x108035b

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2f

    .line 10213
    :cond_3c
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2f
.end method

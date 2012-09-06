.class Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 1964
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1964
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1969
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1971
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 1972
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v3, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1974
    array-length v3, v0

    :goto_21
    if-ge v1, v3, :cond_2b

    aget-object v4, v0, v1

    .line 1975
    invoke-interface {v2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1974
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1977
    :cond_2b
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1000(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1978
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1000(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2020
    :cond_3c
    :goto_3c
    return-void

    .line 1984
    :cond_3d
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->chipsPending()Z
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1100(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1988
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_76

    .line 1990
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, v6}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1991
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1992
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1200(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 1994
    :cond_76
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1997
    if-le v0, v6, :cond_3c

    .line 1999
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-nez v0, :cond_a1

    move v0, v1

    .line 2000
    :goto_85
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2001
    if-eq v0, v1, :cond_aa

    .line 2002
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 2006
    :goto_93
    const/16 v1, 0x3b

    if-eq v0, v1, :cond_9b

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_af

    .line 2007
    :cond_9b
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1300(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto :goto_3c

    .line 1999
    :cond_a1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_85

    .line 2004
    :cond_aa
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    goto :goto_93

    .line 2008
    :cond_af
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3c

    .line 2011
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2012
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$1400(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2013
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->access$1400(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2015
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$1500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$1500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2016
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$1300(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto/16 :goto_3c
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2030
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2025
    return-void
.end method

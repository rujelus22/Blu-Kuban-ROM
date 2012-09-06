.class Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LanguagePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/LanguagePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/google/android/apps/translate/LanguagePicker;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/LanguagePicker;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;>;"
    iput-object p1, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->this$0:Lcom/google/android/apps/translate/LanguagePicker;

    .line 487
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 488
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 489
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x0

    .line 493
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    .line 494
    .local v1, item:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;
    if-nez v1, :cond_d

    const/4 v4, 0x0

    .line 520
    :goto_c
    return-object v4

    .line 496
    :cond_d
    if-eqz p2, :cond_7d

    move-object v4, p2

    .line 500
    .local v4, view:Landroid/view/View;
    :goto_10
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 501
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v2

    .line 502
    .local v2, language:Lcom/google/android/apps/translate/Language;
    invoke-virtual {v2}, Lcom/google/android/apps/translate/Language;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, languageString:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 504
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    iget-object v6, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->this$0:Lcom/google/android/apps/translate/LanguagePicker;

    #getter for: Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/google/android/apps/translate/LanguagePicker;->access$000(Lcom/google/android/apps/translate/LanguagePicker;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1030044

    invoke-direct {v5, v6, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 510
    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getSpec()Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->RECENTLY_USED:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    if-ne v5, v6, :cond_70

    .line 511
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 512
    iget-object v5, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->this$0:Lcom/google/android/apps/translate/LanguagePicker;

    #getter for: Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/google/android/apps/translate/LanguagePicker;->access$000(Lcom/google/android/apps/translate/LanguagePicker;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getSpec()Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->getResourceId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 513
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    iget-object v6, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->this$0:Lcom/google/android/apps/translate/LanguagePicker;

    #getter for: Lcom/google/android/apps/translate/LanguagePicker;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/google/android/apps/translate/LanguagePicker;->access$000(Lcom/google/android/apps/translate/LanguagePicker;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1030046

    invoke-direct {v5, v6, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 518
    :cond_70
    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 496
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    .end local v2           #language:Lcom/google/android/apps/translate/Language;
    .end local v3           #languageString:Ljava/lang/String;
    .end local v4           #view:Landroid/view/View;
    :cond_7d
    iget-object v5, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/google/android/apps/translate/R$layout;->language_dropdown:I

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_10
.end method

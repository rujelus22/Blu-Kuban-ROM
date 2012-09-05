.class public Lcom/swype/android/settings/ManageUdbActivity$Editor;
.super Landroid/app/Activity;
.source "ManageUdbActivity.java"

# interfaces
.implements Landroid/text/InputFilter;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/ManageUdbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field protected original:Ljava/lang/String;

.field protected saveButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 486
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 563
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor;->original:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    move v0, v1

    .line 564
    .local v0, enable:Z
    :goto_14
    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor;->saveButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 565
    return-void

    .line 563
    .end local v0           #enable:Z
    :cond_1a
    const/4 v1, 0x0

    move v0, v1

    goto :goto_14
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 554
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 542
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_13

    .line 543
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 544
    const-string v1, ""

    .line 547
    :goto_f
    return-object v1

    .line 542
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 547
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 495
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 496
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lcom/swype/android/settings/ManageUdbActivity$Editor;->setContentView(I)V

    .line 498
    const v1, 0x1020003

    invoke-virtual {p0, v1}, Lcom/swype/android/settings/ManageUdbActivity$Editor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 499
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity$Editor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "word"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor;->original:Ljava/lang/String;

    .line 500
    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor;->original:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 501
    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor;->original:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor;->original:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 505
    :cond_31
    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/swype/android/settings/ManageUdbActivity$Editor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor;->saveButton:Landroid/view/View;

    .line 506
    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor;->saveButton:Landroid/view/View;

    new-instance v2, Lcom/swype/android/settings/ManageUdbActivity$Editor$1;

    invoke-direct {v2, p0}, Lcom/swype/android/settings/ManageUdbActivity$Editor$1;-><init>(Lcom/swype/android/settings/ManageUdbActivity$Editor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/swype/android/settings/ManageUdbActivity$Editor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/swype/android/settings/ManageUdbActivity$Editor$2;

    invoke-direct {v2, p0}, Lcom/swype/android/settings/ManageUdbActivity$Editor$2;-><init>(Lcom/swype/android/settings/ManageUdbActivity$Editor;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor;->saveButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 529
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    aput-object p0, v1, v3

    const/4 v2, 0x1

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 533
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 534
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 558
    return-void
.end method

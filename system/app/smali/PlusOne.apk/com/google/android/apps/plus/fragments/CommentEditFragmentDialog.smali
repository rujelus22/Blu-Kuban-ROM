.class public Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;
.super Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
.source "CommentEditFragmentDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog$CommentEditDialogListener;
    }
.end annotation


# instance fields
.field private mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    .line 41
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;
    .registers 5
    .parameter "commentId"
    .parameter "comment"

    .prologue
    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "comment_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "comment_text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;-><init>()V

    .line 63
    .local v1, frag:Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method

.method private submit()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 108
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    :goto_c
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 112
    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_c

    .line 116
    :cond_21
    :goto_21
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_45

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 117
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_21

    .line 121
    :cond_45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v4, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-virtual {v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/views/MentionSpan;

    .line 123
    if-eqz v0, :cond_95

    .line 124
    :goto_58
    array-length v4, v0

    if-ge v1, v4, :cond_95

    .line 125
    aget-object v4, v0, v1

    .line 126
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 127
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 128
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v7

    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "g:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/MentionSpan;->getAggregateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setAggregateId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 130
    invoke-virtual {v7, v5}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setIndex(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 131
    sub-int v4, v6, v5

    invoke-virtual {v7, v4}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setLength(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 132
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 136
    :cond_95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog$CommentEditDialogListener;

    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "comment_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog$CommentEditDialogListener;->onCommentEditComplete(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 139
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 163
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 170
    return-void
.end method

.method public checkPositiveButtonEnabled()V
    .registers 5

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 185
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez v0, :cond_9

    .line 192
    :goto_8
    return-void

    .line 189
    :cond_9
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 190
    .local v1, positiveButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, trimmedText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    const/4 v3, 0x1

    :goto_23
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_8

    :cond_27
    const/4 v3, 0x0

    goto :goto_23
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 97
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 98
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->submit()V

    .line 101
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 102
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 77
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 78
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0d0067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 79
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    if-eqz p1, :cond_58

    .line 81
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    const-string v5, "comment_text"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_3e
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 87
    const v4, 0x7f070108

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 88
    const v4, 0x7f070168

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const v4, 0x7f070169

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 83
    :cond_58
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    const-string v5, "comment_text"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setHtml(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 146
    const-string v0, "comment_text"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onStart()V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->checkPositiveButtonEnabled()V

    .line 156
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->checkPositiveButtonEnabled()V

    .line 178
    return-void
.end method

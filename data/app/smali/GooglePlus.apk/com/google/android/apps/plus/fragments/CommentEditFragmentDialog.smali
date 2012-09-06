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

    .line 42
    return-void
.end method

.method public static newInstance(I)Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;
    .registers 2
    .parameter "titleId"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-static {v0, v0, p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;
    .registers 6
    .parameter "commentId"
    .parameter "comment"
    .parameter "titleId"

    .prologue
    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "comment_id"

    if-nez p0, :cond_b

    const-string p0, ""

    .end local p0
    :cond_b
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "comment_text"

    if-nez p1, :cond_14

    const-string p1, ""

    .end local p1
    :cond_14
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "title_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    new-instance v1, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;-><init>()V

    .line 87
    .local v1, frag:Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v1
.end method

.method private submit()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 132
    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    .local v6, sb:Landroid/text/SpannableStringBuilder;
    :goto_c
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_21

    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 136
    const/4 v9, 0x1

    invoke-virtual {v6, v11, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_c

    .line 140
    :cond_21
    :goto_21
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_45

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 141
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_21

    .line 145
    :cond_45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const-class v10, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-virtual {v6, v11, v9, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/apps/plus/views/MentionSpan;

    .line 147
    .local v8, spans:[Lcom/google/android/apps/plus/views/MentionSpan;
    if-eqz v8, :cond_96

    .line 148
    const/4 v2, 0x0

    .local v2, i:I
    :goto_59
    array-length v9, v8

    if-ge v2, v9, :cond_96

    .line 149
    aget-object v7, v8, v2

    .line 150
    .local v7, span:Lcom/google/android/apps/plus/views/MentionSpan;
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 151
    .local v5, s:I
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 152
    .local v1, e:I
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v0

    .line 153
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "g:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/MentionSpan;->getAggregateId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setAggregateId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 154
    invoke-virtual {v0, v5}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setIndex(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 155
    sub-int v9, v1, v5

    invoke-virtual {v0, v9}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setLength(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 156
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 160
    .end local v0           #builder:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .end local v1           #e:I
    .end local v2           #i:I
    .end local v5           #s:I
    .end local v7           #span:Lcom/google/android/apps/plus/views/MentionSpan;
    :cond_96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog$CommentEditDialogListener;

    .line 161
    .local v3, listener:Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog$CommentEditDialogListener;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "comment_id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10, v4}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog$CommentEditDialogListener;->onCommentEditComplete(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 187
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 194
    return-void
.end method

.method public checkPositiveButtonEnabled()V
    .registers 5

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 209
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez v0, :cond_9

    .line 216
    :goto_8
    return-void

    .line 213
    :cond_9
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 214
    .local v1, positiveButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 215
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
    .line 121
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 122
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->submit()V

    .line 125
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 126
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 101
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 102
    .local v3, view:Landroid/view/View;
    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 103
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    if-eqz p1, :cond_5e

    .line 105
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    const-string v5, "comment_text"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_3e
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 111
    const-string v4, "title_id"

    const v5, 0x7f08019a

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 112
    const v4, 0x7f080209

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    const v4, 0x7f08020a

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 107
    :cond_5e
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
    .line 170
    const-string v0, "comment_text"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->mInputTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onStart()V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->checkPositiveButtonEnabled()V

    .line 180
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->checkPositiveButtonEnabled()V

    .line 202
    return-void
.end method

.class public final Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "MentionMultiAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;
    }
.end annotation


# instance fields
.field private mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->themedApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 120
    invoke-static {p1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->themedApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 131
    invoke-static {p1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->themedApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method private adjustInputMethod()V
    .registers 5

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getInputType()I

    move-result v0

    .line 222
    .local v0, inputType:I
    move v1, v0

    .line 223
    .local v1, newInputType:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 227
    const v2, -0x10001

    and-int/2addr v1, v2

    .line 232
    :goto_16
    if-eq v0, v1, :cond_1e

    .line 233
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setRawInputType(I)V

    .line 234
    invoke-static {p0}, Lcom/google/android/apps/plus/util/SoftInput;->restart(Landroid/view/View;)V

    .line 236
    :cond_1e
    return-void

    .line 229
    :cond_1f
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    goto :goto_16
.end method

.method private static replaceSpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter "text"
    .parameter "target"
    .parameter "replacement"

    .prologue
    .line 92
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 93
    .local v2, start:I
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 94
    .local v0, end:I
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 95
    .local v1, flags:I
    invoke-interface {p0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 96
    invoke-interface {p0, p2, v2, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 97
    return-void
.end method

.method private static themedApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4
    .parameter "context"

    .prologue
    .line 101
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f002c

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "selection"

    .prologue
    .line 139
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    .line 140
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 141
    .local v4, text:Landroid/text/Spannable;
    const-string v5, "person_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 142
    .local v3, personIdIndex:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3b

    .line 143
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, personId:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/views/MentionSpan;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, mentionSpan:Lcom/google/android/apps/plus/views/MentionSpan;
    const/4 v5, 0x0

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-interface {v4, v1, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 147
    .end local v1           #mentionSpan:Lcom/google/android/apps/plus/views/MentionSpan;
    .end local v2           #personId:Ljava/lang/String;
    :cond_3b
    return-object v4
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v1, :cond_c

    .line 265
    iget-object v1, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->close()V

    .line 266
    iput-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 268
    :cond_c
    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method public getMentions()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 277
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/views/MentionSpan;

    .line 279
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    array-length v4, v0

    :goto_18
    if-ge v1, v4, :cond_41

    aget-object v5, v0, v1

    .line 281
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v6

    .line 282
    invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 283
    invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 284
    invoke-virtual {v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setIndex(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 285
    sub-int v7, v8, v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setLength(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 286
    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/MentionSpan;->getAggregateId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setAggregateId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 287
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 289
    :cond_41
    return-object v3
.end method

.method public init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/fragments/CircleNameResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 11
    .parameter "fragment"
    .parameter "circleNameResolver"
    .parameter "account"
    .parameter "activityId"

    .prologue
    const/4 v5, 0x1

    .line 161
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setPublicProfileSearchEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePlusPages(Z)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p4}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setMention(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->adjustInputMethod()V

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    new-instance v0, Lcom/google/android/apps/plus/util/MentionTokenizer;

    invoke-direct {v0}, Lcom/google/android/apps/plus/util/MentionTokenizer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 171
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setThreshold(I)V

    .line 173
    new-instance v0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;-><init>(Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onAttachedToWindow()V

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 247
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onDetachedFromWindow()V

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 258
    :cond_c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 70
    check-cast p1, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;

    .line 71
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_15

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-object v2, p1, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;->adapterState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 80
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 82
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    .line 83
    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 84
    array-length v3, v0

    :goto_26
    if-ge v1, v3, :cond_3b

    aget-object v4, v0, v1

    .line 85
    invoke-static {v4}, Lcom/google/android/apps/plus/views/MentionSpan;->isMention(Landroid/text/style/URLSpan;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 86
    new-instance v5, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-direct {v5, v4}, Lcom/google/android/apps/plus/views/MentionSpan;-><init>(Landroid/text/style/URLSpan;)V

    invoke-static {v2, v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->replaceSpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 89
    :cond_3b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 57
    .local v1, superState:Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 58
    .local v0, adapterState:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v2, :cond_13

    .line 59
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #adapterState:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .restart local v0       #adapterState:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    :cond_13
    new-instance v2, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;

    invoke-direct {v2, v1, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    return-object v2
.end method

.method public setHtml(Ljava/lang/String;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 296
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    invoke-interface {v0, v9, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 298
    if-nez v3, :cond_19

    .line 299
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_18
    return-void

    .line 303
    :cond_19
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 304
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 307
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_25
    if-ltz v2, :cond_a2

    .line 308
    aget-object v1, v3, v2

    .line 309
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 310
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 312
    instance-of v0, v1, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_6c

    move-object v0, v1

    .line 313
    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    .line 314
    const/4 v7, 0x1

    if-ne v0, v7, :cond_50

    .line 315
    const-string v0, "*"

    invoke-virtual {v4, v6, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 316
    const-string v0, "*"

    invoke-virtual {v4, v5, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 346
    :cond_49
    :goto_49
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 307
    :cond_4c
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_25

    .line 317
    :cond_50
    const/4 v7, 0x2

    if-ne v0, v7, :cond_5e

    .line 318
    const-string v0, "_"

    invoke-virtual {v4, v6, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 319
    const-string v0, "_"

    invoke-virtual {v4, v5, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_49

    .line 320
    :cond_5e
    const/4 v7, 0x3

    if-ne v0, v7, :cond_49

    .line 321
    const-string v0, "*_"

    invoke-virtual {v4, v6, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 322
    const-string v0, "_*"

    invoke-virtual {v4, v5, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_49

    .line 324
    :cond_6c
    instance-of v0, v1, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_49

    move-object v0, v1

    .line 325
    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_9e

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/Intents;->isProfileUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 327
    if-eqz v5, :cond_4c

    .line 331
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    .line 332
    const/16 v8, 0x2b

    if-ne v7, v8, :cond_4c

    .line 336
    const-string v7, "pid="

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/phone/Intents;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_49

    .line 338
    new-instance v7, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-direct {v7, v0}, Lcom/google/android/apps/plus/views/MentionSpan;-><init>(Ljava/lang/String;)V

    .line 339
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v4, v7, v0, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_49

    .line 342
    :cond_9e
    invoke-virtual {v4, v5, v6, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_49

    .line 349
    :cond_a2
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18
.end method

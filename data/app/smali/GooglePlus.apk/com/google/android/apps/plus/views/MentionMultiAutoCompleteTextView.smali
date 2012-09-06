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
.field private mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

.field private mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->themedApplicationContext(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 136
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->themedApplicationContext(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 147
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->themedApplicationContext(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getPersonList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private adjustInputMethod()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 334
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getInputType()I

    move-result v0

    .line 335
    .local v0, inputType:I
    move v2, v0

    .line 336
    .local v2, newInputType:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v1

    .line 337
    .local v1, metrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_1e

    iget v3, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-ne v3, v4, :cond_2b

    .line 341
    :cond_1e
    const v3, -0x10001

    and-int/2addr v2, v3

    .line 346
    :goto_22
    if-eq v0, v2, :cond_2a

    .line 347
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setRawInputType(I)V

    .line 348
    invoke-static {p0}, Lcom/google/android/apps/plus/util/SoftInput;->restart(Landroid/view/View;)V

    .line 350
    :cond_2a
    return-void

    .line 343
    :cond_2b
    const/high16 v3, 0x1

    or-int/2addr v2, v3

    goto :goto_22
.end method

.method private getPersonList()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 184
    .local v9, spannable:Landroid/text/Spannable;
    invoke-interface {v9}, Landroid/text/Spannable;->length()I

    move-result v10

    .line 185
    .local v10, spannableLength:I
    const/4 v12, 0x0

    invoke-interface {v9}, Landroid/text/Spannable;->length()I

    move-result v13

    const-class v14, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-interface {v9, v12, v13, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/apps/plus/views/MentionSpan;

    .line 187
    .local v2, mentionSpans:[Lcom/google/android/apps/plus/views/MentionSpan;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v6, persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v7, previouslySeenPersonIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    array-length v8, v2

    .local v8, size:I
    :goto_21
    if-ge v1, v8, :cond_57

    .line 195
    aget-object v12, v2, v1

    invoke-virtual {v12}, Lcom/google/android/apps/plus/views/MentionSpan;->getAggregateId()Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, personId:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 194
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 200
    :cond_32
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    aget-object v12, v2, v1

    invoke-interface {v9, v12}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 203
    .local v11, start:I
    aget-object v12, v2, v1

    invoke-interface {v9, v12}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 204
    .local v0, end:I
    add-int/lit8 v12, v0, 0x1

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-interface {v9, v11, v12}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, name:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->buildPersonFromPersonIdAndName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v4

    .line 207
    .local v4, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 210
    .end local v0           #end:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .end local v5           #personId:Ljava/lang/String;
    .end local v11           #start:I
    :cond_57
    return-object v6
.end method

.method private static replaceSpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter "text"
    .parameter "target"
    .parameter "replacement"

    .prologue
    .line 97
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 98
    .local v2, start:I
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, end:I
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 100
    .local v1, flags:I
    invoke-interface {p0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 101
    invoke-interface {p0, p2, v2, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 102
    return-void
.end method

.method private static themedApplicationContext(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/Context;
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    if-eqz p1, :cond_22

    .line 108
    const/4 v2, 0x0

    const-string v3, "theme_style"

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, theme:Ljava/lang/String;
    const-string v2, "dark"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 110
    const v1, 0x7f0f0033

    .line 117
    .end local v0           #theme:Ljava/lang/String;
    .local v1, themeRes:I
    :goto_14
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v2

    .line 112
    .end local v1           #themeRes:I
    .restart local v0       #theme:Ljava/lang/String;
    :cond_1e
    const v1, 0x7f0f0035

    .restart local v1       #themeRes:I
    goto :goto_14

    .line 115
    .end local v0           #theme:Ljava/lang/String;
    .end local v1           #themeRes:I
    :cond_22
    const v1, 0x7f0f0035

    .restart local v1       #themeRes:I
    goto :goto_14
.end method


# virtual methods
.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "selection"

    .prologue
    .line 155
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    .line 156
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

    .line 157
    .local v4, text:Landroid/text/Spannable;
    const-string v5, "person_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 158
    .local v3, personIdIndex:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3b

    .line 159
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, personId:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/views/MentionSpan;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, mentionSpan:Lcom/google/android/apps/plus/views/MentionSpan;
    const/4 v5, 0x0

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-interface {v4, v1, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 163
    .end local v1           #mentionSpan:Lcom/google/android/apps/plus/views/MentionSpan;
    .end local v2           #personId:Ljava/lang/String;
    :cond_3b
    return-object v4
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 378
    iget-object v1, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v1, :cond_c

    .line 379
    iget-object v1, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->close()V

    .line 380
    iput-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 382
    :cond_c
    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 387
    return-void
.end method

.method public getCursorYPosition()I
    .registers 3

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 314
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    goto :goto_7
.end method

.method public getCursorYTop()I
    .registers 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 320
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    goto :goto_7
.end method

.method public getMentions()Ljava/util/ArrayList;
    .registers 14
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
    .line 390
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 391
    .local v8, spannable:Landroid/text/Spannable;
    const/4 v10, 0x0

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-interface {v8, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/apps/plus/views/MentionSpan;

    .line 393
    .local v5, mentionSpans:[Lcom/google/android/apps/plus/views/MentionSpan;
    new-instance v6, Ljava/util/ArrayList;

    array-length v10, v5

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 394
    .local v6, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    move-object v0, v5

    .local v0, arr$:[Lcom/google/android/apps/plus/views/MentionSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1a
    if-ge v2, v3, :cond_43

    aget-object v7, v0, v2

    .line 395
    .local v7, span:Lcom/google/android/apps/plus/views/MentionSpan;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Mention;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    move-result-object v4

    .line 396
    .local v4, mention:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    invoke-interface {v8, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 397
    .local v9, start:I
    invoke-interface {v8, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 398
    .local v1, end:I
    invoke-virtual {v4, v9}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setIndex(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 399
    sub-int v10, v1, v9

    invoke-virtual {v4, v10}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setLength(I)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 400
    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/MentionSpan;->getAggregateId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->setAggregateId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;

    .line 401
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Mention;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 403
    .end local v1           #end:I
    .end local v4           #mention:Lcom/google/wireless/tacotruck/proto/Data$Mention$Builder;
    .end local v7           #span:Lcom/google/android/apps/plus/views/MentionSpan;
    .end local v9           #start:I
    :cond_43
    return-object v6
.end method

.method public init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/views/AudienceView;)V
    .registers 11
    .parameter "fragment"
    .parameter "account"
    .parameter "activityId"
    .parameter "audienceView"

    .prologue
    const/4 v5, 0x1

    .line 248
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setPublicProfileSearchEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePlusPages(Z)V

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setMention(Ljava/lang/String;)V

    .line 254
    iput-object p4, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    .line 256
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->adjustInputMethod()V

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    new-instance v0, Lcom/google/android/apps/plus/util/MentionTokenizer;

    invoke-direct {v0}, Lcom/google/android/apps/plus/util/MentionTokenizer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 260
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setThreshold(I)V

    .line 262
    new-instance v0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;-><init>(Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 310
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 357
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onAttachedToWindow()V

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 361
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 368
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onDetachedFromWindow()V

    .line 369
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 372
    :cond_c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 13
    .parameter "state"

    .prologue
    .line 75
    move-object v6, p1

    check-cast v6, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;

    .line 76
    .local v6, ss:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v9

    invoke-super {p0, v9}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 78
    iget-object v9, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v9, :cond_15

    .line 79
    iget-object v9, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-object v10, v6, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;->adapterState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 85
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v8

    .line 86
    .local v8, text:Landroid/text/Editable;
    const/4 v7, 0x0

    .line 87
    .local v7, start:I
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v1

    .line 88
    .local v1, end:I
    const/4 v9, 0x0

    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {v8, v9, v1, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    .line 89
    .local v5, spans:[Landroid/text/style/URLSpan;
    move-object v0, v5

    .local v0, arr$:[Landroid/text/style/URLSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2a
    if-ge v2, v3, :cond_3f

    aget-object v4, v0, v2

    .line 90
    .local v4, span:Landroid/text/style/URLSpan;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/MentionSpan;->isMention(Landroid/text/style/URLSpan;)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 91
    new-instance v9, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-direct {v9, v4}, Lcom/google/android/apps/plus/views/MentionSpan;-><init>(Landroid/text/style/URLSpan;)V

    invoke-static {v8, v4, v9}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->replaceSpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 94
    .end local v4           #span:Landroid/text/style/URLSpan;
    :cond_3f
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 62
    .local v1, superState:Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 63
    .local v0, adapterState:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v2, :cond_13

    .line 64
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #adapterState:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .restart local v0       #adapterState:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mMentionCursorAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    :cond_13
    new-instance v2, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;

    invoke-direct {v2, v1, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    return-object v2
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getPersonList()Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, originalPersonList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getPersonList()Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, currentPersonList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->updateMentionAcls(Ljava/util/List;Ljava/util/List;)V

    .line 177
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .registers 17
    .parameter "string"

    .prologue
    .line 410
    invoke-static/range {p1 .. p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 411
    .local v2, html:Landroid/text/Spanned;
    const/4 v12, 0x0

    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v13

    const-class v14, Ljava/lang/Object;

    invoke-interface {v2, v12, v13, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 412
    .local v9, spans:[Ljava/lang/Object;
    if-nez v9, :cond_19

    .line 413
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_18
    return-void

    .line 417
    :cond_19
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 418
    .local v7, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 421
    array-length v12, v9

    add-int/lit8 v3, v12, -0x1

    .local v3, i:I
    :goto_24
    if-ltz v3, :cond_a9

    .line 422
    aget-object v8, v9, v3

    .line 423
    .local v8, span:Ljava/lang/Object;
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 424
    .local v6, s:I
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 426
    .local v1, e:I
    instance-of v12, v8, Landroid/text/style/StyleSpan;

    if-eqz v12, :cond_6a

    move-object v12, v8

    .line 427
    check-cast v12, Landroid/text/style/StyleSpan;

    invoke-virtual {v12}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v10

    .line 428
    .local v10, style:I
    const/4 v12, 0x1

    if-ne v10, v12, :cond_4e

    .line 429
    const-string v12, "*"

    invoke-virtual {v7, v1, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 430
    const-string v12, "*"

    invoke-virtual {v7, v6, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 462
    .end local v10           #style:I
    :cond_48
    :goto_48
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 421
    :cond_4b
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    .line 431
    .restart local v10       #style:I
    :cond_4e
    const/4 v12, 0x2

    if-ne v10, v12, :cond_5c

    .line 432
    const-string v12, "_"

    invoke-virtual {v7, v1, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 433
    const-string v12, "_"

    invoke-virtual {v7, v6, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_48

    .line 434
    :cond_5c
    const/4 v12, 0x3

    if-ne v10, v12, :cond_48

    .line 435
    const-string v12, "*_"

    invoke-virtual {v7, v1, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 436
    const-string v12, "_*"

    invoke-virtual {v7, v6, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_48

    .line 438
    .end local v10           #style:I
    :cond_6a
    instance-of v12, v8, Landroid/text/style/URLSpan;

    if-eqz v12, :cond_48

    move-object v12, v8

    .line 439
    check-cast v12, Landroid/text/style/URLSpan;

    invoke-virtual {v12}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    .line 440
    .local v11, url:Ljava/lang/String;
    if-eqz v11, :cond_9d

    invoke-static {v11}, Lcom/google/android/apps/plus/phone/Intents;->isProfileUrl(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9d

    .line 441
    if-eqz v6, :cond_4b

    .line 445
    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v7, v12}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 446
    .local v0, c:C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_4b

    .line 450
    const-string v12, "pid="

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/phone/Intents;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, personId:Ljava/lang/String;
    if-eqz v5, :cond_48

    .line 452
    new-instance v4, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-direct {v4, v5}, Lcom/google/android/apps/plus/views/MentionSpan;-><init>(Ljava/lang/String;)V

    .line 453
    .local v4, mention:Lcom/google/android/apps/plus/views/MentionSpan;
    add-int/lit8 v12, v6, -0x1

    const/4 v13, 0x0

    invoke-virtual {v7, v4, v12, v1, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_48

    .line 455
    .end local v0           #c:C
    .end local v4           #mention:Lcom/google/android/apps/plus/views/MentionSpan;
    .end local v5           #personId:Ljava/lang/String;
    :cond_9d
    if-eqz v11, :cond_a5

    invoke-static {v11}, Lcom/google/android/apps/plus/phone/Intents;->isHashtagUrl(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_48

    .line 458
    :cond_a5
    invoke-virtual {v7, v6, v1, v11}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_48

    .line 465
    .end local v1           #e:I
    .end local v6           #s:I
    .end local v8           #span:Ljava/lang/Object;
    .end local v11           #url:Ljava/lang/String;
    :cond_a9
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18
.end method

.method protected updateMentionAcls(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, originalPersonList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    .local p2, currentPersonList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    if-nez v2, :cond_5

    .line 234
    :cond_4
    return-void

    .line 225
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 226
    .local v1, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/views/AudienceView;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_9

    .line 229
    .end local v1           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_1b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 230
    .restart local v1       #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-static {v1, p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->isPersonInList(Lcom/google/wireless/tacotruck/proto/Data$Person;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 231
    iget-object v2, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/views/AudienceView;->removePerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_1f
.end method

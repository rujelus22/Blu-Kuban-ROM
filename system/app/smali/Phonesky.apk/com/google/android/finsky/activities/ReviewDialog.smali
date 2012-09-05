.class public Lcom/google/android/finsky/activities/ReviewDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ReviewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/ReviewDialog$Listener;,
        Lcom/google/android/finsky/activities/ReviewDialog$ReviewAlertDialog;
    }
.end annotation


# static fields
.field private static final DESCRIPTION_MAP:[I


# instance fields
.field mCommentView:Landroid/widget/TextView;

.field mEmptyTextWatcher:Landroid/text/TextWatcher;

.field mRatingBar:Landroid/widget/RatingBar;

.field mReviewMode:I

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/finsky/activities/ReviewDialog;->DESCRIPTION_MAP:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x3et 0x1t 0x7t 0x7ft
        0x3ft 0x1t 0x7t 0x7ft
        0x40t 0x1t 0x7t 0x7ft
        0x41t 0x1t 0x7t 0x7ft
        0x42t 0x1t 0x7t 0x7ft
        0x43t 0x1t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/google/android/finsky/activities/ReviewDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/ReviewDialog$1;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->syncOkButtonState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/ReviewDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[I
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/finsky/activities/ReviewDialog;->DESCRIPTION_MAP:[I

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    .registers 4

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 235
    .local v1, f:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    if-eqz v2, :cond_b

    .line 236
    check-cast v1, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    .line 242
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :goto_a
    return-object v1

    .line 238
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 239
    .local v0, a:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    if-eqz v2, :cond_17

    .line 240
    check-cast v0, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    .end local v0           #a:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_a

    .line 242
    .restart local v0       #a:Landroid/app/Activity;
    :cond_17
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getUserComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserRating()I
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getUserTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/activities/ReviewDialog;
    .registers 7
    .parameter "reviewMode"
    .parameter "docId"
    .parameter "previousReview"

    .prologue
    .line 96
    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewDialog;-><init>()V

    .line 97
    .local v1, dialogFragment:Lcom/google/android/finsky/activities/ReviewDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "review_mode"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v2, "doc_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz p2, :cond_31

    .line 101
    const-string v2, "previous_rating"

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string v2, "previous_title"

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "previous_comment"

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_31
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/ReviewDialog;->setArguments(Landroid/os/Bundle;)V

    .line 106
    return-object v1
.end method

.method private syncOkButtonState()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 205
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v5

    if-lez v5, :cond_34

    move v1, v3

    .line 206
    .local v1, enabled:Z
    :goto_9
    if-eqz v1, :cond_25

    .line 207
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 208
    .local v2, titleEmpty:Z
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 209
    .local v0, commentEmpty:Z
    iget v5, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_38

    .line 210
    if-nez v2, :cond_36

    if-nez v0, :cond_36

    move v1, v3

    .line 216
    .end local v0           #commentEmpty:Z
    .end local v2           #titleEmpty:Z
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    check-cast v3, Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    return-void

    .end local v1           #enabled:Z
    :cond_34
    move v1, v4

    .line 205
    goto :goto_9

    .restart local v0       #commentEmpty:Z
    .restart local v1       #enabled:Z
    .restart local v2       #titleEmpty:Z
    :cond_36
    move v1, v4

    .line 210
    goto :goto_25

    .line 213
    :cond_38
    if-eqz v2, :cond_3c

    if-eqz v0, :cond_3e

    :cond_3c
    move v1, v3

    :goto_3d
    goto :goto_25

    :cond_3e
    move v1, v4

    goto :goto_3d
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 112
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 113
    .local v1, arguments:Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 114
    .local v5, previousRating:I
    const/4 v6, 0x0

    .line 115
    .local v6, previousTitle:Ljava/lang/String;
    const/4 v4, 0x0

    .line 116
    .local v4, previousComment:Ljava/lang/String;
    const-string v10, "review_mode"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    .line 117
    const-string v10, "doc_id"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, docId:Ljava/lang/String;
    if-eqz p1, :cond_d2

    move-object v9, p1

    .line 122
    .local v9, source:Landroid/os/Bundle;
    :goto_1c
    const-string v10, "previous_rating"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 123
    const-string v10, "previous_title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 124
    const-string v10, "previous_comment"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    new-instance v0, Lcom/google/android/finsky/activities/ReviewDialog$ReviewAlertDialog;

    invoke-direct {v0, v2}, Lcom/google/android/finsky/activities/ReviewDialog$ReviewAlertDialog;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, alert:Landroid/app/AlertDialog;
    const-string v10, "layout_inflater"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    const v11, 0x7f0400af

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 130
    .local v8, ratingSetterFrame:Landroid/view/View;
    const v10, 0x7f08016c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RatingBar;

    iput-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    .line 131
    const v10, 0x7f08016d

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 133
    .local v7, ratingDescription:Landroid/widget/TextView;
    const v10, 0x7f08016e

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    .line 134
    const v10, 0x7f08016f

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    .line 135
    iget-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    int-to-float v11, v5

    invoke-virtual {v10, v11}, Landroid/widget/RatingBar;->setRating(F)V

    .line 136
    iget v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d5

    .line 137
    iget-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :goto_87
    const v10, 0x1080073

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 144
    const v10, 0x7f07013b

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 145
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 146
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/activities/ReviewDialog;->setCancelable(Z)V

    .line 148
    iget-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    const/4 v10, -0x1

    const v11, 0x104000a

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/google/android/finsky/activities/ReviewDialog$2;

    invoke-direct {v12, p0, v3}, Lcom/google/android/finsky/activities/ReviewDialog$2;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11, v12}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 161
    const/4 v10, -0x2

    const/high16 v11, 0x104

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/google/android/finsky/activities/ReviewDialog$3;

    invoke-direct {v12, p0}, Lcom/google/android/finsky/activities/ReviewDialog$3;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;)V

    invoke-virtual {v0, v10, v11, v12}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    iget-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    new-instance v11, Lcom/google/android/finsky/activities/ReviewDialog$4;

    invoke-direct {v11, p0, v7}, Lcom/google/android/finsky/activities/ReviewDialog$4;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;Landroid/widget/TextView;)V

    invoke-virtual {v10, v11}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 175
    return-object v0

    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v7           #ratingDescription:Landroid/widget/TextView;
    .end local v8           #ratingSetterFrame:Landroid/view/View;
    .end local v9           #source:Landroid/os/Bundle;
    :cond_d2
    move-object v9, v1

    .line 121
    goto/16 :goto_1c

    .line 140
    .restart local v0       #alert:Landroid/app/AlertDialog;
    .restart local v7       #ratingDescription:Landroid/widget/TextView;
    .restart local v8       #ratingSetterFrame:Landroid/view/View;
    .restart local v9       #source:Landroid/os/Bundle;
    :cond_d5
    iget-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v10, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_87
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 184
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 225
    const-string v0, "previous_rating"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v0, "previous_title"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "previous_comment"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 189
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->syncOkButtonState()V

    .line 190
    return-void
.end method

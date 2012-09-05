.class public Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;
.super Lcom/google/android/finsky/activities/ReviewsFragment;
.source "ReviewsFragmentXLarge.java"


# instance fields
.field private mCanPostComments:Z

.field private mCancel:Landroid/widget/Button;

.field private final mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ReviewResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mRating:Landroid/widget/RatingBar;

.field private mReviewEdit:Landroid/widget/EditText;

.field private mReviewElements:[Landroid/view/View;

.field private mReviewTitle:Landroid/widget/EditText;

.field private mSubmit:Landroid/widget/Button;

.field private final mTextWatcher:Landroid/text/TextWatcher;

.field private mUserReviewHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$1;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mListener:Lcom/android/volley/Response$Listener;

    .line 53
    new-instance v0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$2;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 62
    new-instance v0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$3;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->collapseForm()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->setFormEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->updateSubmitState()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->expandForm()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->resetForm()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Landroid/widget/RatingBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Lcom/android/volley/Response$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mListener:Lcom/android/volley/Response$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Lcom/android/volley/Response$ErrorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-object v0
.end method

.method private canPostComments()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/Document;->canRate(Lcom/google/android/finsky/local/AssetStore;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 151
    :cond_11
    :goto_11
    return v1

    .line 150
    :cond_12
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getMarketMetadata()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v0

    .line 151
    .local v0, metadata:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getCommentPostEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    goto :goto_11
.end method

.method private collapseForm()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 239
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCanPostComments:Z

    if-eqz v0, :cond_15

    .line 240
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    :cond_15
    return-void
.end method

.method private configureViews()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$4;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$5;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$5;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCancel:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$6;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$8;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$8;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->updateSubmitState()V

    .line 211
    return-void
.end method

.method private expandForm()V
    .registers 7

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewElements:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 232
    .local v3, v:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 234
    .end local v3           #v:Landroid/view/View;
    :cond_f
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 235
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->setKeyboardVisible(Landroid/view/View;Z)V

    .line 236
    return-void
.end method

.method private inflateReviewForm(Landroid/view/View;)V
    .registers 8
    .parameter "container"

    .prologue
    const/4 v5, 0x0

    .line 122
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->canPostComments()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCanPostComments:Z

    .line 124
    const v1, 0x7f08011c

    .line 126
    .local v1, layoutId:I
    iget-boolean v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCanPostComments:Z

    if-nez v3, :cond_11

    .line 129
    const v1, 0x7f08011e

    .line 133
    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 134
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, inflated:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/api/model/Document;->canRate(Lcom/google/android/finsky/local/AssetStore;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 138
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mUserReviewHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_33
    return-void
.end method

.method private resetForm()V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 250
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 252
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->setKeyboardVisible(Landroid/view/View;Z)V

    .line 253
    return-void
.end method

.method private setFormEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 261
    return-void
.end method

.method private setKeyboardVisible(Landroid/view/View;Z)V
    .registers 7
    .parameter "v"
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 280
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_13

    .line 281
    invoke-virtual {v0, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 285
    :goto_12
    return-void

    .line 283
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_12
.end method

.method private updateSubmitState()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 264
    const/4 v2, 0x1

    .line 265
    .local v2, valid:Z
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v3}, Landroid/widget/RatingBar;->getRating()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4a

    move v3, v4

    :goto_f
    and-int/2addr v2, v3

    .line 266
    iget-boolean v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCanPostComments:Z

    if-eqz v3, :cond_44

    .line 267
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4c

    move v1, v4

    .line 268
    .local v1, titleEmpty:Z
    :goto_29
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4e

    move v0, v4

    .line 272
    .local v0, commentEmpty:Z
    :goto_3e
    if-eqz v1, :cond_42

    if-eqz v0, :cond_43

    :cond_42
    move v5, v4

    :cond_43
    and-int/2addr v2, v5

    .line 274
    .end local v0           #commentEmpty:Z
    .end local v1           #titleEmpty:Z
    :cond_44
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    return-void

    :cond_4a
    move v3, v5

    .line 265
    goto :goto_f

    :cond_4c
    move v1, v5

    .line 267
    goto :goto_29

    .restart local v1       #titleEmpty:Z
    :cond_4e
    move v0, v5

    .line 268
    goto :goto_3e
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/ReviewsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->configureViews()V

    .line 158
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/ReviewsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, result:Landroid/view/View;
    const v3, 0x7f080170

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    .local v1, headerView:Landroid/widget/TextView;
    const v3, 0x7f08011b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mUserReviewHeader:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v0

    .line 89
    .local v0, color:I
    const v3, 0x7f070126

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mUserReviewHeader:Landroid/widget/TextView;

    const v4, 0x7f0701ec

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mUserReviewHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->inflateReviewForm(Landroid/view/View;)V

    .line 96
    const v3, 0x7f080129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    .line 97
    const v3, 0x7f08012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    .line 98
    const v3, 0x7f080128

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    .line 99
    const v3, 0x7f08012b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    .line 100
    const v3, 0x7f08012c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCancel:Landroid/widget/Button;

    .line 104
    iget-boolean v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCanPostComments:Z

    if-nez v3, :cond_a3

    .line 105
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    .line 106
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    .line 107
    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCancel:Landroid/widget/Button;

    .line 110
    :cond_a3
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCancel:Landroid/widget/Button;

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewElements:[Landroid/view/View;

    .line 118
    return-object v2
.end method

.method protected rebindViews()V
    .registers 5

    .prologue
    .line 215
    invoke-super {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->rebindViews()V

    .line 218
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->getAdapter()Lcom/google/android/finsky/adapters/ReviewsAdapter;

    move-result-object v0

    .line 219
    .local v0, adapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->setHeaderVisible(Z)V

    .line 222
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeDetails;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v1

    .line 223
    .local v1, userReview:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    if-eqz v1, :cond_31

    .line 224
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 228
    :cond_31
    return-void
.end method

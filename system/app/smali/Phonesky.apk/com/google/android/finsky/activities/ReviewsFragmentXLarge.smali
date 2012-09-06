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
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
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
    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$1;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mListener:Lcom/android/volley/Response$Listener;

    .line 54
    new-instance v0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$2;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 63
    new-instance v0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$3;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->collapseForm()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->setFormEnabled(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Lcom/android/volley/Response$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mListener:Lcom/android/volley/Response$Listener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Lcom/android/volley/Response$ErrorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->updateSubmitState()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->expandForm()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->resetForm()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->populateForm()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->setKeyboardVisible(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)Landroid/widget/RatingBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    return-object v0
.end method

.method private canPostComments()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DocUtils;->canRate(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 152
    :cond_11
    :goto_11
    return v1

    .line 151
    :cond_12
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getMarketMetadata()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v0

    .line 152
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

    .line 246
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCanPostComments:Z

    if-eqz v0, :cond_15

    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    :cond_15
    return-void
.end method

.method private configureViews()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$4;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$5;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$5;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCancel:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$6;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$7;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$8;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$8;-><init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->updateSubmitState()V

    .line 214
    return-void
.end method

.method private expandForm()V
    .registers 7

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewElements:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 239
    .local v3, v:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 241
    .end local v3           #v:Landroid/view/View;
    :cond_f
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 242
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->setKeyboardVisible(Landroid/view/View;Z)V

    .line 243
    return-void
.end method

.method private inflateReviewForm(Landroid/view/View;)V
    .registers 7
    .parameter "container"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->canPostComments()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCanPostComments:Z

    .line 124
    const v1, 0x7f080152

    .line 126
    .local v1, layoutId:I
    iget-boolean v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCanPostComments:Z

    if-nez v3, :cond_10

    .line 129
    const v1, 0x7f080154

    .line 133
    :cond_10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 134
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, inflated:Landroid/view/View;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DocUtils;->canRate(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :goto_2e
    return-void

    .line 140
    :cond_2f
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mUserReviewHeader:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e
.end method

.method private populateForm()V
    .registers 4

    .prologue
    .line 229
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    .line 230
    .local v0, userReview:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    if-eqz v0, :cond_24

    .line 231
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 235
    :cond_24
    return-void
.end method

.method private resetForm()V
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->setKeyboardVisible(Landroid/view/View;Z)V

    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 260
    return-void
.end method

.method private setFormEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    return-void
.end method

.method private setKeyboardVisible(Landroid/view/View;Z)V
    .registers 7
    .parameter "v"
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 289
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_13

    .line 290
    invoke-virtual {v0, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 294
    :goto_12
    return-void

    .line 292
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

    .line 273
    const/4 v2, 0x1

    .line 274
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

    .line 275
    iget-boolean v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCanPostComments:Z

    if-eqz v3, :cond_44

    .line 276
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

    .line 277
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

    .line 281
    .local v0, commentEmpty:Z
    :goto_3e
    if-eqz v1, :cond_42

    if-eqz v0, :cond_43

    :cond_42
    move v5, v4

    :cond_43
    and-int/2addr v2, v5

    .line 283
    .end local v0           #commentEmpty:Z
    .end local v1           #titleEmpty:Z
    :cond_44
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    return-void

    :cond_4a
    move v3, v5

    .line 274
    goto :goto_f

    :cond_4c
    move v1, v5

    .line 276
    goto :goto_29

    .restart local v1       #titleEmpty:Z
    :cond_4e
    move v0, v5

    .line 277
    goto :goto_3e
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/ReviewsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->configureViews()V

    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/ReviewsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, result:Landroid/view/View;
    const v3, 0x7f0801f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, headerView:Landroid/widget/TextView;
    const v3, 0x7f08021b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mUserReviewHeader:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v0

    .line 90
    .local v0, color:I
    const v3, 0x7f07014f

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mUserReviewHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->inflateReviewForm(Landroid/view/View;)V

    .line 96
    const v3, 0x7f08015d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewTitle:Landroid/widget/EditText;

    .line 97
    const v3, 0x7f08015e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewEdit:Landroid/widget/EditText;

    .line 98
    const v3, 0x7f08015c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mRating:Landroid/widget/RatingBar;

    .line 99
    const v3, 0x7f08015f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mSubmit:Landroid/widget/Button;

    .line 100
    const v3, 0x7f080160

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCancel:Landroid/widget/Button;

    .line 104
    iget-boolean v3, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mCanPostComments:Z

    if-nez v3, :cond_9b

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
    :cond_9b
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
    .registers 3

    .prologue
    .line 218
    invoke-super {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->rebindViews()V

    .line 221
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->getAdapter()Lcom/google/android/finsky/adapters/ReviewsAdapter;

    move-result-object v0

    .line 222
    .local v0, adapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->setHeaderVisible(Z)V

    .line 224
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->populateForm()V

    .line 225
    return-void
.end method

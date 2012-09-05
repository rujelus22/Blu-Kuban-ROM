.class public Lcom/google/android/youtube/plus1/PlusOneButton;
.super Lcom/google/android/plus1/BasePlusOneButton;
.source "PlusOneButton.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# instance fields
.field private activity:Landroid/app/Activity;

.field private final iconContainer:Landroid/widget/FrameLayout;

.field private plusOneClient:Lcom/google/android/youtube/plus1/PlusOneClient;

.field private final progressBar:Landroid/widget/ProgressBar;

.field private final textView:Landroid/widget/TextView;

.field private userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/plus1/PlusOneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 19
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p2}, Lcom/google/android/plus1/BasePlusOneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/youtube/plus1/PlusOneButton;->setFocusable(Z)V

    .line 54
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/youtube/plus1/PlusOneButton;->setOrientation(I)V

    .line 55
    const/16 v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/youtube/plus1/PlusOneButton;->setGravity(I)V

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 58
    .local v6, resources:Landroid/content/res/Resources;
    sget-object v10, Lcom/google/android/youtube/R$styleable;->PlusOneButton:[I

    const/high16 v11, 0x7f0c

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 61
    .local v2, a:Landroid/content/res/TypedArray;
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->iconContainer:Landroid/widget/FrameLayout;

    .line 62
    const/4 v10, 0x2

    const/high16 v11, 0x7f0a

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 65
    .local v3, iconContainerPaddingTop:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->iconContainer:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v3, v12, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 66
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->iconContainer:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 67
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->iconContainer:Landroid/widget/FrameLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/android/youtube/plus1/PlusOneButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const/4 v10, 0x3

    const/high16 v11, 0x7f08

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 72
    .local v5, progressBarUseInverseStyle:Z
    new-instance v11, Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    if-eqz v5, :cond_103

    const v10, 0x1010288

    :goto_72
    move-object/from16 v0, p1

    invoke-direct {v11, v0, v12, v10}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->progressBar:Landroid/widget/ProgressBar;

    .line 74
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->progressBar:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setFocusable(Z)V

    .line 75
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->progressBar:Landroid/widget/ProgressBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 76
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->iconContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->progressBar:Landroid/widget/ProgressBar;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v15, 0x11

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->textView:Landroid/widget/TextView;

    .line 80
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->textView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 81
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->textView:Landroid/widget/TextView;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    const/4 v10, 0x0

    const v11, 0x7f0a0002

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 84
    .local v7, textSize:F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->textView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    const/4 v10, 0x1

    const/high16 v11, 0x7f09

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 87
    .local v9, textViewLines:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLines(I)V

    .line 88
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v8, textViewLayout:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x4

    const v11, 0x7f0a0001

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 92
    .local v4, iconTextGap:I
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 93
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/plus1/PlusOneButton;->textView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8}, Lcom/google/android/youtube/plus1/PlusOneButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void

    .line 72
    .end local v4           #iconTextGap:I
    .end local v7           #textSize:F
    .end local v8           #textViewLayout:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #textViewLines:I
    :cond_103
    const v10, 0x1010079

    goto/16 :goto_72
.end method


# virtual methods
.method protected getErrorDescription(Ljava/lang/Exception;Z)Ljava/lang/String;
    .registers 5
    .parameter "e"
    .parameter "userClicked"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/plus1/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f0b0014

    :goto_f
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const v0, 0x7f0b0013

    goto :goto_f
.end method

.method protected getPermissionNeededDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/youtube/plus1/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;
    .registers 3
    .parameter "username"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->plusOneClient:Lcom/google/android/youtube/plus1/PlusOneClient;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/plus1/PlusOneClient;->getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v0

    return-object v0
.end method

.method protected getSignupActivityClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/plus1/BasePlusOneSignupActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUsernameAsync()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 181
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/google/android/youtube/plus1/PlusOneClient;)V
    .registers 6
    .parameter "activity"
    .parameter "plusOneClient"

    .prologue
    .line 144
    const-string v1, "activity cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->activity:Landroid/app/Activity;

    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 146
    .local v0, application:Landroid/app/Application;
    instance-of v1, v0, Lcom/google/android/youtube/core/BaseApplication;

    const-string v2, "activity is not a compatible activity"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 148
    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    .end local v0           #application:Landroid/app/Application;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 149
    const-string v1, "plusOneClient cannot be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/plus1/PlusOneClient;

    iput-object v1, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->plusOneClient:Lcom/google/android/youtube/plus1/PlusOneClient;

    .line 150
    return-void
.end method

.method protected makeAnnotationString(Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "plusOne"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/youtube/plus1/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/plus1/PlusOneUtil;->makeAnnotationString(Landroid/content/Context;Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter "userAuth"

    .prologue
    .line 167
    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/plus1/PlusOneButton;->gotUsername(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .registers 2
    .parameter "exception"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/youtube/plus1/PlusOneButton;->onNotAuthenticated()V

    .line 176
    return-void
.end method

.method public onNotAuthenticated()V
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/plus1/PlusOneButton;->gotUsername(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected peekUsernameAsync()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 164
    return-void
.end method

.method protected setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 156
    const-string v0, "uri cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->activity:Landroid/app/Activity;

    const-string v1, "setUri cannot be called before init is called"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/plus1/PlusOneButton;->start(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 159
    return-void
.end method

.method protected showErrorIcon()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->iconContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 124
    return-void
.end method

.method protected showOffIcon()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->iconContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    return-void
.end method

.method protected showOnIcon()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->iconContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    return-void
.end method

.method protected showProgressIcon()V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->iconContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/plus1/PlusOneButton;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    return-void
.end method

.method protected signUpForPlusOne()V
    .registers 1

    .prologue
    .line 191
    return-void
.end method

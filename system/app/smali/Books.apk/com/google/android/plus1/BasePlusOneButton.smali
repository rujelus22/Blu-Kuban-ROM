.class public abstract Lcom/google/android/plus1/BasePlusOneButton;
.super Landroid/widget/LinearLayout;
.source "BasePlusOneButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/BasePlusOneButton$L;,
        Lcom/google/android/plus1/BasePlusOneButton$ResetOnClickListener;,
        Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;,
        Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;,
        Lcom/google/android/plus1/BasePlusOneButton$PlusOneStatusListener;
    }
.end annotation


# instance fields
.field private mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

.field private mAccountStatusError:Z

.field private final mAccountStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOneStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAuthorizing:Z

.field private mClicked:Z

.field private mError:Ljava/lang/String;

.field private final mMainOnClickListener:Landroid/view/View$OnClickListener;

.field private mOutsidePlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionNeeded:Z

.field private mPlusOneController:Lcom/google/android/plus1/PlusOneController;

.field private mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

.field private mPlusOneStatusError:Z

.field private final mPlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileImageListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResetOnClickListener:Landroid/view/View$OnClickListener;

.field private mResultPending:Z

.field private mUri:Landroid/net/Uri;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/BasePlusOneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance v0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneStatusListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/BasePlusOneButton$PlusOneStatusListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 85
    new-instance v0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 86
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mProfileImageListeners:Ljava/util/Set;

    .line 87
    new-instance v0, Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mMainOnClickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/google/android/plus1/BasePlusOneButton$ResetOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/BasePlusOneButton$ResetOnClickListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mResetOnClickListener:Landroid/view/View$OnClickListener;

    .line 89
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/PlusOneStatus;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/PlusOneStatus;)Lcom/google/android/plus1/PlusOneStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/plus1/BasePlusOneButton;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusError:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusError:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/PlusOneController$ValueListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mOutsidePlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/PlusOne;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/PlusOne;)Lcom/google/android/plus1/PlusOne;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/android/plus1/BasePlusOneButton;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mResultPending:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/Exception;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->initPlusOne()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAuthorizing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->maybeContinueClick()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/plus1/BasePlusOneButton;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPermissionNeeded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->updateView()V

    return-void
.end method

.method private addPlusOneListeners()V
    .registers 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/plus1/PlusOneController;->addPlusOneListener(Ljava/util/Set;Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 292
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/PlusOneController;->addAccountStatusListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 294
    :cond_1e
    return-void
.end method

.method private handleAuthException(Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)V
    .registers 4
    .parameter "exception"

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    if-eqz v0, :cond_26

    .line 414
    const-string v0, "Click continue pending: needs user authorization to +1"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 415
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAuthorizing:Z

    if-eqz v0, :cond_13

    .line 416
    const-string v0, "Already asked user to authorize +1, skipping."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->i(Ljava/lang/String;)V

    .line 443
    :cond_12
    :goto_12
    return-void

    .line 418
    :cond_13
    const-string v0, "Asking user to authorize +1..."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->i(Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAuthorizing:Z

    .line 420
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/plus1/BasePlusOneButton$1;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/BasePlusOneButton$1;-><init>(Lcom/google/android/plus1/BasePlusOneButton;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->resolve(Landroid/app/Activity;Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    goto :goto_12

    .line 439
    :cond_26
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 440
    const-string v0, "user has not authorized +1, using default controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->i(Ljava/lang/String;)V

    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setUpController(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private handleException(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;Z)V

    .line 381
    return-void
.end method

.method private handleException(Ljava/lang/Exception;Z)V
    .registers 5
    .parameter "exception"
    .parameter "displayAlways"

    .prologue
    const/4 v1, 0x0

    .line 390
    iput-boolean v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPermissionNeeded:Z

    .line 392
    instance-of v0, p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    if-eqz v0, :cond_d

    .line 393
    check-cast p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->handleAuthException(Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)V

    .line 403
    :cond_c
    :goto_c
    return-void

    .line 394
    .restart local p1
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    if-nez v0, :cond_13

    if-eqz p2, :cond_c

    .line 396
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    if-eqz v0, :cond_1e

    .line 397
    const-string v0, "Can\'t continue click: a non-authorization error has occurred. Click voided."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 398
    iput-boolean v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    .line 400
    :cond_1e
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/plus1/BasePlusOneButton;->getErrorDescription(Ljava/lang/Exception;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;

    .line 401
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->updateView()V

    goto :goto_c
.end method

.method private initPlusOne()V
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->resetPlusOne(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->peekUsernameAsync()V

    .line 242
    :cond_b
    return-void
.end method

.method private maybeContinueClick()V
    .registers 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    if-nez v0, :cond_5

    .line 365
    :goto_4
    return-void

    .line 348
    :cond_5
    const-string v0, "Continuing click."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 349
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusError:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z

    if-eqz v0, :cond_1b

    .line 350
    :cond_12
    const-string v0, "Click continue pending: controller has failed getting +1 status objects; refetching"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->refresh()V

    goto :goto_4

    .line 353
    :cond_1b
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    if-nez v0, :cond_29

    .line 354
    :cond_23
    const-string v0, "Click continue pending: +1 status objects are still on their way"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 356
    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    .line 357
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 358
    const-string v0, "Click completed: user signed up for +1, toggling +1 status"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->togglePlusOne()V

    goto :goto_4

    .line 361
    :cond_3f
    const-string v0, "Click completed: asking user to sign up to +1"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->signUpForPlusOne()V

    goto :goto_4
.end method

.method private refresh()V
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->resetPlusOne(Z)V

    .line 318
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->addPlusOneListeners()V

    .line 320
    :cond_b
    return-void
.end method

.method private resetPlusOne(Z)V
    .registers 8
    .parameter "alsoSetControllerNull"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 297
    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    if-eqz v2, :cond_3b

    .line 298
    const-string v2, "Resetting Controller."

    invoke-static {v2}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    iget-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-virtual {v2, v3}, Lcom/google/android/plus1/PlusOneController;->removePlusOneListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 300
    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    iget-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-virtual {v2, v3}, Lcom/google/android/plus1/PlusOneController;->removeAccountStatusListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 301
    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mProfileImageListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 302
    .local v1, listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;"
    iget-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    invoke-virtual {v2, v1}, Lcom/google/android/plus1/PlusOneController;->removeProfileImageListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    goto :goto_1f

    .line 304
    .end local v1           #listener:Lcom/google/android/plus1/PlusOneController$ValueListener;,"Lcom/google/android/plus1/PlusOneController$ValueListener<Landroid/graphics/Bitmap;>;"
    :cond_31
    iput-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    .line 305
    iput-boolean v5, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusError:Z

    .line 306
    iput-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;

    .line 307
    iput-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    .line 308
    iput-boolean v5, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z

    .line 310
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3b
    if-eqz p1, :cond_3f

    .line 311
    iput-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    .line 313
    :cond_3f
    return-void
.end method

.method private setUpController(Ljava/lang/String;)V
    .registers 3
    .parameter "username"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUsername:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 268
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->resetPlusOne(Z)V

    .line 269
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUsername:Ljava/lang/String;

    .line 270
    invoke-virtual {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    .line 271
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    if-nez v0, :cond_2e

    .line 272
    if-nez p1, :cond_24

    .line 273
    const-string v0, "can\'t get an anonymous controller, this button is dead."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->e(Ljava/lang/String;)V

    .line 287
    :goto_23
    return-void

    .line 276
    :cond_24
    const-string v0, "can\'t get controller for user, revert to anonymous."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->e(Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->gotUsername(Ljava/lang/String;)V

    goto :goto_23

    .line 280
    :cond_2e
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->addPlusOneListeners()V

    .line 281
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->updateView()V

    goto :goto_23

    .line 284
    :cond_35
    const-string v0, "Reusing current controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->maybeContinueClick()V

    goto :goto_23
.end method

.method private togglePlusOne()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 369
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mResultPending:Z

    .line 370
    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    invoke-virtual {v1}, Lcom/google/android/plus1/PlusOneController;->edit()Lcom/google/android/plus1/PlusOneEditor;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    iget-object v1, v1, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_17
    iget-object v5, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    iget-object v5, v5, Lcom/google/android/plus1/PlusOne;->abuseToken:Ljava/lang/String;

    invoke-interface {v3, v4, v1, v5}, Lcom/google/android/plus1/PlusOneEditor;->setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1e} :catch_21
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_2 .. :try_end_1e} :catch_26

    .line 377
    :goto_1e
    return-void

    .line 370
    :cond_1f
    const/4 v1, 0x0

    goto :goto_17

    .line 372
    :catch_21
    move-exception v0

    .line 373
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0, v2}, Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;Z)V

    goto :goto_1e

    .line 374
    .end local v0           #e:Ljava/io/IOException;
    :catch_26
    move-exception v0

    .line 375
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    invoke-direct {p0, v0, v2}, Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;Z)V

    goto :goto_1e
.end method

.method private updateView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 324
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->showErrorIcon()V

    .line 325
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setErrorText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mResetOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    :goto_12
    return-void

    .line 327
    :cond_13
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    if-nez v0, :cond_21

    .line 329
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->showProgressIcon()V

    .line 330
    invoke-virtual {p0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {p0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12

    .line 334
    :cond_21
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 335
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->showOnIcon()V

    .line 339
    :goto_2e
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->makeAnnotationString(Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mMainOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12

    .line 337
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->showOffIcon()V

    goto :goto_2e
.end method


# virtual methods
.method protected abstract getErrorDescription(Ljava/lang/Exception;Z)Ljava/lang/String;
.end method

.method protected abstract getPermissionNeededDescription()Ljava/lang/String;
.end method

.method protected abstract getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;
.end method

.method protected abstract getSignupActivityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/plus1/BasePlusOneSignupActivity;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getUsernameAsync()V
.end method

.method protected final gotUsername(Ljava/lang/String;)V
    .registers 4
    .parameter "username"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    const-string v1, "gotUsername should not be called without calling start."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    if-nez p1, :cond_1f

    .line 254
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    if-eqz v0, :cond_19

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    .line 256
    const-string v0, "User NOT authenticated, click voided. Resetting +1 controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 263
    :goto_15
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->setUpController(Ljava/lang/String;)V

    .line 264
    return-void

    .line 258
    :cond_19
    const-string v0, "User NOT authenticated. Resetting +1 controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    goto :goto_15

    .line 261
    :cond_1f
    const-string v0, "User authenticated. Setting up +1 controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected abstract makeAnnotationString(Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;
.end method

.method protected abstract peekUsernameAsync()V
.end method

.method protected setErrorText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method protected abstract setText(Ljava/lang/CharSequence;)V
.end method

.method protected abstract showErrorIcon()V
.end method

.method protected abstract showOffIcon()V
.end method

.method protected abstract showOnIcon()V
.end method

.method protected abstract showProgressIcon()V
.end method

.method protected signUpForPlusOne()V
    .registers 7

    .prologue
    .line 446
    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->getSignupActivityClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    iget-object v5, v5, Lcom/google/android/plus1/PlusOne;->abuseToken:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->makeIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 448
    .local v0, signUpIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 449
    return-void
.end method

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

.field private final mResetOnClickListener:Landroid/view/View$OnClickListener;

.field private mUri:Landroid/net/Uri;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/BasePlusOneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneStatusListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/BasePlusOneButton$PlusOneStatusListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 73
    new-instance v0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 74
    new-instance v0, Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mMainOnClickListener:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/google/android/plus1/BasePlusOneButton$ResetOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/BasePlusOneButton$ResetOnClickListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mResetOnClickListener:Landroid/view/View$OnClickListener;

    .line 76
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/plus1/BasePlusOneButton;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusError:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusError:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/PlusOne;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/PlusOne;)Lcom/google/android/plus1/PlusOne;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/plus1/BasePlusOneButton;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/Exception;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->initPlusOne()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAuthorizing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->maybeContinueClick()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/plus1/BasePlusOneButton;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/plus1/BasePlusOneButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->updateView()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/PlusOneStatus;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/PlusOneStatus;)Lcom/google/android/plus1/PlusOneStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    return-object p1
.end method

.method private addPlusOneListeners()V
    .registers 5

    .prologue
    .line 238
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

    .line 239
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 240
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/PlusOneController;->addAccountStatusListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 242
    :cond_1e
    return-void
.end method

.method private handleAuthException(Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)V
    .registers 4
    .parameter "exception"

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    if-eqz v0, :cond_26

    .line 355
    const-string v0, "Click continue pending: needs user authorization to +1"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 356
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAuthorizing:Z

    if-eqz v0, :cond_13

    .line 357
    const-string v0, "Already asked user to authorize +1, skipping."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->i(Ljava/lang/String;)V

    .line 383
    :cond_12
    :goto_12
    return-void

    .line 359
    :cond_13
    const-string v0, "Asking user to authorize +1..."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->i(Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAuthorizing:Z

    .line 361
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/plus1/BasePlusOneButton$1;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/BasePlusOneButton$1;-><init>(Lcom/google/android/plus1/BasePlusOneButton;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->resolve(Landroid/app/Activity;Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    goto :goto_12

    .line 379
    :cond_26
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 380
    const-string v0, "user has not authorized +1, using default controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->i(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setUpController(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private handleException(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;Z)V

    .line 324
    return-void
.end method

.method private handleException(Ljava/lang/Exception;Z)V
    .registers 4
    .parameter "exception"
    .parameter "displayAlways"

    .prologue
    .line 333
    instance-of v0, p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    if-eqz v0, :cond_a

    .line 334
    check-cast p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->handleAuthException(Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)V

    .line 344
    :cond_9
    :goto_9
    return-void

    .line 335
    .restart local p1
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    if-nez v0, :cond_10

    if-eqz p2, :cond_9

    .line 337
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    if-eqz v0, :cond_1c

    .line 338
    const-string v0, "Can\'t continue click: a non-authorization error has occurred. Click voided."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    .line 341
    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/plus1/BasePlusOneButton;->getErrorDescription(Ljava/lang/Exception;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->updateView()V

    goto :goto_9
.end method

.method private initPlusOne()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->resetPlusOne(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->peekUsernameAsync()V

    .line 190
    :cond_b
    return-void
.end method

.method private maybeContinueClick()V
    .registers 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    if-nez v0, :cond_5

    .line 310
    :goto_4
    return-void

    .line 293
    :cond_5
    const-string v0, "Continuing click."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 294
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusError:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z

    if-eqz v0, :cond_1b

    .line 295
    :cond_12
    const-string v0, "Click continue pending: controller has failed getting +1 status objects; refetching"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->refresh()V

    goto :goto_4

    .line 298
    :cond_1b
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    if-nez v0, :cond_29

    .line 299
    :cond_23
    const-string v0, "Click continue pending: +1 status objects are still on their way"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 301
    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    .line 302
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 303
    const-string v0, "Click completed: user signed up for +1, toggling +1 status"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->togglePlusOne()V

    goto :goto_4

    .line 306
    :cond_3f
    const-string v0, "Click completed: asking user to sign up to +1"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->signUpForPlusOne()V

    goto :goto_4
.end method

.method private refresh()V
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->resetPlusOne(Z)V

    .line 263
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->addPlusOneListeners()V

    .line 265
    :cond_b
    return-void
.end method

.method private resetPlusOne(Z)V
    .registers 6
    .parameter "alsoSetControllerNull"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    if-eqz v0, :cond_23

    .line 246
    const-string v0, "Resetting Controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/PlusOneController;->removePlusOneListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/PlusOneController;->removeAccountStatusListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 249
    iput-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    .line 250
    iput-boolean v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->mAccountStatusError:Z

    .line 251
    iput-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;

    .line 252
    iput-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    .line 253
    iput-boolean v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z

    .line 255
    :cond_23
    if-eqz p1, :cond_27

    .line 256
    iput-object v2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    .line 258
    :cond_27
    return-void
.end method

.method private setUpController(Ljava/lang/String;)V
    .registers 3
    .parameter "username"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUsername:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 216
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->resetPlusOne(Z)V

    .line 217
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUsername:Ljava/lang/String;

    .line 218
    invoke-virtual {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    .line 219
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    if-nez v0, :cond_2e

    .line 220
    if-nez p1, :cond_24

    .line 221
    const-string v0, "can\'t get an anonymous controller, this button is dead."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->e(Ljava/lang/String;)V

    .line 235
    :goto_23
    return-void

    .line 224
    :cond_24
    const-string v0, "can\'t get controller for user, revert to anonymous."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->e(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->gotUsername(Ljava/lang/String;)V

    goto :goto_23

    .line 228
    :cond_2e
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->addPlusOneListeners()V

    .line 229
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->updateView()V

    goto :goto_23

    .line 232
    :cond_35
    const-string v0, "Reusing current controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->maybeContinueClick()V

    goto :goto_23
.end method

.method private togglePlusOne()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 314
    :try_start_1
    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneController:Lcom/google/android/plus1/PlusOneController;

    invoke-virtual {v1}, Lcom/google/android/plus1/PlusOneController;->edit()Lcom/google/android/plus1/PlusOneEditor;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    iget-object v1, v1, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_14
    invoke-interface {v3, v4, v1}, Lcom/google/android/plus1/PlusOneEditor;->setPlusOne(Landroid/net/Uri;Z)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_1a
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1 .. :try_end_17} :catch_1f

    .line 320
    :goto_17
    return-void

    .line 314
    :cond_18
    const/4 v1, 0x0

    goto :goto_14

    .line 315
    :catch_1a
    move-exception v0

    .line 316
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v0, v2}, Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;Z)V

    goto :goto_17

    .line 317
    .end local v0           #e:Ljava/io/IOException;
    :catch_1f
    move-exception v0

    .line 318
    .local v0, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    invoke-direct {p0, v0, v2}, Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;Z)V

    goto :goto_17
.end method

.method private updateView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 269
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->showErrorIcon()V

    .line 270
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mResetOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    :goto_12
    return-void

    .line 272
    :cond_13
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    if-nez v0, :cond_21

    .line 274
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->showProgressIcon()V

    .line 275
    invoke-virtual {p0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {p0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12

    .line 279
    :cond_21
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 280
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->showOnIcon()V

    .line 284
    :goto_2e
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->makeAnnotationString(Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mMainOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12

    .line 282
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
    .line 200
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    const-string v1, "gotUsername should not be called without calling start."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    if-nez p1, :cond_1f

    .line 202
    iget-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    if-eqz v0, :cond_19

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z

    .line 204
    const-string v0, "User NOT authenticated, click voided. Resetting +1 controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 211
    :goto_15
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->setUpController(Ljava/lang/String;)V

    .line 212
    return-void

    .line 206
    :cond_19
    const-string v0, "User NOT authenticated. Resetting +1 controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    goto :goto_15

    .line 209
    :cond_1f
    const-string v0, "User authenticated. Setting up +1 controller."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected abstract makeAnnotationString(Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;
.end method

.method protected abstract peekUsernameAsync()V
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
    .registers 6

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneButton;->getSignupActivityClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->makeIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 388
    return-void
.end method

.method public start(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 175
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "uri cannot be null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton;->mActivity:Landroid/app/Activity;

    .line 178
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlusOneButton received a new URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 180
    iput-object p2, p0, Lcom/google/android/plus1/BasePlusOneButton;->mUri:Landroid/net/Uri;

    .line 181
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneButton;->initPlusOne()V

    .line 183
    :cond_2f
    return-void
.end method

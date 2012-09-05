.class public Lcom/android/calendar/ComposeHeaderView$ToButton;
.super Landroid/widget/Button;
.source "ComposeHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ComposeHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToButton"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Z

.field private mEmail:Ljava/lang/String;

.field private mFormattedNumber:Z

.field private mHeight:I

.field private mKeepTextFocus:Z

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mWidth:I

.field private mXPos:I

.field private mYPos:I

.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ComposeHeaderView;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 411
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->this$0:Lcom/android/calendar/ComposeHeaderView;

    .line 413
    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 359
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    .line 363
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    .line 367
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mEmail:Ljava/lang/String;

    .line 371
    iput v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mXPos:I

    .line 375
    iput v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mYPos:I

    .line 379
    iput v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mWidth:I

    .line 383
    iput v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mHeight:I

    .line 391
    iput-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mFormattedNumber:Z

    .line 395
    iput-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z

    .line 399
    iput-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mKeepTextFocus:Z

    .line 417
    iput-object p2, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mContext:Landroid/content/Context;

    .line 419
    const v0, 0x7f0200b1

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setBackgroundResource(I)V

    .line 423
    invoke-virtual {p1}, Lcom/android/calendar/ComposeHeaderView;->ToBtnCreateAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 427
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 429
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setLines(I)V

    .line 433
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 437
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->initButton()V

    .line 439
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/ComposeHeaderView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .parameter
    .parameter "context"
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "email"
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    const/4 v1, 0x1

    .line 447
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/ComposeHeaderView$ToButton;-><init>(Lcom/android/calendar/ComposeHeaderView;Landroid/content/Context;)V

    .line 451
    if-nez p4, :cond_38

    .line 455
    iput-boolean v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mFormattedNumber:Z

    .line 457
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    .line 473
    :goto_e
    iput-object p5, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    .line 475
    iput-object p6, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mEmail:Ljava/lang/String;

    .line 477
    iput p7, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mXPos:I

    .line 479
    iput p8, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mYPos:I

    .line 483
    invoke-virtual {p0, p3}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setId(I)V

    .line 485
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setText(Ljava/lang/CharSequence;)V

    .line 487
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setTextColor(I)V

    .line 491
    invoke-virtual {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->refreshToBtntag()V

    .line 495
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 497
    invoke-virtual {p0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setLines(I)V

    .line 499
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 503
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->initButton()V

    .line 505
    return-void

    .line 465
    :cond_38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mFormattedNumber:Z

    .line 467
    iput-object p4, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    goto :goto_e
.end method

.method static synthetic access$000(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/calendar/ComposeHeaderView$ToButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/ComposeHeaderView$ToButton;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/ComposeHeaderView$ToButton;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mFormattedNumber:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/ComposeHeaderView$ToButton;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/ComposeHeaderView$ToButton;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->resetDeleteButtonBoolean()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mKeepTextFocus:Z

    return v0
.end method

.method private initButton()V
    .registers 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setKeyListen()V

    .line 533
    invoke-virtual {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusListen()V

    .line 535
    return-void
.end method

.method private resetDeleteButtonBoolean()V
    .registers 2

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z

    .line 525
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public refreshToBtntag()V
    .registers 5

    .prologue
    .line 511
    const-string v1, "%d;%s;%s;%s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    if-nez v0, :cond_33

    const-string v0, ""

    :goto_17
    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    if-nez v0, :cond_36

    const-string v0, ""

    :goto_20
    aput-object v0, v2, v3

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mEmail:Ljava/lang/String;

    if-nez v0, :cond_39

    const-string v0, ""

    :goto_29
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setTag(Ljava/lang/Object;)V

    .line 515
    return-void

    .line 511
    :cond_33
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;

    goto :goto_17

    :cond_36
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;

    goto :goto_20

    :cond_39
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mEmail:Ljava/lang/String;

    goto :goto_29
.end method

.method public setFocusListen()V
    .registers 2

    .prologue
    .line 609
    new-instance v0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/ComposeHeaderView$ToButton$2;-><init>(Lcom/android/calendar/ComposeHeaderView$ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 657
    return-void
.end method

.method public setKeepTextFocus(Z)V
    .registers 2
    .parameter "keep"

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton;->mKeepTextFocus:Z

    .line 407
    return-void
.end method

.method public setKeyListen()V
    .registers 2

    .prologue
    .line 541
    new-instance v0, Lcom/android/calendar/ComposeHeaderView$ToButton$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/ComposeHeaderView$ToButton$1;-><init>(Lcom/android/calendar/ComposeHeaderView$ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 603
    return-void
.end method

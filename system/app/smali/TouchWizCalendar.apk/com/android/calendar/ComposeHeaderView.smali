.class public Lcom/android/calendar/ComposeHeaderView;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ComposeHeaderView$ToButton;
    }
.end annotation


# static fields
.field private static mRecipients:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/ComposeHeaderView$ToButton;",
            ">;"
        }
    .end annotation
.end field

.field private static mToButtonId:I

.field private static sInstance:Lcom/android/calendar/ComposeHeaderView;


# instance fields
.field private final TAG:Ljava/lang/String;

.field invalidEmail:Z

.field private mAlreadyValidatedAddress:Z

.field private mBtnMaxWidthLandscape:I

.field private mBtnMaxWidthLandscapeEas:I

.field private mBtnMaxWidthPortrait:I

.field private mBtnMaxWidthPortraitEas:I

.field private mContext:Landroid/content/Context;

.field private mDefaultRowHeight:I

.field private mDuplicatedRecipientsToast:Landroid/widget/Toast;

.field private mKeepToBoxVisible:Z

.field private mParentActivity:Lcom/android/calendar/EditEvent;

.field private mRecipientAddedToast:Landroid/widget/Toast;

.field private mRecipientLimitToast:Landroid/widget/Toast;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mScheduleButton:Landroid/view/View;

.field private mSelectedToButtonId:I

.field private mToBtnContainer:Landroid/widget/LinearLayout;

.field private final mToBtnDelHandler:Landroid/os/Handler;

.field private mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

.field mToEdit:Lcom/android/calendar/ConvNameEditText;

.field public final mToEditHandler:Landroid/os/Handler;

.field private mToLayout:Landroid/widget/LinearLayout;

.field private mWrongAttendee:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 255
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/ComposeHeaderView;->sInstance:Lcom/android/calendar/ComposeHeaderView;

    .line 679
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    .line 683
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 9
    .parameter "activity"
    .parameter "context"
    .parameter "rootView"

    .prologue
    const/4 v4, 0x0

    .line 687
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const-string v1, "ComposeHeaderView"

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->TAG:Ljava/lang/String;

    .line 195
    iput-boolean v4, p0, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    .line 199
    iput-boolean v4, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    .line 231
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    .line 243
    iput-boolean v4, p0, Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z

    .line 339
    const/16 v1, 0x179

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortraitEas:I

    .line 341
    const/16 v1, 0x2b9

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscapeEas:I

    .line 343
    const/16 v1, 0x1ca

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortrait:I

    .line 345
    const/16 v1, 0x30a

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscape:I

    .line 347
    const/16 v1, 0x2e

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDefaultRowHeight:I

    .line 1301
    new-instance v1, Lcom/android/calendar/ComposeHeaderView$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$5;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEditHandler:Landroid/os/Handler;

    .line 2600
    new-instance v1, Lcom/android/calendar/ComposeHeaderView$10;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$10;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnDelHandler:Landroid/os/Handler;

    .line 689
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    .line 691
    iput-object p2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    .line 693
    iput-object p3, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 695
    sput-object p0, Lcom/android/calendar/ComposeHeaderView;->sInstance:Lcom/android/calendar/ComposeHeaderView;

    .line 697
    const v1, 0x7f0f0023

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    .line 699
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0027

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ToBtnLayout;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    .line 701
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v1, p0}, Lcom/android/calendar/ToBtnLayout;->setConfigListener(Lcom/android/calendar/ComposeHeaderView;)V

    .line 705
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v1, p0}, Lcom/android/calendar/ToBtnLayout;->setParentClass(Lcom/android/calendar/ComposeHeaderView;)V

    .line 707
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0026

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    .line 711
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 713
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0028

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mScheduleButton:Landroid/view/View;

    .line 717
    const v1, 0x7f0f002a

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ConvNameEditText;

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    .line 719
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setImeOptions(I)V

    .line 729
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1, p0}, Lcom/android/calendar/ConvNameEditText;->setComposeHeaderView(Lcom/android/calendar/ComposeHeaderView;)V

    .line 731
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->setSingleLine()V

    .line 735
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Lcom/android/calendar/ComposeHeaderView$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/ComposeHeaderView$1;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 833
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Lcom/android/calendar/ComposeHeaderView$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/ComposeHeaderView$2;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 925
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/ConvNameEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 929
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Lcom/android/calendar/ComposeHeaderView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/ComposeHeaderView$3;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 957
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Lcom/android/calendar/ComposeHeaderView$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/ComposeHeaderView$4;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 977
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 999
    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    .line 1001
    sput v4, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    .line 1039
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1041
    .local v0, resource:Landroid/content/res/Resources;
    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortraitEas:I

    .line 1043
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscapeEas:I

    .line 1045
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortrait:I

    .line 1047
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscape:I

    .line 1049
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDefaultRowHeight:I

    .line 1053
    return-void
.end method

.method private CheckDuplicateOfRecipient(Ljava/lang/String;)Z
    .registers 6
    .parameter "recipientInfo"

    .prologue
    const/4 v2, 0x0

    .line 1175
    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    if-nez v3, :cond_e

    .line 1193
    :cond_d
    :goto_d
    return v2

    .line 1181
    :cond_e
    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    .line 1183
    .local v0, btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    #getter for: Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1100(Lcom/android/calendar/ComposeHeaderView$ToButton;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1187
    const/4 v2, 0x1

    goto :goto_d
.end method

.method static synthetic access$1000(Lcom/android/calendar/ComposeHeaderView;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/ComposeHeaderView;->addRecipientFromEditText(ZZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/calendar/ComposeHeaderView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/ComposeHeaderView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 187
    iget v0, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/ComposeHeaderView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput p1, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    return p1
.end method

.method static synthetic access$1500()Ljava/util/SortedMap;
    .registers 1

    .prologue
    .line 187
    sget-object v0, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/ComposeHeaderView;)Lcom/android/calendar/EditEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/ComposeHeaderView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnDelHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/ComposeHeaderView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->looseFocusFromEditText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/ComposeHeaderView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/calendar/ComposeHeaderView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/calendar/ComposeHeaderView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/ComposeHeaderView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/ComposeHeaderView;)Lcom/android/calendar/ToBtnLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/ComposeHeaderView;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/ComposeHeaderView;->removeSpaceAndAddRecipient(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addRecipientFromEditText(ZZ)V
    .registers 8
    .parameter "hasSemicolon"
    .parameter "showToast"

    .prologue
    const/4 v4, 0x1

    .line 1341
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, input:Ljava/lang/String;
    if-eqz p1, :cond_26

    .line 1347
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1b

    .line 1353
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1432
    :goto_1a
    return-void

    .line 1361
    :cond_1b
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1367
    :cond_26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_3e

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ge v2, v4, :cond_49

    .line 1369
    :cond_3e
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->showErrorMessage()V

    .line 1370
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1376
    :cond_49
    const/4 v1, 0x0

    .line 1400
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1406
    invoke-direct {p0, v0, v1, p2, v4}, Lcom/android/calendar/ComposeHeaderView;->removeSpaceAndAddRecipient(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1a
.end method

.method private checkRecipientInEditText(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6
    .parameter "recipients"
    .parameter "tempRecipient"

    .prologue
    .line 2158
    const/4 v1, 0x0

    .line 2160
    .local v1, toEditNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2162
    .local v0, noneFormatNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v2}, Lcom/android/calendar/ToBtnLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_40

    .line 2172
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2174
    invoke-static {v1}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2176
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2184
    :cond_2a
    :goto_2a
    if-eqz v0, :cond_40

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 2186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3d

    .line 2188
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    :cond_3d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    :cond_40
    return-void

    .line 2178
    :cond_41
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2180
    move-object v0, v1

    goto :goto_2a
.end method

.method public static getInstance()Lcom/android/calendar/ComposeHeaderView;
    .registers 1

    .prologue
    .line 1279
    sget-object v0, Lcom/android/calendar/ComposeHeaderView;->sInstance:Lcom/android/calendar/ComposeHeaderView;

    return-object v0
.end method

.method private looseFocusFromEditText()V
    .registers 5

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1223
    sget-object v0, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 1225
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->getConvName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    :goto_25
    return-void

    .line 1229
    :cond_26
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25
.end method

.method private rebuildToBtn()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x2

    .line 2318
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v11}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v11

    if-nez v11, :cond_b

    .line 2516
    :cond_a
    return-void

    .line 2326
    :cond_b
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v11}, Lcom/android/calendar/ToBtnLayout;->removeAllButton()V

    .line 2328
    const/4 v0, 0x4

    .line 2348
    .local v0, OFFSET_X:I
    sget-object v11, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v11}, Ljava/util/SortedMap;->size()I

    move-result v11

    if-lez v11, :cond_9f

    .line 2350
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    invoke-virtual {v11}, Lcom/android/calendar/EditEvent;->setScheduleButtonVisible()V

    .line 2358
    :goto_1e
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_a9

    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mScheduleButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_a6

    iget v5, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortraitEas:I

    .line 2368
    .local v5, maxWidth:I
    :goto_30
    move v6, v5

    .line 2370
    .local v6, remainW:I
    const/4 v9, 0x0

    .line 2372
    .local v9, xPos:I
    const/4 v10, 0x0

    .line 2374
    .local v10, yPos:I
    const/4 v2, 0x0

    .line 2380
    .local v2, btnW:I
    const/4 v8, 0x0

    .line 2386
    .local v8, tempBtnW:I
    sget-object v11, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v11}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ComposeHeaderView$ToButton;

    .line 2402
    .local v1, btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    #getter for: Lcom/android/calendar/ComposeHeaderView$ToButton;->mFormattedNumber:Z
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1300(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_69

    .line 2404
    #getter for: Lcom/android/calendar/ComposeHeaderView$ToButton;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1400(Lcom/android/calendar/ComposeHeaderView$ToButton;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/calendar/Utils;->getNameByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2406
    .local v7, str:Ljava/lang/String;
    if-eqz v7, :cond_69

    .line 2408
    #setter for: Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1102(Lcom/android/calendar/ComposeHeaderView$ToButton;Ljava/lang/String;)Ljava/lang/String;

    .line 2410
    #getter for: Lcom/android/calendar/ComposeHeaderView$ToButton;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1100(Lcom/android/calendar/ComposeHeaderView$ToButton;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setText(Ljava/lang/CharSequence;)V

    .line 2416
    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->refreshToBtntag()V

    .line 2426
    .end local v7           #str:Ljava/lang/String;
    :cond_69
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v4, v13, v13, v14, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 2432
    .local v4, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v1, v4}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2434
    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/calendar/Utils;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v11

    add-int/lit8 v8, v11, 0x14

    .line 2438
    const/4 v2, -0x2

    .line 2440
    if-le v8, v6, :cond_c8

    .line 2442
    if-nez v9, :cond_b9

    .line 2444
    move v2, v6

    .line 2446
    const/4 v6, 0x0

    .line 2484
    :goto_86
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2486
    iput v9, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 2488
    iput v10, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 2490
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    iget-object v12, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v12}, Lcom/android/calendar/ToBtnLayout;->getToButtonCount()I

    move-result v12

    invoke-virtual {v11, v1, v12, v4}, Lcom/android/calendar/ToBtnLayout;->addButton(Landroid/view/View;ILandroid/widget/AbsoluteLayout$LayoutParams;)V

    .line 2492
    if-nez v6, :cond_cd

    .line 2494
    iget v11, p0, Lcom/android/calendar/ComposeHeaderView;->mDefaultRowHeight:I

    add-int/2addr v10, v11

    .line 2496
    const/4 v9, 0x0

    .line 2498
    move v6, v5

    goto :goto_3f

    .line 2354
    .end local v1           #btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    .end local v2           #btnW:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v5           #maxWidth:I
    .end local v6           #remainW:I
    .end local v8           #tempBtnW:I
    .end local v9           #xPos:I
    .end local v10           #yPos:I
    :cond_9f
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    invoke-virtual {v11}, Lcom/android/calendar/EditEvent;->setScheduleButtonGone()V

    goto/16 :goto_1e

    .line 2358
    :cond_a6
    iget v5, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthPortrait:I

    goto :goto_30

    :cond_a9
    iget-object v11, p0, Lcom/android/calendar/ComposeHeaderView;->mScheduleButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_b5

    iget v5, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscapeEas:I

    goto/16 :goto_30

    :cond_b5
    iget v5, p0, Lcom/android/calendar/ComposeHeaderView;->mBtnMaxWidthLandscape:I

    goto/16 :goto_30

    .line 2450
    .restart local v1       #btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    .restart local v2       #btnW:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    .restart local v5       #maxWidth:I
    .restart local v6       #remainW:I
    .restart local v8       #tempBtnW:I
    .restart local v9       #xPos:I
    .restart local v10       #yPos:I
    :cond_b9
    iget v11, p0, Lcom/android/calendar/ComposeHeaderView;->mDefaultRowHeight:I

    add-int/2addr v10, v11

    .line 2452
    const/4 v9, 0x0

    .line 2454
    move v6, v5

    .line 2458
    if-le v8, v6, :cond_c3

    .line 2460
    move v2, v6

    .line 2462
    const/4 v6, 0x0

    goto :goto_86

    .line 2466
    :cond_c3
    move v2, v8

    .line 2468
    add-int v11, v2, v0

    sub-int/2addr v6, v11

    goto :goto_86

    .line 2476
    :cond_c8
    move v2, v8

    .line 2478
    add-int v11, v2, v0

    sub-int/2addr v6, v11

    goto :goto_86

    .line 2502
    :cond_cd
    add-int v11, v2, v0

    add-int/2addr v9, v11

    goto/16 :goto_3f
.end method

.method private removeSpaceAndAddRecipient(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 15
    .parameter "inputs"
    .parameter "name"
    .parameter "showToast"
    .parameter "showDialog"

    .prologue
    .line 1067
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_90

    .line 1075
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1077
    .local v4, recipients:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_f
    if-ge v1, v2, :cond_90

    aget-object v3, v0, v1

    .line 1083
    .local v3, recipient:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1085
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1093
    :cond_21
    const-string v6, ","

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1099
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_69

    .line 1103
    iget-object v6, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1111
    .local v5, temp_email:Ljava/lang/String;
    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6c

    invoke-static {v5}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6c

    if-eqz p4, :cond_6c

    iget-boolean v6, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    if-nez v6, :cond_6c

    .line 1115
    iget-object v6, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00d5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/calendar/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    .line 1077
    .end local v5           #temp_email:Ljava/lang/String;
    :cond_69
    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1135
    .restart local v5       #temp_email:Ljava/lang/String;
    :cond_6c
    invoke-direct {p0, v3}, Lcom/android/calendar/ComposeHeaderView;->CheckDuplicateOfRecipient(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_69

    .line 1145
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 1147
    invoke-static {v3}, Lcom/android/calendar/Utils;->getNameByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1151
    :cond_7c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 1153
    invoke-virtual {p0, p2, v3, v5, p3}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_69

    .line 1157
    :cond_86
    iget-object v6, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v6, p2}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v3, v6, p3}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_69

    .line 1167
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #recipient:Ljava/lang/String;
    .end local v4           #recipients:[Ljava/lang/String;
    .end local v5           #temp_email:Ljava/lang/String;
    :cond_90
    iget-object v6, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    return-void
.end method

.method private showErrorMessage()V
    .registers 5

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    return-void
.end method


# virtual methods
.method public ToBtnCreateAnim()Landroid/view/animation/AnimationSet;
    .registers 13

    .prologue
    const v1, 0x3f19999a

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 2526
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2528
    .local v11, myAnimation:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 2534
    .local v10, anyAI:Landroid/view/animation/AccelerateInterpolator;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2536
    .local v9, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2538
    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2542
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2546
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2548
    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2550
    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2552
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2554
    return-object v11
.end method

.method public ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;
    .registers 13

    .prologue
    const/high16 v6, 0x3f00

    const v2, 0x3e99999a

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    .line 2562
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2564
    .local v11, myAnimation:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 2570
    .local v10, anyAI:Landroid/view/animation/AccelerateInterpolator;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2572
    .local v9, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2574
    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2578
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2582
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2584
    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2586
    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2588
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2592
    return-object v11
.end method

.method public addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 16
    .parameter "name"
    .parameter "number"
    .parameter "email"
    .parameter "showToast"

    .prologue
    .line 1452
    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_5c

    .line 1460
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    if-nez v1, :cond_3a

    .line 1470
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00d6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    .line 1484
    :goto_33
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1488
    const/4 v1, 0x0

    .line 1768
    .end local p1
    :goto_39
    return v1

    .line 1478
    .restart local p1
    :cond_3a
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00d6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1494
    :cond_5c
    move-object v9, p2

    .line 1498
    .local v9, formattedNumber:Ljava/lang/String;
    if-eqz p3, :cond_60

    .line 1500
    move-object p2, p3

    .line 1506
    :cond_60
    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1510
    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_70
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_132

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    .line 1512
    .local v0, btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1524
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a7

    .line 1536
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    if-nez v1, :cond_a9

    .line 1538
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00d7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    .line 1548
    :goto_a2
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1554
    :cond_a7
    const/4 v1, 0x0

    goto :goto_39

    .line 1544
    :cond_a9
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_a2

    .line 1568
    .end local v0           #btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_b2
    invoke-static {p2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1570
    invoke-static {p2}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1574
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_c5

    .line 1576
    const/4 v1, 0x0

    goto/16 :goto_39

    .line 1580
    :cond_c5
    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_cf
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_132

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    .line 1582
    .restart local v0       #btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 1592
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    if-nez v1, :cond_101

    .line 1594
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00d7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    .line 1604
    :goto_f9
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1608
    const/4 v1, 0x0

    goto/16 :goto_39

    .line 1600
    :cond_101
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_f9

    .line 1628
    .end local v0           #btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_10a
    iget-boolean v1, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    if-nez v1, :cond_123

    .line 1632
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mWrongAttendee:Landroid/widget/Toast;

    if-nez v1, :cond_129

    .line 1634
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00d5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mWrongAttendee:Landroid/widget/Toast;

    .line 1644
    :goto_11e
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mWrongAttendee:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1648
    :cond_123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    .line 1650
    const/4 v1, 0x0

    goto/16 :goto_39

    .line 1640
    :cond_129
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mWrongAttendee:Landroid/widget/Toast;

    const v2, 0x7f0a00d5

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_11e

    .line 1662
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_132
    new-instance v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/ComposeHeaderView$ToButton;-><init>(Lcom/android/calendar/ComposeHeaderView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1664
    .restart local v0       #btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    new-instance v1, Lcom/android/calendar/ComposeHeaderView$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$6;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1687
    new-instance v1, Lcom/android/calendar/ComposeHeaderView$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$7;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1702
    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    sget v2, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    sget v1, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    .line 1710
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1bc

    .line 1712
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    .line 1714
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1716
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v1}, Lcom/android/calendar/ToBtnLayout;->requestLayout()V

    .line 1726
    :goto_177
    if-eqz p4, :cond_1ad

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_185

    invoke-static {p2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 1732
    :cond_185
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientAddedToast:Landroid/widget/Toast;

    if-nez v1, :cond_1d3

    .line 1734
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_19b

    move-object p1, p2

    .end local p1
    :cond_19b
    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientAddedToast:Landroid/widget/Toast;

    .line 1748
    :goto_1a8
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientAddedToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1756
    :cond_1ad
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    iget-object v1, v1, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1}, Lcom/android/calendar/EditEvent;->setScheduleButtonVisible()V

    .line 1768
    const/4 v1, 0x1

    goto/16 :goto_39

    .line 1720
    .restart local p1
    :cond_1bc
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/ConvNameEditText;->getConvName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_177

    .line 1742
    :cond_1d3
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientAddedToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_1e5

    move-object p1, p2

    .end local p1
    :cond_1e5
    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a8
.end method

.method public addRecipientQuickly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter "name"
    .parameter "number"
    .parameter "email"

    .prologue
    const v5, 0x7f0a00d6

    const/16 v4, 0x1e

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1790
    sget v1, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    if-le v1, v4, :cond_4b

    .line 1792
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    if-nez v1, :cond_31

    .line 1794
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    .line 1806
    :goto_2b
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1882
    :cond_30
    :goto_30
    return v7

    .line 1800
    :cond_31
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 1816
    :cond_4b
    if-eqz p3, :cond_4e

    .line 1818
    move-object p2, p3

    .line 1822
    :cond_4e
    invoke-static {p2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1824
    invoke-static {p2}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1828
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 1836
    :cond_5e
    new-instance v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/ComposeHeaderView$ToButton;-><init>(Lcom/android/calendar/ComposeHeaderView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1838
    .local v0, btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    new-instance v1, Lcom/android/calendar/ComposeHeaderView$8;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$8;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1855
    new-instance v1, Lcom/android/calendar/ComposeHeaderView$9;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$9;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1870
    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    sget v2, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    sget v1, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/calendar/ComposeHeaderView;->mToButtonId:I

    .line 1878
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    iget-object v1, v1, Lcom/android/calendar/EditEvent;->deleteContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1880
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mParentActivity:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1}, Lcom/android/calendar/EditEvent;->setScheduleButtonVisible()V

    move v7, v9

    .line 1882
    goto :goto_30
.end method

.method public addRecipientQuicklyDone()V
    .registers 5

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1892
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    .line 1894
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1896
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v0}, Lcom/android/calendar/ToBtnLayout;->requestLayout()V

    .line 1906
    :goto_15
    return-void

    .line 1900
    :cond_16
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->getConvName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method

.method public clearFocusAllBtn()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2756
    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2758
    .local v2, id:I
    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    .line 2760
    .local v0, btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2762
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setKeepTextFocus(Z)V

    .line 2764
    #calls: Lcom/android/calendar/ComposeHeaderView$ToButton;->resetDeleteButtonBoolean()V
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$1800(Lcom/android/calendar/ComposeHeaderView$ToButton;)V

    .line 2766
    invoke-virtual {v0, v5}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusable(Z)V

    .line 2768
    invoke-virtual {v0, v5}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusableInTouchMode(Z)V

    .line 2770
    invoke-virtual {v0, v5}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setKeepTextFocus(Z)V

    goto :goto_b

    .line 2780
    .end local v0           #btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    .end local v2           #id:I
    :cond_3e
    iget-object v3, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v3}, Lcom/android/calendar/ConvNameEditText;->requestFocus()Z

    .line 2782
    return-void
.end method

.method public dismissDropDown()V
    .registers 2

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2908
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->dismissDropDown()V

    .line 2910
    :cond_d
    return-void
.end method

.method public getNumberOfRecipients()I
    .registers 2

    .prologue
    .line 2310
    sget-object v0, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public getRecipients(Z)Ljava/lang/String;
    .registers 11
    .parameter "justSaveState"

    .prologue
    const/4 v8, 0x0

    .line 2212
    if-nez p1, :cond_1b

    .line 2222
    iget-object v7, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v7}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-lez v7, :cond_1b

    .line 2224
    iget-object v7, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3b

    move v7, v8

    :goto_18
    invoke-direct {p0, v8, v7}, Lcom/android/calendar/ComposeHeaderView;->addRecipientFromEditText(ZZ)V

    .line 2234
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2236
    .local v4, recipients:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2238
    .local v2, name:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2244
    .local v3, number:Ljava/lang/StringBuilder;
    sget-object v7, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v7}, Ljava/util/SortedMap;->size()I

    move-result v7

    if-nez v7, :cond_3d

    .line 2246
    const/4 v7, 0x0

    invoke-direct {p0, v4, v7}, Lcom/android/calendar/ComposeHeaderView;->checkRecipientInEditText(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2302
    :goto_36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 2224
    .end local v2           #name:Ljava/lang/StringBuilder;
    .end local v3           #number:Ljava/lang/StringBuilder;
    .end local v4           #recipients:Ljava/lang/StringBuilder;
    :cond_3b
    const/4 v7, 0x1

    goto :goto_18

    .line 2250
    .restart local v2       #name:Ljava/lang/StringBuilder;
    .restart local v3       #number:Ljava/lang/StringBuilder;
    .restart local v4       #recipients:Ljava/lang/StringBuilder;
    :cond_3d
    sget-object v7, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v7}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    .line 2252
    .local v0, btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5e

    .line 2254
    const-string v7, "/,/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    :cond_5e
    const/4 v5, 0x0

    .line 2260
    .local v5, tempName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2262
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    invoke-direct {p0, v2, v5}, Lcom/android/calendar/ComposeHeaderView;->checkRecipientInEditText(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_74

    .line 2272
    const-string v7, "/,/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    :cond_74
    const/4 v6, 0x0

    .line 2278
    .local v6, tempNumber:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 2280
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    invoke-direct {p0, v3, v6}, Lcom/android/calendar/ComposeHeaderView;->checkRecipientInEditText(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_47

    .line 2288
    .end local v0           #btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    .end local v5           #tempName:Ljava/lang/String;
    .end local v6           #tempNumber:Ljava/lang/String;
    :cond_80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2290
    const-string v7, "/~/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36
.end method

.method public getToRecipientLayout()Landroid/widget/AutoCompleteTextView;
    .registers 2

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged()V
    .registers 5

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1257
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/ConvNameEditText;->getConvName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->requestLayout()V

    .line 1263
    :cond_23
    return-void
.end method

.method public onSizeChanged()V
    .registers 2

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 2142
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v0}, Lcom/android/calendar/ToBtnLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 2144
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    .line 2150
    :cond_13
    return-void
.end method

.method public procToButtonMenu(I)V
    .registers 7
    .parameter "menuId"

    .prologue
    .line 1950
    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    iget v3, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    .line 1954
    .local v0, btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    packed-switch p1, :pswitch_data_74

    .line 2002
    :goto_11
    return-void

    .line 1958
    :pswitch_12
    iget v2, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    invoke-virtual {p0, v2}, Lcom/android/calendar/ComposeHeaderView;->removeToBtn(I)V

    goto :goto_11

    .line 1964
    :pswitch_18
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->keypadShow(Landroid/content/Context;Landroid/view/View;)V

    .line 1968
    iget-object v3, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_33
    invoke-virtual {v3, v2}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1972
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->moveCursorToEnd()V

    .line 1974
    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    iget v3, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    goto :goto_11

    .line 1968
    :cond_4a
    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    .line 1984
    :pswitch_4f
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->addToContact(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1986
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    goto :goto_11

    .line 1994
    :pswitch_5d
    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1996
    .local v1, info:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->sendEmail(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    .line 1954
    :pswitch_data_74
    .packed-switch 0x7f0f00d5
        :pswitch_12
        :pswitch_18
        :pswitch_4f
        :pswitch_5d
    .end packed-switch
.end method

.method public refreshRecipientButton()V
    .registers 1

    .prologue
    .line 1942
    invoke-direct {p0}, Lcom/android/calendar/ComposeHeaderView;->rebuildToBtn()V

    .line 1944
    return-void
.end method

.method public releaseResources()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2848
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;

    .line 2850
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_e

    .line 2852
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2854
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 2858
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_19

    .line 2860
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2862
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToLayout:Landroid/widget/LinearLayout;

    .line 2868
    :cond_19
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    if-eqz v0, :cond_27

    .line 2870
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v0}, Lcom/android/calendar/ToBtnLayout;->removeAllViews()V

    .line 2872
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToBtnLayout:Lcom/android/calendar/ToBtnLayout;

    invoke-virtual {v0}, Lcom/android/calendar/ToBtnLayout;->releaseResources()V

    .line 2878
    :cond_27
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    if-eqz v0, :cond_32

    .line 2880
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->releaseResource()V

    .line 2882
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    .line 2886
    :cond_32
    sput-object v1, Lcom/android/calendar/ComposeHeaderView;->sInstance:Lcom/android/calendar/ComposeHeaderView;

    .line 2888
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mDuplicatedRecipientsToast:Landroid/widget/Toast;

    .line 2890
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientLimitToast:Landroid/widget/Toast;

    .line 2892
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mRecipientAddedToast:Landroid/widget/Toast;

    .line 2894
    iput-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mWrongAttendee:Landroid/widget/Toast;

    .line 2898
    return-void
.end method

.method public removeToBtn(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 2650
    invoke-virtual {p0}, Lcom/android/calendar/ComposeHeaderView;->ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 2652
    .local v0, deleteAni:Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/calendar/ComposeHeaderView$11;

    invoke-direct {v1, p0}, Lcom/android/calendar/ComposeHeaderView$11;-><init>(Lcom/android/calendar/ComposeHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2674
    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    iget v2, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 2676
    sget-object v1, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    iget v2, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-virtual {v1, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2680
    :cond_2f
    return-void
.end method

.method public setFocusOnLastRecipientBtn()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2692
    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-nez v2, :cond_f

    .line 2694
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->requestFocus()Z

    .line 2746
    :goto_e
    return-void

    .line 2702
    :cond_f
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2704
    iput-boolean v4, p0, Lcom/android/calendar/ComposeHeaderView;->mKeepToBoxVisible:Z

    .line 2706
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v2}, Lcom/android/calendar/ConvNameEditText;->clearComposingText()V

    .line 2718
    :cond_26
    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2720
    .local v1, lastKey:I
    sget-object v2, Lcom/android/calendar/ComposeHeaderView;->mRecipients:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ComposeHeaderView$ToButton;

    .line 2722
    .local v0, btn:Lcom/android/calendar/ComposeHeaderView$ToButton;
    invoke-virtual {v0, v4}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusable(Z)V

    .line 2724
    invoke-virtual {v0, v4}, Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusableInTouchMode(Z)V

    .line 2726
    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->requestFocus()Z

    .line 2728
    iput v1, p0, Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I

    goto :goto_e
.end method

.method public setFocusToRecipient()V
    .registers 2

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v0}, Lcom/android/calendar/ConvNameEditText;->requestFocus()Z

    .line 2086
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2018
    return-void
.end method

.method public validateEmailAddress()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2920
    iput-boolean v2, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    .line 2922
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2924
    .local v0, input:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView;->mToEdit:Lcom/android/calendar/ConvNameEditText;

    invoke-virtual {v1}, Lcom/android/calendar/ConvNameEditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 2926
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/calendar/ComposeHeaderView;->removeSpaceAndAddRecipient(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2936
    :goto_20
    iput-boolean v3, p0, Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z

    .line 2940
    return-void

    .line 2930
    :cond_23
    iput-boolean v2, p0, Lcom/android/calendar/ComposeHeaderView;->invalidEmail:Z

    goto :goto_20
.end method

.class public Lcom/google/android/apps/plus/views/AudienceView;
.super Landroid/widget/FrameLayout;
.source "AudienceView.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/AudienceView$3;,
        Lcom/google/android/apps/plus/views/AudienceView$SavedState;,
        Lcom/google/android/apps/plus/views/AudienceView$CirclesQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAudienceChangedCallback:Ljava/lang/Runnable;

.field private final mChipContainer:Landroid/view/ViewGroup;

.field private final mChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditText:Landroid/widget/AutoCompleteTextView;

.field private mEdited:Z

.field private mEmptyAudienceHint:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/views/AudienceView;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    .line 109
    const v0, 0x7f03000d

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->inflate(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->addView(Landroid/view/View;)V

    .line 111
    const v0, 0x7f0d0053

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/apps/plus/views/AudienceView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/AudienceView$1;-><init>(Lcom/google/android/apps/plus/views/AudienceView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/apps/plus/views/AudienceView$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/AudienceView$2;-><init>(Lcom/google/android/apps/plus/views/AudienceView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 166
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/AudienceView;->setEmptyAudienceHint(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attributes"

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    .line 109
    const v0, 0x7f03000d

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->inflate(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->addView(Landroid/view/View;)V

    .line 111
    const v0, 0x7f0d0053

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/apps/plus/views/AudienceView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/AudienceView$1;-><init>(Lcom/google/android/apps/plus/views/AudienceView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/apps/plus/views/AudienceView$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/AudienceView$2;-><init>(Lcom/google/android/apps/plus/views/AudienceView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 166
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/AudienceView;->setEmptyAudienceHint(I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attributes"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    .line 109
    const v0, 0x7f03000d

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->inflate(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->addView(Landroid/view/View;)V

    .line 111
    const v0, 0x7f0d0053

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/apps/plus/views/AudienceView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/AudienceView$1;-><init>(Lcom/google/android/apps/plus/views/AudienceView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/apps/plus/views/AudienceView$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/AudienceView$2;-><init>(Lcom/google/android/apps/plus/views/AudienceView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 166
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/AudienceView;->setEmptyAudienceHint(I)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/AudienceView;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/views/AudienceView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->removeLastChip()V

    return-void
.end method

.method private addChip(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 483
    const v1, 0x7f03005a

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/views/AudienceView;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 484
    .local v0, chip:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 486
    return-void
.end method

.method private getChipCount()I
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static getCircleIcon(Lcom/google/wireless/tacotruck/proto/Data$Circle;)I
    .registers 5
    .parameter "circle"

    .prologue
    const v1, 0x7f020029

    .line 429
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v0

    .line 430
    .local v0, type:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    if-nez v0, :cond_a

    .line 442
    :goto_9
    return v1

    .line 434
    :cond_a
    sget-object v2, Lcom/google/android/apps/plus/views/AudienceView$3;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1a

    goto :goto_9

    .line 436
    :pswitch_16
    const v1, 0x7f02002c

    goto :goto_9

    .line 434
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch
.end method

.method private inflate(I)Landroid/view/View;
    .registers 4
    .parameter "layoutResourceId"

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private removeLastChip()V
    .registers 3

    .prologue
    .line 492
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 499
    :goto_8
    return-void

    .line 495
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 496
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 497
    .local v0, lastIndex:I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 498
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    goto :goto_8
.end method

.method private setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 11
    .parameter "audience"

    .prologue
    .line 305
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 306
    .local v1, current:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Audience;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v2

    .line 307
    .local v2, currentCircles:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v3

    .line 309
    .local v3, currentUsers:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 312
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 313
    .local v5, item:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {p1, v5}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 314
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 319
    .end local v5           #item:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_38
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_40
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 320
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-static {v2, v0}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Circle;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 323
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 328
    .end local v0           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    :cond_64
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6c
    :goto_6c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 329
    .local v6, user:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-static {v3, v6}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Person;)Z

    move-result v7

    if-nez v7, :cond_6c

    .line 332
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 336
    .end local v6           #user:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_90
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    .line 337
    return-void
.end method

.method private update()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 396
    const/4 v2, 0x0

    .line 398
    .local v2, i:I
    iget-object v9, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 399
    .local v6, item:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    sget-boolean v9, Lcom/google/android/apps/plus/views/AudienceView;->$assertionsDisabled:Z

    if-nez v9, :cond_2a

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v9

    if-eq v9, v11, :cond_2a

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v9

    if-eq v9, v11, :cond_2a

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 401
    :cond_2a
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 402
    .local v1, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasName()Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, text:Ljava/lang/String;
    :goto_48
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-static {v1}, Lcom/google/android/apps/plus/views/AudienceView;->getCircleIcon(Lcom/google/wireless/tacotruck/proto/Data$Circle;)I

    move-result v9

    invoke-direct {p0, v2, v9, v8, v1}, Lcom/google/android/apps/plus/views/AudienceView;->updateChip(IILjava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 405
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_32

    .line 402
    .end local v8           #text:Ljava/lang/String;
    :cond_53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f070096

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_48

    .line 407
    .end local v1           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    :cond_5f
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 408
    .local v7, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasName()Z

    move-result v9

    if-eqz v9, :cond_85

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v8

    .line 411
    .restart local v8       #text:Ljava/lang/String;
    :goto_7d
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v9, 0x0

    invoke-direct {p0, v2, v9, v8, v7}, Lcom/google/android/apps/plus/views/AudienceView;->updateChip(IILjava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 412
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_67

    .line 408
    .end local v8           #text:Ljava/lang/String;
    :cond_85
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v9

    if-eqz v9, :cond_90

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v8

    goto :goto_7d

    :cond_90
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_7d

    .line 415
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #item:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v7           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_9c
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getChipCount()I

    move-result v0

    .line 416
    .local v0, chipCount:I
    :goto_a0
    if-ge v2, v0, :cond_b0

    .line 417
    iget-object v9, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    .line 421
    :cond_b0
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->updateEditTextHint()V

    .line 423
    iget-object v9, p0, Lcom/google/android/apps/plus/views/AudienceView;->mAudienceChangedCallback:Ljava/lang/Runnable;

    if-eqz v9, :cond_bc

    .line 424
    iget-object v9, p0, Lcom/google/android/apps/plus/views/AudienceView;->mAudienceChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 426
    :cond_bc
    return-void
.end method

.method private updateChip(IILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .parameter "index"
    .parameter "icon"
    .parameter "text"
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getChipCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_c

    .line 463
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/AudienceView;->addChip(I)V

    .line 466
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 467
    .local v0, chip:Landroid/widget/TextView;
    invoke-virtual {v0, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 468
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_23

    .line 471
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    :cond_23
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 475
    return-void
.end method

.method private updateCircleNames(Landroid/database/Cursor;)V
    .registers 11
    .parameter "data"

    .prologue
    .line 564
    sget-boolean v7, Lcom/google/android/apps/plus/views/AudienceView;->$assertionsDisabled:Z

    if-nez v7, :cond_16

    sget-object v7, Lcom/google/android/apps/plus/views/AudienceView$CirclesQuery;->PROJECTION:[Ljava/lang/String;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 565
    :cond_16
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 566
    .local v1, chipCount:I
    const/4 v2, 0x0

    .local v2, chipIndex:I
    :goto_1d
    if-ge v2, v1, :cond_71

    .line 567
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 568
    .local v0, chip:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getCircleCount()I

    move-result v4

    .line 569
    .local v4, circleCount:I
    const/4 v5, 0x0

    .local v5, circleIndex:I
    :goto_30
    if-ge v5, v4, :cond_65

    .line 570
    invoke-virtual {v0, v5}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v3

    .line 571
    .local v3, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    const/4 v6, 0x0

    .local v6, position:I
    :goto_3b
    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 572
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 573
    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 577
    :cond_58
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->setCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 569
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 571
    :cond_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 579
    .end local v3           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .end local v6           #position:I
    :cond_65
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 581
    .end local v0           #chip:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .end local v4           #circleCount:I
    .end local v5           #circleIndex:I
    :cond_71
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    .line 582
    return-void
.end method

.method private updateEditTextHint()V
    .registers 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEmptyAudienceHint:I

    if-eqz v0, :cond_14

    .line 517
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    iget v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEmptyAudienceHint:I

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 521
    :goto_13
    return-void

    .line 519
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method


# virtual methods
.method public addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 5
    .parameter "newCircle"

    .prologue
    .line 345
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 346
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, circles:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Circle;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 353
    :goto_11
    return-void

    .line 351
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    goto :goto_11
.end method

.method public addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 5
    .parameter "newPerson"

    .prologue
    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 362
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v0

    .line 363
    .local v0, users:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Person;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 369
    :goto_11
    return-void

    .line 367
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    goto :goto_11
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 194
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 187
    return-void
.end method

.method public clearText()V
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    return-void
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/PeopleUtils;->merge(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method public initLoaders(Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "loaders"
    .parameter "account"

    .prologue
    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    const v1, 0x7f0d0020

    invoke-virtual {p1, v1, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 180
    return-void
.end method

.method public isEdited()Z
    .registers 2

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 239
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    .line 240
    sget-boolean v1, Lcom/google/android/apps/plus/views/AudienceView;->$assertionsDisabled:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    if-eq p1, v1, :cond_17

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 241
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 242
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->show(Landroid/view/View;)V

    .line 248
    :goto_21
    return-void

    .line 244
    :cond_22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 245
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 246
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    goto :goto_21
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    packed-switch p1, :pswitch_data_1e

    .line 535
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 530
    :pswitch_9
    const-string v1, "account"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 531
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    new-instance v1, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/apps/plus/views/AudienceView$CirclesQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V

    return-object v1

    .line 528
    :pswitch_data_1e
    .packed-switch 0x7f0d0020
        :pswitch_9
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 553
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 547
    :pswitch_d
    if-eqz p2, :cond_12

    .line 548
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/AudienceView;->updateCircleNames(Landroid/database/Cursor;)V

    .line 556
    :cond_12
    return-void

    .line 545
    nop

    :pswitch_data_14
    .packed-switch 0x7f0d0020
        :pswitch_d
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/views/AudienceView;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 223
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;

    .line 224
    .local v0, ss:Lcom/google/android/apps/plus/views/AudienceView$SavedState;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 225
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v2, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v2, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 227
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 228
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->audience:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->edited:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 230
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    .line 231
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 210
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/AudienceView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 211
    .local v0, state:Lcom/google/android/apps/plus/views/AudienceView$SavedState;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->text:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->audience:Ljava/util/ArrayList;

    .line 213
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->edited:Z

    .line 215
    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 202
    return-void
.end method

.method public replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 3
    .parameter "audience"

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 296
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/AudienceView;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 297
    return-void
.end method

.method public setAudienceChangedCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mAudienceChangedCallback:Ljava/lang/Runnable;

    .line 257
    return-void
.end method

.method public setAutoCompleteAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    return-void
.end method

.method public setDefaultAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 2
    .parameter "audience"

    .prologue
    .line 284
    if-eqz p1, :cond_5

    .line 285
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/AudienceView;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 287
    :cond_5
    return-void
.end method

.method public setEmptyAudienceHint(I)V
    .registers 2
    .parameter "hint"

    .prologue
    .line 265
    iput p1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEmptyAudienceHint:I

    .line 266
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudienceView;->updateEditTextHint()V

    .line 267
    return-void
.end method

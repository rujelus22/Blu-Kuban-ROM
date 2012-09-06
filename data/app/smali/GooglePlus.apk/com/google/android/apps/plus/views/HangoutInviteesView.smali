.class public Lcom/google/android/apps/plus/views/HangoutInviteesView;
.super Landroid/widget/FrameLayout;
.source "HangoutInviteesView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;
    }
.end annotation


# static fields
.field private static final INVITEE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mCircleLogoView:Landroid/view/View;

.field private mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private mCirclesView:Landroid/widget/TextView;

.field private mInviteeId:Ljava/lang/String;

.field private mInvitees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end field

.field private mMultipleInviteesContainer:Landroid/widget/LinearLayout;

.field private mMultipleInviteesView:Landroid/widget/HorizontalScrollView;

.field private mNameView:Landroid/widget/TextView;

.field private mPackedCircleIds:Ljava/lang/String;

.field private final mPersonLoaderCallbacks:Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;

.field private mSingleInviteeView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "packed_circle_ids"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->INVITEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/views/HangoutInviteesView;Lcom/google/android/apps/plus/views/HangoutInviteesView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mPersonLoaderCallbacks:Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;

    .line 94
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->inflate(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->addView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->createMultipleInviteesView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->addView(Landroid/view/View;)V

    .line 97
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 98
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mNameView:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCirclesView:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0900ed

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mSingleInviteeView:Landroid/view/View;

    .line 101
    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCircleLogoView:Landroid/view/View;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/views/HangoutInviteesView;Lcom/google/android/apps/plus/views/HangoutInviteesView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mPersonLoaderCallbacks:Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;

    .line 94
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->inflate(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->addView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->createMultipleInviteesView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->addView(Landroid/view/View;)V

    .line 97
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 98
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mNameView:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCirclesView:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0900ed

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mSingleInviteeView:Landroid/view/View;

    .line 101
    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCircleLogoView:Landroid/view/View;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/views/HangoutInviteesView;Lcom/google/android/apps/plus/views/HangoutInviteesView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mPersonLoaderCallbacks:Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;

    .line 94
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->inflate(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->addView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->createMultipleInviteesView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->addView(Landroid/view/View;)V

    .line 97
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 98
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mNameView:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCirclesView:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0900ed

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mSingleInviteeView:Landroid/view/View;

    .line 101
    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCircleLogoView:Landroid/view/View;

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/views/HangoutInviteesView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->updateCircleNames()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/HangoutInviteesView;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/views/HangoutInviteesView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInviteeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->INVITEE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/plus/views/HangoutInviteesView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mPackedCircleIds:Ljava/lang/String;

    return-object p1
.end method

.method private createAvatarView(Ljava/lang/String;)Lcom/google/android/apps/plus/views/AvatarView;
    .registers 7
    .parameter "gaiaId"

    .prologue
    .line 195
    new-instance v0, Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/views/AvatarView;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d014d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 198
    .local v2, size:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0148

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 201
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    return-object v0
.end method

.method private createMultipleInviteesView()Landroid/widget/HorizontalScrollView;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/HorizontalScrollView;

    invoke-direct {v3, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesView:Landroid/widget/HorizontalScrollView;

    .line 107
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesView:Landroid/widget/HorizontalScrollView;

    const v4, 0x7f0a00c3

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setBackgroundResource(I)V

    .line 111
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesView:Landroid/widget/HorizontalScrollView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 112
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesContainer:Landroid/widget/LinearLayout;

    .line 113
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v0, containerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesView:Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v3, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesView:Landroid/widget/HorizontalScrollView;

    return-object v3
.end method

.method private expandAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 5
    .parameter "audience"

    .prologue
    .line 129
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 132
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 133
    .local v1, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasName()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasGaiaId()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 134
    :cond_2b
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 139
    .end local v1           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_31
    return-void
.end method

.method private getGaiaId(Lcom/google/wireless/tacotruck/proto/Data$Person;)Ljava/lang/String;
    .registers 5
    .parameter "person"

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasGaiaId()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_1d
    return-object v0

    .line 145
    :cond_1e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 148
    :cond_3c
    const-string v0, ""

    goto :goto_1d
.end method

.method private getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method private updateCircleNames()V
    .registers 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mPackedCircleIds:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCirclesView:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCircleLogoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCirclesView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mPackedCircleIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->getCircleNamesForPackedIds(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_27
    return-void
.end method


# virtual methods
.method public getAvatarCount()I
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected inflate(I)Landroid/view/View;
    .registers 4
    .parameter "layoutResourceId"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setInvitees(Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 13
    .parameter "invitees"
    .parameter "account"

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    .local v0, context:Landroid/content/Context;
    iput-object p2, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 159
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->expandAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 161
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_7b

    .line 163
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getGaiaId(Lcom/google/wireless/tacotruck/proto/Data$Person;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInviteeId:Ljava/lang/String;

    .line 165
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mSingleInviteeView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v9}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInviteeId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    .line 172
    .local v4, loaderManager:Landroid/support/v4/app/LoaderManager;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mPersonLoaderCallbacks:Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;

    invoke-virtual {v4, v8, v6, v7}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 174
    new-instance v6, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v6, v0, v4, v7}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 175
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 176
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    new-instance v7, Lcom/google/android/apps/plus/views/HangoutInviteesView$1;

    invoke-direct {v7, p0}, Lcom/google/android/apps/plus/views/HangoutInviteesView$1;-><init>(Lcom/google/android/apps/plus/views/HangoutInviteesView;)V

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 192
    .end local v4           #loaderManager:Landroid/support/v4/app/LoaderManager;
    .end local v5           #name:Ljava/lang/String;
    :cond_7a
    return-void

    .line 182
    :cond_7b
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_7a

    .line 184
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mSingleInviteeView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 186
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 187
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInvitees:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_98
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 188
    .local v3, invitee:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getGaiaId(Lcom/google/wireless/tacotruck/proto/Data$Person;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, gaiaId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->createAvatarView(Ljava/lang/String;)Lcom/google/android/apps/plus/views/AvatarView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_98
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mNameView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public setVisibility(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    const/16 v1, 0x8

    .line 215
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 216
    if-ne p1, v1, :cond_11

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mSingleInviteeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView;->mMultipleInviteesView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 220
    :cond_11
    return-void
.end method

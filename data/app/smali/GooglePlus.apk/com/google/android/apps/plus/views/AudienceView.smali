.class public Lcom/google/android/apps/plus/views/AudienceView;
.super Landroid/widget/FrameLayout;
.source "AudienceView.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/AudienceView$1;,
        Lcom/google/android/apps/plus/views/AudienceView$SavedState;,
        Lcom/google/android/apps/plus/views/AudienceView$CirclesQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAudienceChangedCallback:Ljava/lang/Runnable;

.field protected final mCanRemoveChips:Z

.field protected mChipContainer:Landroid/view/ViewGroup;

.field protected final mChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            ">;"
        }
    .end annotation
.end field

.field protected mEdited:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
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
    .registers 3
    .parameter "context"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/views/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "canRemoveChips"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->init()V

    .line 182
    iput-boolean p4, p0, Lcom/google/android/apps/plus/views/AudienceView;->mCanRemoveChips:Z

    .line 183
    return-void
.end method

.method private static getCircleIcon(Lcom/google/wireless/tacotruck/proto/Data$Circle;Z)I
    .registers 6
    .parameter "circle"
    .parameter "isRestricted"

    .prologue
    const v1, 0x7f020093

    .line 65
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v0

    .line 66
    .local v0, type:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    if-nez v0, :cond_a

    .line 90
    :goto_9
    return v1

    .line 70
    :cond_a
    sget-object v2, Lcom/google/android/apps/plus/views/AudienceView$1;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2e

    goto :goto_9

    .line 72
    :pswitch_16
    if-eqz p1, :cond_1c

    .line 73
    const v1, 0x7f02009c

    goto :goto_9

    .line 75
    :cond_1c
    const v1, 0x7f02009a

    goto :goto_9

    .line 79
    :pswitch_20
    if-eqz p1, :cond_26

    .line 80
    const v1, 0x7f020099

    goto :goto_9

    .line 82
    :cond_26
    const v1, 0x7f020097

    goto :goto_9

    .line 86
    :pswitch_2a
    const v1, 0x7f020095

    goto :goto_9

    .line 70
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_20
        :pswitch_2a
    .end packed-switch
.end method

.method private scrubCircles(Landroid/database/Cursor;)V
    .registers 13
    .parameter "data"

    .prologue
    .line 564
    sget-boolean v9, Lcom/google/android/apps/plus/views/AudienceView;->$assertionsDisabled:Z

    if-nez v9, :cond_16

    sget-object v9, Lcom/google/android/apps/plus/views/AudienceView$CirclesQuery;->PROJECTION:[Ljava/lang/String;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 565
    :cond_16
    iget-object v9, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 566
    .local v2, chipCount:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v7, newChips:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Audience;>;"
    const/4 v3, 0x0

    .local v3, chipIndex:I
    :goto_22
    if-ge v3, v2, :cond_80

    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, addCircle:Z
    iget-object v9, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v1

    .line 570
    .local v1, chip:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getCircleCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .local v5, circleIndex:I
    :goto_37
    if-ltz v5, :cond_6d

    .line 571
    invoke-virtual {v1, v5}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v4

    .line 572
    .local v4, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    const/4 v8, 0x0

    .local v8, position:I
    :goto_42
    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 573
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 574
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 575
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->setCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 576
    const/4 v0, 0x1

    .line 570
    :cond_67
    add-int/lit8 v5, v5, -0x1

    goto :goto_37

    .line 572
    :cond_6a
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 581
    .end local v4           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .end local v8           #position:I
    :cond_6d
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getUserCount()I

    move-result v9

    if-lez v9, :cond_74

    .line 582
    const/4 v0, 0x1

    .line 584
    :cond_74
    if-eqz v0, :cond_7d

    .line 585
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 588
    .end local v0           #addCircle:Z
    .end local v1           #chip:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .end local v5           #circleIndex:I
    :cond_80
    iget-object v9, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 589
    const/4 v6, 0x0

    .local v6, i:I
    :goto_86
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_98

    .line 590
    iget-object v9, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    add-int/lit8 v6, v6, 0x1

    goto :goto_86

    .line 592
    :cond_98
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    .line 593
    return-void
.end method

.method private setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 11
    .parameter "audience"

    .prologue
    .line 278
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    .local v1, current:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Audience;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v2

    .line 280
    .local v2, currentCircles:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v3

    .line 282
    .local v3, currentUsers:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 285
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

    .line 286
    .local v5, item:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {p1, v5}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 287
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 292
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

    .line 293
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-static {v2, v0}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Circle;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 296
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 301
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

    .line 302
    .local v6, user:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-static {v3, v6}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Person;)Z

    move-result v7

    if-nez v7, :cond_6c

    .line 305
    iget-object v7, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 309
    .end local v6           #user:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_90
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    .line 310
    return-void
.end method


# virtual methods
.method protected addChip(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 512
    const v1, 0x7f030082

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/AudienceView;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 513
    .local v0, chip:Landroid/view/View;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mCanRemoveChips:Z

    if-eqz v1, :cond_e

    .line 514
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 517
    return-void
.end method

.method public addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 6
    .parameter "newCircle"

    .prologue
    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 319
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v0

    .line 320
    .local v0, circles:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Circle;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 328
    :goto_11
    return-void

    .line 324
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/AudienceView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_AUDIENCE_VIEW_CIRCLE_ADDED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 326
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    goto :goto_11
.end method

.method public addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 6
    .parameter "newPerson"

    .prologue
    .line 336
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 337
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v0

    .line 338
    .local v0, users:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/util/PeopleUtils;->in(Ljava/lang/Iterable;Lcom/google/wireless/tacotruck/proto/Data$Person;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 346
    :goto_11
    return-void

    .line 342
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/AudienceView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_AUDIENCE_VIEW_PERSON_ADDED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 344
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    goto :goto_11
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/PeopleUtils;->merge(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method protected getChipBackground(Lcom/google/wireless/tacotruck/proto/Data$Circle;)I
    .registers 5
    .parameter "circle"

    .prologue
    const v0, 0x7f02004b

    .line 493
    if-eqz p1, :cond_14

    .line 494
    sget-object v1, Lcom/google/android/apps/plus/views/AudienceView$1;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1a

    .line 503
    :cond_14
    :goto_14
    return v0

    .line 498
    :pswitch_15
    const v0, 0x7f020053

    goto :goto_14

    .line 494
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method protected getChipCount()I
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected getCloseIcon()I
    .registers 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mCanRemoveChips:Z

    if-eqz v0, :cond_8

    .line 421
    const v0, 0x7f02009d

    .line 423
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected inflate(I)Landroid/view/View;
    .registers 4
    .parameter "layoutResourceId"

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 2

    .prologue
    .line 193
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->inflate(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->addView(Landroid/view/View;)V

    .line 195
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/AudienceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    .line 196
    return-void
.end method

.method public initLoaders(Landroid/support/v4/app/LoaderManager;)V
    .registers 4
    .parameter "loaders"

    .prologue
    .line 607
    const v0, 0x7f090026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 608
    return-void
.end method

.method public isEdited()Z
    .registers 2

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 615
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mCanRemoveChips:Z

    if-nez v1, :cond_5

    .line 625
    :cond_4
    :goto_4
    return-void

    .line 618
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/AudienceView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_AUDIENCE_VIEW_CLICKED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 619
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 620
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 621
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 622
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 623
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    goto :goto_4
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
    .line 533
    packed-switch p1, :pswitch_data_18

    .line 539
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 535
    :pswitch_9
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/AudienceView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/apps/plus/views/AudienceView$CirclesQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V

    return-object v0

    .line 533
    :pswitch_data_18
    .packed-switch 0x7f090026
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
    .line 550
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 558
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 552
    :pswitch_d
    if-eqz p2, :cond_12

    .line 553
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/AudienceView;->scrubCircles(Landroid/database/Cursor;)V

    .line 561
    :cond_12
    return-void

    .line 550
    nop

    :pswitch_data_14
    .packed-switch 0x7f090026
        :pswitch_d
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
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
    .line 601
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 226
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;

    .line 227
    .local v0, ss:Lcom/google/android/apps/plus/views/AudienceView$SavedState;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 229
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 230
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->audience:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->edited:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 234
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    .line 235
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 212
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 213
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/AudienceView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 215
    .local v0, state:Lcom/google/android/apps/plus/views/AudienceView$SavedState;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->audience:Ljava/util/ArrayList;

    .line 216
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/AudienceView$SavedState;->edited:Z

    .line 218
    return-object v0
.end method

.method protected removeLastChip()V
    .registers 3

    .prologue
    .line 467
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 474
    :goto_8
    return-void

    .line 470
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 471
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 472
    .local v0, lastIndex:I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 473
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    goto :goto_8
.end method

.method public removePerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 8
    .parameter "person"

    .prologue
    const/4 v5, 0x1

    .line 354
    iput-boolean v5, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, chipToRemove:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 357
    .local v0, chip:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v3

    if-ne v3, v5, :cond_a

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-static {v3, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->isSamePerson(Lcom/google/wireless/tacotruck/proto/Data$Person;Lcom/google/wireless/tacotruck/proto/Data$Person;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 359
    move-object v1, v0

    .line 364
    .end local v0           #chip:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_34
    if-eqz v1, :cond_3e

    .line 365
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    .line 368
    :cond_3e
    return-void
.end method

.method public replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 3
    .parameter "audience"

    .prologue
    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/AudienceView;->mEdited:Z

    .line 269
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/AudienceView;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 270
    return-void
.end method

.method public setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 205
    return-void
.end method

.method public setAudienceChangedCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mAudienceChangedCallback:Ljava/lang/Runnable;

    .line 244
    return-void
.end method

.method public setDefaultAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 2
    .parameter "audience"

    .prologue
    .line 257
    if-eqz p1, :cond_5

    .line 258
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/AudienceView;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 260
    :cond_5
    return-void
.end method

.method protected update()V
    .registers 23

    .prologue
    .line 374
    const/4 v2, 0x0

    .line 376
    .local v2, i:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/AudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 377
    .local v19, item:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    sget-boolean v1, Lcom/google/android/apps/plus/views/AudienceView;->$assertionsDisabled:Z

    if-nez v1, :cond_2d

    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2d

    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 379
    :cond_2d
    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 380
    .local v6, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/AudienceView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/AccountsUtil;->isRestrictedCircleForAccount(Lcom/google/android/apps/plus/content/EsAccount;I)Z

    move-result v7

    .line 382
    .local v7, isRestricted:Z
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasName()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, text:Ljava/lang/String;
    :goto_5b
    add-int/lit8 v16, v2, 0x1

    .end local v2           #i:I
    .local v16, i:I
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/views/AudienceView;->getCircleIcon(Lcom/google/wireless/tacotruck/proto/Data$Circle;Z)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/AudienceView;->getCloseIcon()I

    move-result v4

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/plus/views/AudienceView;->updateChip(IIILjava/lang/String;Ljava/lang/Object;Z)V

    move/from16 v2, v16

    .line 386
    .end local v16           #i:I
    .restart local v2       #i:I
    goto :goto_35

    .line 382
    .end local v5           #text:Ljava/lang/String;
    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0800c4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5b

    .line 388
    .end local v6           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .end local v7           #isRestricted:Z
    :cond_79
    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_81
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 389
    .local v13, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasName()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v5

    .line 392
    .restart local v5       #text:Ljava/lang/String;
    :goto_97
    add-int/lit8 v16, v2, 0x1

    .end local v2           #i:I
    .restart local v16       #i:I
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/AudienceView;->getCloseIcon()I

    move-result v11

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move v9, v2

    move-object v12, v5

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/apps/plus/views/AudienceView;->updateChip(IIILjava/lang/String;Ljava/lang/Object;Z)V

    move/from16 v2, v16

    .line 393
    .end local v16           #i:I
    .restart local v2       #i:I
    goto :goto_81

    .line 389
    .end local v5           #text:Ljava/lang/String;
    :cond_a9
    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v5

    goto :goto_97

    :cond_b4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/AudienceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_97

    .line 396
    .end local v13           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #item:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_c0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/AudienceView;->getChipCount()I

    move-result v15

    .line 397
    .local v15, chipCount:I
    :goto_c4
    if-ge v2, v15, :cond_d6

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 403
    :cond_d6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v21, v1, -0x1

    .local v21, x:I
    :goto_e0
    if-ltz v21, :cond_100

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 405
    .local v20, view:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_fd

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 403
    :cond_fd
    add-int/lit8 v21, v21, -0x1

    goto :goto_e0

    .line 410
    .end local v20           #view:Landroid/view/View;
    :cond_100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/AudienceView;->mAudienceChangedCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_10d

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/AudienceView;->mAudienceChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 413
    :cond_10d
    return-void
.end method

.method protected updateChip(IIILjava/lang/String;Ljava/lang/Object;Z)V
    .registers 10
    .parameter "index"
    .parameter "iconLeft"
    .parameter "iconRight"
    .parameter "text"
    .parameter "tag"
    .parameter "isRestricted"

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudienceView;->getChipCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_c

    .line 446
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/AudienceView;->addChip(I)V

    .line 449
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/plus/views/AudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 450
    .local v0, chip:Landroid/widget/TextView;
    invoke-virtual {v0, p2, v2, p3, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 451
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    if-eqz p6, :cond_2f

    const v1, 0x7f020056

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 456
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 457
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    :cond_2b
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 461
    return-void

    .line 452
    :cond_2f
    instance-of v1, p5, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    if-eqz v1, :cond_3b

    move-object v1, p5

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    :goto_36
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/AudienceView;->getChipBackground(Lcom/google/wireless/tacotruck/proto/Data$Circle;)I

    move-result v1

    goto :goto_1f

    :cond_3b
    const/4 v1, 0x0

    goto :goto_36
.end method

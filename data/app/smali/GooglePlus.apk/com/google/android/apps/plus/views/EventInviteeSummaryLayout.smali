.class public Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;
.super Lcom/google/android/apps/plus/views/ExactLayout;
.source "EventInviteeSummaryLayout.java"


# static fields
.field private static sFontColor:I

.field private static sFontSize:F

.field private static sInitialized:Z

.field private static sRsvpInvitedFormat:Ljava/lang/String;

.field private static sRsvpInvitedPastFormat:Ljava/lang/String;

.field private static sRsvpMaybeFormat:Ljava/lang/String;

.field private static sRsvpYesFormat:Ljava/lang/String;

.field private static sRsvpYesPastFormat:Ljava/lang/String;


# instance fields
.field private mLineupLayout:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

.field private mSize:I

.field private mStatus:Landroid/widget/TextView;

.field private mVisibleSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    sget-boolean v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sInitialized:Z

    if-nez v0, :cond_4b

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 58
    .local v7, resources:Landroid/content/res/Resources;
    const v0, 0x7f080146

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sRsvpYesFormat:Ljava/lang/String;

    .line 59
    const v0, 0x7f080147

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sRsvpYesPastFormat:Ljava/lang/String;

    .line 60
    const v0, 0x7f080145

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sRsvpMaybeFormat:Ljava/lang/String;

    .line 61
    const v0, 0x7f080148

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sRsvpInvitedFormat:Ljava/lang/String;

    .line 62
    const v0, 0x7f080149

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sRsvpInvitedPastFormat:Ljava/lang/String;

    .line 64
    const v0, 0x7f0d011c

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sFontSize:F

    .line 65
    const v0, 0x7f0a009e

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sFontColor:I

    .line 66
    sput-boolean v6, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sInitialized:Z

    .line 69
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_4b
    sget v3, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sFontSize:F

    sget v4, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sFontColor:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/views/TextViewUtils;->createText(Landroid/content/Context;Landroid/util/AttributeSet;IFIZZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mStatus:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v0, Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mLineupLayout:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mLineupLayout:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->addView(Landroid/view/View;)V

    .line 76
    iput v5, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mVisibleSize:I

    .line 77
    iput v5, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mSize:I

    .line 78
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/views/EventActionListener;Ljava/lang/String;Z)V
    .registers 15
    .parameter "event"
    .parameter "listener"
    .parameter "rsvpType"
    .parameter "past"

    .prologue
    .line 99
    invoke-static {p1, p3}, Lcom/google/android/apps/plus/content/EsEventData;->getInviteeSummary(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;)Lcom/google/api/services/plusi/model/InviteeSummary;

    move-result-object v4

    .line 100
    .local v4, summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, gaiaIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_61

    .line 103
    iget-object v6, v4, Lcom/google/api/services/plusi/model/InviteeSummary;->invitee:Ljava/util/List;

    if-eqz v6, :cond_2f

    .line 104
    iget-object v6, v4, Lcom/google/api/services/plusi/model/InviteeSummary;->invitee:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/plusi/model/Invitee;

    .line 105
    .local v3, invitee:Lcom/google/api/services/plusi/model/Invitee;
    iget-object v6, v3, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    if-eqz v6, :cond_15

    .line 106
    iget-object v6, v3, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    iget-object v5, v6, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    .line 108
    .local v5, targetId:Ljava/lang/String;
    if-eqz v5, :cond_15

    .line 109
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 115
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #invitee:Lcom/google/api/services/plusi/model/Invitee;
    .end local v5           #targetId:Ljava/lang/String;
    :cond_2f
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mLineupLayout:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    invoke-virtual {v6, v1, p2}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->bindIds(Ljava/util/ArrayList;Lcom/google/android/apps/plus/views/EventActionListener;)V

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mVisibleSize:I

    .line 117
    iget-object v6, v4, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mSize:I

    .line 121
    sget-object v6, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_MAYBE:Ljava/lang/String;

    invoke-static {p3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 122
    sget-object v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sRsvpMaybeFormat:Ljava/lang/String;

    .line 129
    .local v0, format:Ljava/lang/String;
    :goto_4c
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mStatus:Landroid/widget/TextView;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .end local v0           #format:Ljava/lang/String;
    :cond_61
    return-void

    .line 123
    :cond_62
    sget-object v6, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    invoke-static {p3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 124
    if-eqz p4, :cond_6f

    sget-object v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sRsvpYesPastFormat:Ljava/lang/String;

    .restart local v0       #format:Ljava/lang/String;
    :goto_6e
    goto :goto_4c

    .end local v0           #format:Ljava/lang/String;
    :cond_6f
    sget-object v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sRsvpYesFormat:Ljava/lang/String;

    goto :goto_6e

    .line 126
    :cond_72
    if-eqz p4, :cond_77

    sget-object v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sRsvpInvitedPastFormat:Ljava/lang/String;

    .restart local v0       #format:Ljava/lang/String;
    :goto_76
    goto :goto_4c

    .end local v0           #format:Ljava/lang/String;
    :cond_77
    sget-object v0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->sRsvpInvitedFormat:Ljava/lang/String;

    goto :goto_76
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mVisibleSize:I

    .line 143
    iput v0, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mSize:I

    .line 144
    return-void
.end method

.method protected measureChildren(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x0

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 83
    .local v1, width:I
    const/4 v0, 0x0

    .line 85
    .local v0, currentHeight:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mStatus:Landroid/widget/TextView;

    invoke-static {v2, v1, v4, v3, v3}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->measure(Landroid/view/View;IIII)V

    .line 86
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mStatus:Landroid/widget/TextView;

    invoke-static {v2, v3, v3}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->setCorner(Landroid/view/View;II)V

    .line 87
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 89
    iget v2, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mVisibleSize:I

    if-lez v2, :cond_2e

    .line 90
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mLineupLayout:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    invoke-static {v2, v1, v4, v3, v3}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->measure(Landroid/view/View;IIII)V

    .line 91
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mLineupLayout:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->setCorner(Landroid/view/View;II)V

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mLineupLayout:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 94
    :cond_2e
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/apps/plus/views/EventInviteeSummaryLayout;->mSize:I

    return v0
.end method

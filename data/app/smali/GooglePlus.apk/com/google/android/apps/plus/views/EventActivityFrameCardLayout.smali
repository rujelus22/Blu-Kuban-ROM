.class public Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;
.super Lcom/google/android/apps/plus/views/CardViewLayout;
.source "EventActivityFrameCardLayout.java"


# static fields
.field private static sAvatarLineupMarginBottom:I

.field private static sAvatarLineupMarginLeft:I

.field private static sAvatarLineupMarginRight:I

.field private static sCheckinIconDrawable:Landroid/graphics/drawable/Drawable;

.field private static sDateTextColor:I

.field private static sDateTextSize:I

.field private static sGoingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private static sInitialized:Z

.field private static sInvitedIconDrawable:Landroid/graphics/drawable/Drawable;

.field private static sPaddingBottom:I

.field private static sPaddingLeft:I

.field private static sPaddingRight:I

.field private static sPaddingTop:I


# instance fields
.field private mAvatarLineup:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

.field private mDate:Landroid/widget/TextView;

.field private mDescription:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/CardViewLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/CardViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method private getText(ILjava/util/ArrayList;)Ljava/lang/CharSequence;
    .registers 13
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventPerson;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 236
    .local p2, people:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsEventData$EventPerson;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 237
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 239
    .local v5, pileText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 241
    .local v0, formatStrings:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_7a

    .line 260
    :goto_d
    if-eqz v0, :cond_2d

    .line 261
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, v0

    if-lt v7, v8, :cond_4e

    .line 262
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v1, v0, v7

    .line 263
    .local v1, formatText:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .end local v1           #formatText:Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-object v5

    .line 243
    :pswitch_2e
    const v7, 0x7f070008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 244
    goto :goto_d

    .line 247
    :pswitch_36
    const v7, 0x7f07000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 248
    goto :goto_d

    .line 251
    :pswitch_3e
    const v7, 0x7f070009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 252
    goto :goto_d

    .line 255
    :pswitch_46
    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 265
    :cond_4e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v3, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;

    .line 268
    .local v4, person:Lcom/google/android/apps/plus/content/EsEventData$EventPerson;
    iget-object v7, v4, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 271
    .end local v4           #person:Lcom/google/android/apps/plus/content/EsEventData$EventPerson;
    :cond_69
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget-object v1, v0, v7

    .line 272
    .restart local v1       #formatText:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2d

    .line 241
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_2e
        :pswitch_36
        :pswitch_3e
    .end packed-switch
.end method

.method private setIcon(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_16

    .line 224
    :goto_4
    :pswitch_4
    if-eqz v0, :cond_b

    .line 225
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_b
    return-void

    .line 214
    :pswitch_c
    sget-object v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sCheckinIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    goto :goto_4

    .line 217
    :pswitch_f
    sget-object v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sInvitedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 218
    goto :goto_4

    .line 220
    :pswitch_12
    sget-object v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sGoingIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 212
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_c
        :pswitch_f
        :pswitch_4
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public bind(IJLjava/util/List;Lcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 11
    .parameter "type"
    .parameter "timestamp"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/EsEventData$EventPerson;",
            ">;",
            "Lcom/google/android/apps/plus/views/EventActionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p4, people:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/EsEventData$EventPerson;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->setIcon(I)V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, filteredPeople:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsEventData$EventPerson;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f

    .line 185
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;

    .line 187
    .local v2, person:Lcom/google/android/apps/plus/content/EsEventData$EventPerson;
    iget-object v3, v2, Lcom/google/android/apps/plus/content/EsEventData$EventPerson;->name:Ljava/lang/String;

    if-eqz v3, :cond_1c

    .line 188
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 192
    .end local v2           #person:Lcom/google/android/apps/plus/content/EsEventData$EventPerson;
    :cond_1f
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mAvatarLineup:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    invoke-virtual {v3, v0, p5}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->bind(Ljava/util/ArrayList;Lcom/google/android/apps/plus/views/EventActionListener;)V

    .line 193
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2, p3}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDescription:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->getText(ILjava/util/ArrayList;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x2

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    sget-boolean v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sInitialized:Z

    if-nez v1, :cond_7b

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sInvitedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sGoingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sCheckinIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sDateTextColor:I

    .line 74
    const v1, 0x7f0d0124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sDateTextSize:I

    .line 76
    const v1, 0x7f0d012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sPaddingLeft:I

    .line 78
    const v1, 0x7f0d012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sPaddingRight:I

    .line 80
    const v1, 0x7f0d012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sPaddingTop:I

    .line 82
    const v1, 0x7f0d012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sPaddingBottom:I

    .line 85
    const v1, 0x7f0d011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sAvatarLineupMarginLeft:I

    .line 87
    const v1, 0x7f0d011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sAvatarLineupMarginRight:I

    .line 89
    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sAvatarLineupMarginBottom:I

    .line 91
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sInitialized:Z

    .line 94
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_7b
    sget v1, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sPaddingLeft:I

    sget v2, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sPaddingTop:I

    sget v3, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sPaddingRight:I

    sget v4, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->addPadding(IIII)V

    .line 96
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    sget v2, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sDateTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sDateTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->addView(Landroid/view/View;)V

    .line 103
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mIcon:Landroid/widget/ImageView;

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->addView(Landroid/view/View;)V

    .line 106
    new-instance v1, Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mAvatarLineup:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mAvatarLineup:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->addView(Landroid/view/View;)V

    .line 109
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDescription:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDescription:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->addView(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method protected measureChildren(II)V
    .registers 26
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 117
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 118
    .local v18, width:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 119
    .local v9, height:I
    const/4 v12, 0x0

    .line 120
    .local v12, left:I
    const/16 v17, 0x0

    .line 122
    .local v17, top:I
    add-int v16, v12, v18

    .line 123
    .local v16, right:I
    add-int v3, v17, v9

    .line 125
    .local v3, bottom:I
    move/from16 v2, v18

    .line 128
    .local v2, availableWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v20

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/high16 v21, -0x8000

    move/from16 v0, v21

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ImageView;->measure(II)V

    .line 131
    move v10, v12

    .line 132
    .local v10, iconLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    .line 133
    .local v11, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v10, v1}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->setCorner(Landroid/view/View;II)V

    .line 134
    sub-int/2addr v2, v11

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v20

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/high16 v21, -0x8000

    move/from16 v0, v21

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->measure(II)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 141
    .local v6, dateWidth:I
    sub-int v4, v16, v6

    .line 142
    .local v4, dateLeft:I
    move/from16 v5, v17

    .line 143
    .local v5, dateTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v4, v5}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->setCorner(Landroid/view/View;II)V

    .line 144
    sub-int/2addr v2, v6

    .line 147
    sget v19, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sAvatarLineupMarginLeft:I

    sget v20, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sAvatarLineupMarginRight:I

    add-int v19, v19, v20

    sub-int v2, v2, v19

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mAvatarLineup:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    move-object/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v20

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/high16 v21, -0x8000

    move/from16 v0, v21

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->measure(II)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    add-int/lit8 v19, v19, 0x0

    sget v20, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sAvatarLineupMarginLeft:I

    add-int v13, v19, v20

    .line 151
    .local v13, lineupLeft:I
    move/from16 v14, v17

    .line 152
    .local v14, lineupTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mAvatarLineup:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13, v14}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->setCorner(Landroid/view/View;II)V

    .line 155
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mAvatarLineup:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->getMaxHeight([Landroid/view/View;)I

    move-result v15

    .line 156
    .local v15, maxHeight:I
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mAvatarLineup:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->verticallyCenter(I[Landroid/view/View;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mAvatarLineup:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->getMeasuredHeight()I

    move-result v19

    add-int/lit8 v19, v19, 0x0

    sget v20, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->sAvatarLineupMarginBottom:I

    add-int v8, v19, v20

    .line 161
    .local v8, descriptionTop:I
    move v7, v12

    .line 162
    .local v7, descriptionLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDescription:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v7, v8}, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->setCorner(Landroid/view/View;II)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDescription:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    sub-int v21, v3, v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->measure(II)V

    .line 167
    return-void
.end method

.method public onRecycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-super {p0}, Lcom/google/android/apps/plus/views/CardViewLayout;->onRecycle()V

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventActivityFrameCardLayout;->mAvatarLineup:Lcom/google/android/apps/plus/views/AvatarLineupLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AvatarLineupLayout;->clear()V

    .line 204
    return-void
.end method

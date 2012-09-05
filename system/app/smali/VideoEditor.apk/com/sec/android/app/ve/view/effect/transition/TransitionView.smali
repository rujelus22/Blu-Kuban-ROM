.class public final Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
.super Landroid/widget/ImageView;
.source "TransitionView.java"


# static fields
.field public static final TRANSITION_SIZE:I = 0x24

.field private static mClickListener:Landroid/view/View$OnClickListener;


# instance fields
.field private isFocused:Z

.field private mEdit:Lcom/samsung/app/video/editor/external/Edit;

.field private mElement:Lcom/samsung/app/video/editor/external/Element;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$1;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    sget-object v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Edit;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;Lcom/samsung/app/video/editor/external/Edit;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    return-void
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Lcom/samsung/app/video/editor/external/Element;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setOnResource(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)Z
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->isFocused:Z

    return v0
.end method

.method public static lostAllFocus()V
    .registers 3

    .prologue
    .line 82
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_c

    .line 88
    return-void

    .line 83
    :cond_c
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v2, :cond_1d

    .line 85
    check-cast v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->lostFocus()V

    .line 82
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static refresh()V
    .registers 6

    .prologue
    .line 92
    const-string v5, "Refrshing TransitionView"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    if-nez v5, :cond_c

    .line 112
    .local v1, i:I
    .local v2, j:I
    .local v3, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_b
    return-void

    .line 95
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_c
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    .line 96
    .restart local v3       #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    const/4 v1, 0x0

    .restart local v1       #i:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_16
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 97
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v5, :cond_45

    move-object v4, v0

    .line 99
    check-cast v4, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .line 100
    .local v4, tView:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
    iget-boolean v5, v4, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->isFocused:Z

    if-eqz v5, :cond_48

    .line 101
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 103
    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->gotFocus()V

    .line 109
    :goto_43
    add-int/lit8 v2, v2, 0x1

    .line 96
    .end local v4           #tView:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 105
    .restart local v4       #tView:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
    :cond_48
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 107
    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->lostFocus()V

    goto :goto_43
.end method

.method public static refresh(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 6
    .parameter "element"

    .prologue
    .line 262
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_c

    .line 279
    :goto_b
    return-void

    .line 263
    :cond_c
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 264
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v4, :cond_42

    move-object v3, v0

    .line 265
    check-cast v3, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .line 266
    .local v3, tchild:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 269
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    .line 270
    .local v1, edit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 271
    const v4, 0x7f020182

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    .line 274
    :goto_37
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->isFocused:Z

    goto :goto_b

    .line 273
    :cond_3b
    const v4, 0x7f020181

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_37

    .line 262
    .end local v1           #edit:Lcom/samsung/app/video/editor/external/Edit;
    .end local v3           #tchild:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setOnResource(Z)V
    .registers 3
    .parameter "focus"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v0

    sparse-switch v0, :sswitch_data_7a

    .line 204
    const v0, 0x7f020181

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    .line 208
    :goto_f
    return-void

    .line 141
    :sswitch_10
    const v0, 0x7f02017d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 145
    :sswitch_17
    const v0, 0x7f02017b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 149
    :sswitch_1e
    const v0, 0x7f020177

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 153
    :sswitch_25
    const v0, 0x7f020188

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 157
    :sswitch_2c
    const v0, 0x7f020189

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 161
    :sswitch_33
    const v0, 0x7f020179

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 164
    :sswitch_3a
    const v0, 0x7f020186

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 167
    :sswitch_41
    const v0, 0x7f020178

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 171
    :sswitch_48
    const v0, 0x7f020183

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 175
    :sswitch_4f
    const v0, 0x7f02017f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 179
    :sswitch_56
    const v0, 0x7f020180

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 182
    :sswitch_5d
    const v0, 0x7f020184

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 185
    :sswitch_64
    const v0, 0x7f020187

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 188
    :sswitch_6b
    const v0, 0x7f020185

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 191
    :sswitch_72
    const v0, 0x7f02017a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    goto :goto_f

    .line 138
    nop

    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_17
        0x3 -> :sswitch_1e
        0x5 -> :sswitch_25
        0x9 -> :sswitch_2c
        0xb -> :sswitch_33
        0x21 -> :sswitch_4f
        0x22 -> :sswitch_56
        0x23 -> :sswitch_5d
        0x24 -> :sswitch_64
        0x25 -> :sswitch_6b
        0x26 -> :sswitch_72
        0x28 -> :sswitch_3a
        0x29 -> :sswitch_41
        0x2a -> :sswitch_48
    .end sparse-switch
.end method


# virtual methods
.method public getEdit()Lcom/samsung/app/video/editor/external/Edit;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    return-object v0
.end method

.method public getElement()Lcom/samsung/app/video/editor/external/Element;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method public gotFocus()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v0

    if-nez v0, :cond_4c

    .line 213
    :cond_d
    const v0, 0x7f02017e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    .line 217
    :goto_13
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->isFocused:Z

    .line 218
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->isFocused:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setSelected(Z)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    if-nez v0, :cond_33

    .line 222
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 225
    :cond_33
    invoke-static {}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getInstance()Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v2

    new-instance v3, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView$2;-><init>(Lcom/sec/android/app/ve/view/effect/transition/TransitionView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->setEditInfo(IILcom/sec/android/app/ve/view/effect/transition/TransitionControlView$TransitionListener;)V

    .line 254
    return-void

    .line 215
    :cond_4c
    invoke-direct {p0, v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setOnResource(Z)V

    goto :goto_13
.end method

.method public lostFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v0

    if-nez v0, :cond_20

    .line 125
    :cond_d
    const v0, 0x7f020181

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setImageResource(I)V

    .line 126
    const-string v0, "Transition lost focus"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 132
    :goto_18
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->isFocused:Z

    .line 133
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->isFocused:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setSelected(Z)V

    .line 134
    return-void

    .line 129
    :cond_20
    invoke-direct {p0, v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setOnResource(Z)V

    goto :goto_18
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->isFocused:Z

    .line 76
    return-void
.end method

.method public setEdit(Lcom/samsung/app/video/editor/external/Edit;)V
    .registers 2
    .parameter "edit"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    .line 71
    return-void
.end method

.method public setElement(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "element"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mElement:Lcom/samsung/app/video/editor/external/Element;

    .line 258
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/external/Element;->getEdit(I)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->mEdit:Lcom/samsung/app/video/editor/external/Edit;

    .line 259
    return-void
.end method

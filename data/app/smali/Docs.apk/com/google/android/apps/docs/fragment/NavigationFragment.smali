.class public Lcom/google/android/apps/docs/fragment/NavigationFragment;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "NavigationFragment.java"

# interfaces
.implements LHD;
.implements Ljd;


# instance fields
.field private a:LHB;

.field public a:LHG;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LVo;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/widget/ExpandableListView;

.field private a:Landroid/widget/Toast;

.field public a:LhB;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LhM;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Ljc;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public b:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<[",
            "Lhq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 61
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/fragment/NavigationFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Lck;

    return-object v0
.end method

.method private a([LHA;)V
    .registers 12
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->g()Z

    move-result v9

    .line 215
    new-instance v0, LHB;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LhB;

    invoke-interface {v2}, LhB;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Llu;

    iget-object v5, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LhM;

    iget-object v6, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Ljc;

    iget-object v7, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LVo;

    move-object v2, p1

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, LHB;-><init>(Landroid/content/Context;[LHA;Ljava/lang/String;Llu;LhM;Ljc;LVo;LHD;Z)V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LHB;

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LHB;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    new-instance v1, LHE;

    invoke-direct {v1, p0}, LHE;-><init>(Lcom/google/android/apps/docs/fragment/NavigationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    new-instance v1, LHF;

    invoke-direct {v1, p0, p1}, LHF;-><init>(Lcom/google/android/apps/docs/fragment/NavigationFragment;[LHA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 267
    const/4 v0, 0x0

    :goto_3b
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LHB;

    invoke-virtual {v1}, LHB;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 268
    aget-object v1, p1, v0

    invoke-virtual {v1}, LHA;->a()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 269
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 267
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 272
    :cond_53
    return-void
.end method

.method private a()[LHA;
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 168
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->g()Z

    move-result v10

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lhq;

    .line 172
    array-length v11, v6

    move v8, v7

    :goto_15
    if-ge v8, v11, :cond_70

    aget-object v2, v6, v8

    .line 175
    sget-object v0, Lhs;->a:Lhs;

    invoke-virtual {v2, v0}, Lhq;->a(Lhs;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LZJ;

    invoke-interface {v0}, LZJ;->d()Z

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Lhs;->c:Lhs;

    invoke-virtual {v2, v0}, Lhq;->a(Lhs;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 178
    :cond_31
    invoke-virtual {v2}, Lhq;->a()Z

    move-result v3

    .line 180
    if-nez v10, :cond_47

    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    sget-object v1, LdL;->b:LdL;

    invoke-virtual {v0, v1}, LdL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 181
    :cond_47
    invoke-virtual {v2}, Lhq;->a()I

    move-result v4

    .line 186
    :goto_4b
    new-instance v0, LHA;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Lhq;->b()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lhq;->a()Lnk;

    move-result-object v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, LHA;-><init>(Ljava/lang/String;Lnk;ZIZ)V

    .line 189
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_64
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_15

    .line 183
    :cond_68
    if-eqz v3, :cond_6e

    sget v0, LcR;->ic_arrow:I

    :goto_6c
    move v4, v0

    goto :goto_4b

    :cond_6e
    move v0, v7

    goto :goto_6c

    .line 193
    :cond_70
    new-array v0, v7, [LHA;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHA;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/fragment/NavigationFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Lck;

    return-object v0
.end method

.method private g()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 276
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lkg;->b(Landroid/content/res/Resources;)Z

    move-result v3

    .line 277
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_20

    move v2, v0

    .line 278
    :goto_1b
    if-eqz v3, :cond_22

    if-eqz v2, :cond_22

    :goto_1f
    return v0

    :cond_20
    move v2, v1

    .line 277
    goto :goto_1b

    :cond_22
    move v0, v1

    .line 278
    goto :goto_1f
.end method

.method private p()V
    .registers 4

    .prologue
    .line 331
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 332
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LHB;

    invoke-virtual {v2, v1}, LHB;->a(Landroid/view/View;)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    :cond_17
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 145
    sget v0, LcU;->navigation_pane:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 146
    sget v0, LcS;->navigation_folders:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 149
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, LcQ;->navigation_panel_narrow_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    :cond_47
    return-object v1
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 318
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_23

    .line 319
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 326
    :goto_1d
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 327
    :goto_22
    return-object v0

    .line 320
    :cond_23
    const/16 v0, 0x2002

    if-ne p1, v0, :cond_37

    .line 321
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1d

    .line 323
    :cond_37
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public a()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LHB;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LHB;

    invoke-virtual {v0}, LHB;->notifyDataSetChanged()V

    .line 285
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->p()V

    .line 286
    return-void
.end method

.method public a(ILHA;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-virtual {p2}, LHA;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 355
    :goto_6
    return-void

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    .line 350
    if-eqz v0, :cond_15

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_6

    .line 353
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_6
.end method

.method public b()V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LHB;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LHB;

    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()[LHA;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LhB;

    invoke-interface {v2}, LhB;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LHB;->a([LHA;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Ljc;

    invoke-interface {v0}, Ljc;->a()LhW;

    move-result-object v0

    invoke-interface {v0}, LhW;->a()Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/Toast;

    if-eqz v1, :cond_36

    .line 295
    iget-object v1, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_2d
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    :cond_32
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->p()V

    .line 302
    return-void

    .line 297
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/Toast;

    goto :goto_2d
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboFragment;->b(Landroid/os/Bundle;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Ljc;

    invoke-interface {v0, p0}, Ljc;->a(Ljd;)V

    .line 202
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()[LHA;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a([LHA;)V

    .line 203
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 306
    invoke-super {p0}, Lcom/google/android/apps/docs/view/RoboFragment;->f()V

    .line 310
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()[LHA;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a([LHA;)V

    .line 311
    return-void
.end method

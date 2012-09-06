.class public Lcom/google/android/apps/docs/kixwebview/PageScrubber;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "PageScrubber.java"


# instance fields
.field private a:I

.field private a:LJV;

.field private a:LKI;

.field private final a:LKN;

.field private final a:LKP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKP",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

.field private a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

.field private b:I

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:I

    .line 48
    iput-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:LKI;

    .line 50
    iput-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:LJV;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b:I

    .line 56
    new-instance v0, LKJ;

    invoke-direct {v0, p0}, LKJ;-><init>(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:LKN;

    .line 92
    new-instance v0, LKK;

    invoke-direct {v0, p0}, LKK;-><init>(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:LKP;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)LJV;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:LJV;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)LKI;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:LKI;

    return-object v0
.end method

.method private a()LKO;
    .registers 3

    .prologue
    .line 171
    new-instance v0, LKO;

    invoke-direct {v0}, LKO;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->d:Landroid/view/View;

    iput-object v1, v0, LKO;->a:Landroid/view/View;

    .line 173
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    iput-object v1, v0, LKO;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    .line 174
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b:Landroid/widget/ImageView;

    iput-object v1, v0, LKO;->b:Landroid/view/View;

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->e:Landroid/view/View;

    iput-object v1, v0, LKO;->c:Landroid/view/View;

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Landroid/widget/TextView;

    iput-object v1, v0, LKO;->a:Landroid/widget/TextView;

    .line 177
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b:Landroid/widget/TextView;

    iput-object v1, v0, LKO;->b:Landroid/widget/TextView;

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->c:Landroid/widget/ImageView;

    iput-object v1, v0, LKO;->a:Landroid/widget/ImageView;

    .line 179
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Landroid/widget/ImageView;

    iput-object v1, v0, LKO;->d:Landroid/view/View;

    .line 180
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->f:Landroid/view/View;

    iput-object v1, v0, LKO;->e:Landroid/view/View;

    .line 181
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)Lcom/google/android/apps/docs/kixwebview/ScrubBar;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a()V

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b:I

    .line 192
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)V
    .registers 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->d(I)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:I

    return v0
.end method

.method private d(I)V
    .registers 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setUndoPosition(I)V

    .line 186
    iput p1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b:I

    .line 187
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    sget v0, LcU;->reader_scrub_bar:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 129
    sget v0, LcS;->scrub:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    .line 130
    sget v0, LcS;->scrub_mask:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->d:Landroid/view/View;

    .line 131
    sget v0, LcS;->scrub_track:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    .line 132
    sget v0, LcS;->scrub_callout_bubble:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->e:Landroid/view/View;

    .line 133
    sget v0, LcS;->scrub_callout_chapter:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Landroid/widget/TextView;

    .line 134
    sget v0, LcS;->scrub_callout_page:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b:Landroid/widget/TextView;

    .line 135
    sget v0, LcS;->scrub_undo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Landroid/widget/ImageView;

    .line 136
    sget v0, LcS;->scrub_undo_target:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->f:Landroid/view/View;

    .line 137
    sget v0, LcS;->scrub_callout_arrow:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b:Landroid/widget/ImageView;

    .line 138
    sget v0, LcS;->scrub_knob:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->c:Landroid/widget/ImageView;

    .line 140
    return-object v1
.end method

.method public a(LKI;LJV;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, LcY;->page_counter_format:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->c:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:LKI;

    .line 147
    iput-object p2, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:LJV;

    .line 148
    new-instance v0, LKQ;

    invoke-direct {v0}, LKQ;-><init>()V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lda;->Theme:[I

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 150
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, LKQ;->a:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->setResources(LKQ;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a()LKO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setResources(LKO;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setTabletMode(Z)V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:LKP;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setScrubIndex(LKP;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:LKN;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setOnScrubListener(LKN;)V

    .line 157
    return-void
.end method

.method public b(I)V
    .registers 4
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setPosition(I)V

    .line 161
    return-void
.end method

.method public c(I)V
    .registers 4
    .parameter

    .prologue
    .line 164
    iput p1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:I

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b()V

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    const/4 v0, 0x1

    if-le p1, v0, :cond_11

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setVisibility(I)V

    .line 168
    return-void

    .line 167
    :cond_11
    const/16 v0, 0x8

    goto :goto_d
.end method

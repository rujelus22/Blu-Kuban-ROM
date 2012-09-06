.class public Lcom/google/android/apps/docs/view/TitleBar;
.super Landroid/widget/FrameLayout;
.source "TitleBar.java"

# interfaces
.implements LIB;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:LIC;

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/view/View;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field protected a:Lck;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Z

    .line 49
    iput-object v1, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/docs/view/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/view/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, LcK;

    invoke-interface {v0}, LcK;->a()Lans;

    move-result-object v0

    .line 63
    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 64
    const-class v1, Lck;

    invoke-interface {v0, v1}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Lck;

    .line 65
    sget v0, LcU;->title_bar:I

    invoke-static {p1, v0, p0}, Lcom/google/android/apps/docs/view/TitleBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/view/TitleBar;->setWillNotDraw(Z)V

    .line 68
    sget v0, LcS;->upper_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/TextView;

    .line 69
    sget v0, LcS;->title:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->b:Landroid/widget/TextView;

    .line 70
    sget v0, LcS;->logo:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/ImageView;

    .line 71
    sget v0, LcS;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/LinearLayout;

    .line 72
    sget v0, LcS;->titles:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/RelativeLayout;

    .line 73
    sget v0, LcS;->create_new_doc_action:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->b:Landroid/widget/ImageView;

    .line 74
    sget v0, LcS;->search_action:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->c:Landroid/widget/ImageView;

    .line 75
    sget v0, LcS;->layout_sync_progress_light:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    if-eqz p2, :cond_9c

    .line 83
    sget-object v0, Lda;->TitleBarEntry:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Z

    .line 88
    iget-boolean v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Z

    if-nez v0, :cond_9c

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    :cond_9c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Lck;

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, LcS;->logo:I

    if-ne v0, v1, :cond_1d

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:LIC;

    if-eqz v0, :cond_1c

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:LIC;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LIC;->b(Ljava/lang/String;)V

    .line 118
    :cond_1c
    :goto_1c
    return-void

    .line 103
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, LcS;->create_new_doc_action:I

    if-ne v0, v1, :cond_31

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:LIC;

    if-eqz v0, :cond_1c

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:LIC;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LIC;->a(Ljava/lang/String;)V

    goto :goto_1c

    .line 107
    :cond_31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, LcS;->search_action:I

    if-ne v0, v1, :cond_43

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:LIC;

    if-eqz v0, :cond_1c

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:LIC;

    invoke-interface {v0}, LIC;->a()V

    goto :goto_1c

    .line 111
    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, LcS;->titles:I

    if-ne v0, v1, :cond_55

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:LIC;

    if-eqz v0, :cond_1c

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:LIC;

    invoke-interface {v0}, LIC;->b()V

    goto :goto_1c

    .line 116
    :cond_55
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:LXJ;

    const-string v1, "Coming soon..."

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public setAccountName(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setActionsVisible(Z)V
    .registers 4
    .parameter

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Z

    if-eqz v0, :cond_c

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    :cond_c
    return-void

    .line 123
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public setListener(LIC;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:LIC;

    .line 133
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    return-void
.end method

.method public setSyncing(Z)V
    .registers 4
    .parameter

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    return-void

    .line 163
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setTitles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/apps/docs/view/TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x3

    :goto_14
    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 143
    return-void

    .line 142
    :cond_18
    const/16 v0, 0xc

    goto :goto_14
.end method

.method public setVisible(Z)V
    .registers 3
    .parameter

    .prologue
    .line 178
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TitleBar;->setVisibility(I)V

    .line 179
    return-void

    .line 178
    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.class public LNu;
.super Landroid/widget/BaseAdapter;
.source "PunchSlideAdapter.java"


# instance fields
.field private final a:LNn;

.field private final a:LNx;

.field private final a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(LNn;Landroid/view/LayoutInflater;LNx;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object p1, p0, LNu;->a:LNn;

    .line 53
    iput-object p2, p0, LNu;->a:Landroid/view/LayoutInflater;

    .line 54
    iput-object p3, p0, LNu;->a:LNx;

    .line 55
    return-void
.end method

.method private a()F
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, LNu;->a:LNn;

    invoke-interface {v0}, LNn;->a()I

    move-result v1

    .line 177
    iget-object v0, p0, LNu;->a:LNn;

    invoke-interface {v0}, LNn;->b()I

    move-result v2

    .line 178
    const/high16 v0, 0x3f80

    .line 179
    if-ltz v1, :cond_15

    if-ltz v2, :cond_15

    .line 180
    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 182
    :cond_15
    return v0
.end method

.method static synthetic a(LNu;)LNx;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, LNu;->a:LNx;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 93
    sget v0, LcS;->thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;

    .line 95
    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 96
    invoke-static {}, Lkg;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 99
    :cond_1a
    return-void
.end method

.method private a(Landroid/view/View;II)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    sget v0, LcS;->slide_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget v0, LcS;->speaker_notes_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 131
    iget-object v1, p0, LNu;->a:LNn;

    invoke-interface {v1, p2}, LNn;->c(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9c

    move v1, v7

    .line 132
    :goto_2b
    if-eqz v1, :cond_9e

    move v1, v6

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    sget v0, LcS;->thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;

    .line 137
    invoke-direct {p0}, LNu;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->setAspect(F)V

    .line 139
    iget-object v1, p0, LNu;->a:LNn;

    invoke-interface {v1, p2}, LNn;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v1, "text/html"

    iget-object v3, p0, LNu;->a:LNn;

    invoke-interface {v3, p2}, LNn;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 143
    if-eqz v2, :cond_77

    .line 144
    const-string v1, "<img "

    const-string v3, "<img width=\"100%\" height=\"100%\" "

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<body style=\"margin: 0; padding: 0\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    :cond_77
    const-string v1, "fake-url"

    iget-object v3, p0, LNu;->a:LNn;

    invoke-interface {v3, p2}, LNn;->b(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v4}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-ne p2, p3, :cond_a1

    move v1, v7

    .line 159
    :goto_8c
    sget v0, LcS;->thumbnail_border:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 160
    if-eqz v1, :cond_98

    sget v6, LcP;->slide_thumbnail_activated:I

    :cond_98
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    return-void

    :cond_9c
    move v1, v6

    .line 131
    goto :goto_2b

    .line 132
    :cond_9e
    const/16 v1, 0x8

    goto :goto_2e

    :cond_a1
    move v1, v6

    .line 158
    goto :goto_8c
.end method

.method private b(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 108
    sget v0, LcS;->thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;

    .line 111
    new-instance v1, LNv;

    invoke-direct {v1, p0, p1}, LNv;-><init>(LNu;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    return-void
.end method

.method private c(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 164
    new-instance v0, LNw;

    invoke-direct {v0, p0}, LNw;-><init>(LNu;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, LNu;->a:LNn;

    invoke-interface {v0}, LNn;->c()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    .line 75
    if-nez p2, :cond_40

    .line 76
    iget-object v0, p0, LNu;->a:Landroid/view/LayoutInflater;

    sget v1, LcU;->punch_slide_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 77
    sget v0, LcS;->slide_index:I

    sget v1, LcS;->slide_index:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 78
    sget v0, LcS;->speaker_notes_indicator:I

    sget v1, LcS;->speaker_notes_indicator:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 79
    sget v0, LcS;->thumbnail:I

    sget v1, LcS;->thumbnail:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 80
    sget v0, LcS;->thumbnail_border:I

    sget v1, LcS;->thumbnail_border:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 82
    invoke-direct {p0, p2}, LNu;->b(Landroid/view/View;)V

    .line 83
    invoke-direct {p0, p2}, LNu;->a(Landroid/view/View;)V

    .line 84
    invoke-direct {p0, p2}, LNu;->c(Landroid/view/View;)V

    .line 87
    :cond_40
    iget-object v0, p0, LNu;->a:LNn;

    invoke-interface {v0}, LNn;->d()I

    move-result v0

    invoke-direct {p0, p2, p1, v0}, LNu;->a(Landroid/view/View;II)V

    .line 89
    return-object p2
.end method

.class public Lcom/google/android/apps/docs/view/SpeakerNotesContent;
.super Landroid/widget/LinearLayout;
.source "SpeakerNotesContent.java"


# instance fields
.field private a:LMA;

.field public a:LNn;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Labk;

.field public final a:Landroid/content/Context;

.field private a:Landroid/webkit/WebView;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/TextView;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object p1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-object p1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a()V

    .line 86
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SpeakerNotesContent;)Labk;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Labk;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/content/Context;

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)Lans;

    move-result-object v0

    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/content/Context;

    sget v1, LcU;->speaker_note_content:I

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    sget v0, LcS;->speaker_notes:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/webkit/WebView;

    .line 107
    sget v0, LcS;->no_notes:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/widget/TextView;

    .line 108
    sget v0, LcS;->speaker_notes_close_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/widget/ImageView;

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcP;->punch_grey_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 111
    invoke-static {}, Lkg;->b()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/webkit/WebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 115
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lkg;->c(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 118
    invoke-static {}, Lkg;->c()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 119
    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 125
    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/widget/ImageView;

    new-instance v1, Labi;

    invoke-direct {v1, p0}, Labi;-><init>(Lcom/google/android/apps/docs/view/SpeakerNotesContent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->c()V

    .line 137
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->b()V

    .line 138
    return-void

    .line 121
    :cond_76
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    goto :goto_65
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SpeakerNotesContent;)V
    .registers 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->b()V

    return-void
.end method

.method private b()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:LNn;

    invoke-interface {v0}, LNn;->c()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:LNn;

    invoke-interface {v0}, LNn;->d()I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:LNn;

    invoke-interface {v1, v0}, LNn;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Ljava/lang/String;

    .line 146
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Ljava/lang/String;

    if-nez v0, :cond_36

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->b:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 149
    iput-object v5, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->b:Ljava/lang/String;

    .line 152
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :goto_35
    return-void

    .line 155
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/webkit/WebView;

    const-string v1, "fake-url"

    iget-object v2, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->b:Ljava/lang/String;

    .line 160
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35
.end method

.method private c()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:LMA;

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 174
    new-instance v0, Labj;

    invoke-direct {v0, p0}, Labj;-><init>(Lcom/google/android/apps/docs/view/SpeakerNotesContent;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:LMA;

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:LNn;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:LMA;

    invoke-interface {v0, v1}, LNn;->a(LNo;)V

    .line 192
    return-void

    .line 173
    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private d()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:LMA;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:LNn;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:LMA;

    invoke-interface {v0, v1}, LNn;->b(LNo;)V

    .line 197
    return-void

    .line 195
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/content/Context;

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)V

    .line 168
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->d()V

    .line 169
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 170
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/content/Context;

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)V

    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public setListener(Labk;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Labk;

    .line 93
    return-void
.end method

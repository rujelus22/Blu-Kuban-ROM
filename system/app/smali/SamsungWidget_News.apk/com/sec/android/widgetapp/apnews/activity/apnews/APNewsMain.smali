.class public Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
.super Landroid/widget/LinearLayout;
.source "APNewsMain.java"


# instance fields
.field private mAPNewsItemAdapter:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;

.field private mAPNewsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mAPNewsMain:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

.field private mStartNewsData:I

.field private mTitleBar:Landroid/widget/ImageView;

.field private m_firstVisibleItem:I

.field private newsTitleBarListener:Landroid/view/View$OnClickListener;

.field private newsrefreshListener:Landroid/view/View$OnClickListener;

.field private no_news:Landroid/widget/TextView;

.field private no_news_layout:Landroid/widget/RelativeLayout;

.field private tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsMain:Landroid/widget/LinearLayout;

    .line 46
    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    .line 48
    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->no_news:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->no_news_layout:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 52
    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    .line 57
    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mStartNewsData:I

    .line 60
    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->m_firstVisibleItem:I

    .line 266
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$3;-><init>(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->newsTitleBarListener:Landroid/view/View$OnClickListener;

    .line 350
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$4;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$4;-><init>(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->newsrefreshListener:Landroid/view/View$OnClickListener;

    .line 434
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$5;-><init>(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 67
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->fillData(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->checkNoData()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->m_firstVisibleItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->queryDummy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)Lcom/sec/android/touchwiz/widget/TwTabHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkNoData()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 308
    :cond_f
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->no_news_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 320
    :goto_19
    return-void

    .line 315
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->no_news_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_19
.end method

.method private fillData(Ljava/lang/String;Z)V
    .registers 13
    .parameter "xmlUrl"
    .parameter "noneImage"

    .prologue
    .line 161
    new-instance v4, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 164
    .local v4, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    if-eqz p2, :cond_39

    .line 165
    invoke-virtual {v4, p1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsNoneImageRows(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 170
    .local v5, sNewsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    :goto_d
    if-eqz v5, :cond_b1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b1

    .line 171
    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    if-eqz v6, :cond_97

    .line 172
    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v6, v7, :cond_3e

    .line 174
    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v0, v6, :cond_63

    .line 175
    add-int/lit8 v0, v0, -0x1

    .line 176
    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2b

    .line 167
    .end local v0           #i:I
    .end local v5           #sNewsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    :cond_39
    invoke-virtual {v4, p1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsRows(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .restart local v5       #sNewsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    goto :goto_d

    .line 178
    :cond_3e
    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_63

    .line 180
    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0       #i:I
    :goto_50
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_63

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    invoke-direct {v7}, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 188
    .end local v0           #i:I
    :cond_63
    const/4 v2, 0x0

    .line 189
    .local v2, j:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 192
    .local v3, news:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    invoke-static {}, Lcom/sec/android/widgetapp/apnews/engine/Util;->getDeviceDensity()I

    move-result v6

    const/16 v7, 0xf0

    if-lt v6, v7, :cond_8f

    .line 193
    iget-object v6, v3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    if-eqz v6, :cond_8f

    iget-object v6, v3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-nez v6, :cond_8f

    if-nez p2, :cond_8f

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v6, p1, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getNewsImageDataToService(Ljava/lang/String;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)V

    .line 199
    :cond_8f
    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 203
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #j:I
    .end local v3           #news:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_97
    iput-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    .line 212
    :cond_99
    new-instance v6, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f030001

    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsItemAdapter:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;

    .line 213
    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsItemAdapter:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    :goto_b0
    return-void

    .line 218
    :cond_b1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v6, p1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getNewsDataToService(Ljava/lang/String;)V

    goto :goto_b0
.end method

.method private initAPNewsMain()V
    .registers 4

    .prologue
    .line 226
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_85

    .line 227
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 229
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsMain:Landroid/widget/LinearLayout;

    .line 230
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsMain:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->addView(Landroid/view/View;)V

    .line 232
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->no_news_layout:Landroid/widget/RelativeLayout;

    .line 234
    const v1, 0x7f0c0005

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->no_news:Landroid/widget/TextView;

    .line 235
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->no_news:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->newsrefreshListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v1, 0x7f0c0001

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mTitleBar:Landroid/widget/ImageView;

    .line 238
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mTitleBar:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 239
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mTitleBar:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->newsTitleBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    .line 242
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 243
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$2;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$2;-><init>(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 259
    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwTabHost;

    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 260
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setup()V

    .line 264
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_85
    return-void
.end method

.method private queryDummy()Z
    .registers 10

    .prologue
    .line 324
    const/4 v8, 0x0

    .line 325
    .local v8, fHasException:Z
    const/4 v6, 0x0

    .line 327
    .local v6, cs:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://APNews/APNEWS_DUMMY"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_17} :catch_1e
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_17} :catch_26

    move-result-object v6

    .line 344
    :goto_18
    if-eqz v6, :cond_1d

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_1d
    return v8

    .line 332
    :catch_1e
    move-exception v7

    .line 333
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    if-eqz v6, :cond_24

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_24
    const/4 v8, 0x1

    .line 342
    goto :goto_18

    .line 337
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_26
    move-exception v7

    .line 338
    .local v7, e:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v6, :cond_2c

    .line 339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_2c
    const/4 v8, 0x1

    goto :goto_18
.end method


# virtual methods
.method public checkNewsImageData(Ljava/lang/String;)Z
    .registers 7
    .parameter "xmlUrl"

    .prologue
    .line 415
    const/4 v2, 0x0

    .line 417
    .local v2, ret:Z
    new-instance v3, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 418
    .local v3, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v3, p1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsRows(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 420
    .local v0, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    if-eqz v0, :cond_30

    .line 421
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 422
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_30

    .line 423
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v4, v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    if-eqz v4, :cond_31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v4, v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-nez v4, :cond_31

    .line 425
    const/4 v2, 0x1

    .line 431
    .end local v1           #i:I
    :cond_30
    return v2

    .line 422
    .restart local v1       #i:I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method public deinitAPNewsMain()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 288
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 290
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    .line 292
    :cond_11
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsItemAdapter:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;

    if-eqz v0, :cond_1c

    .line 293
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsItemAdapter:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->clear()V

    .line 294
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsItemAdapter:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;

    .line 297
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    if-eqz v0, :cond_22

    .line 298
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    .line 301
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->removeAllViews()V

    .line 302
    return-void
.end method

.method public getAPCurrentTab()I
    .registers 6

    .prologue
    .line 96
    new-instance v3, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 97
    .local v3, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v1

    .line 98
    .local v1, headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    const/4 v2, 0x0

    .line 100
    .local v2, ret:I
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_23

    .line 101
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    .line 102
    .local v0, currentTab:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_24

    if-ltz v0, :cond_24

    .line 103
    move v2, v0

    .line 111
    .end local v0           #currentTab:I
    :cond_23
    :goto_23
    return v2

    .line 104
    .restart local v0       #currentTab:I
    :cond_24
    if-gez v0, :cond_28

    .line 105
    const/4 v2, 0x0

    goto :goto_23

    .line 107
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    goto :goto_23
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->m_firstVisibleItem:I

    return v0
.end method

.method public getCurrentTabXml()Ljava/lang/String;
    .registers 6

    .prologue
    .line 77
    new-instance v3, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 78
    .local v3, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v1

    .line 79
    .local v1, headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    const/4 v2, 0x0

    .line 81
    .local v2, ret:Ljava/lang/String;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2a

    .line 82
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    .line 83
    .local v0, currentTab:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2b

    if-ltz v0, :cond_2b

    .line 84
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v2, v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    .line 92
    .end local v0           #currentTab:I
    :cond_2a
    :goto_2a
    return-object v2

    .line 85
    .restart local v0       #currentTab:I
    :cond_2b
    if-gez v0, :cond_37

    .line 86
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v2, v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    goto :goto_2a

    .line 88
    :cond_37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v2, v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    goto :goto_2a
.end method

.method public moveLastPosition(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 283
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->initAPNewsMain()V

    .line 74
    return-void
.end method

.method public requestFirstTabImage()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 533
    new-instance v4, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 534
    .local v4, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v0

    .line 535
    .local v0, headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    const/4 v2, 0x0

    .line 536
    .local v2, mNewsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    if-eqz v0, :cond_4d

    .line 537
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v5, v5, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsRows(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 539
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4d

    .line 540
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 541
    .local v3, news:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    iget-object v5, v3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    if-eqz v5, :cond_27

    iget-object v5, v3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-nez v5, :cond_27

    .line 542
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v6, v6, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getNewsImageDataToService(Ljava/lang/String;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)V

    goto :goto_27

    .line 547
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #news:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_4d
    return-void
.end method

.method public setTopNews(ILjava/lang/String;)V
    .registers 8
    .parameter "index"
    .parameter "xmlUrl"

    .prologue
    .line 457
    new-instance v2, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 458
    .local v2, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v0

    .line 459
    .local v0, headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    const/4 v1, 0x0

    .line 461
    .local v1, i:I
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_21

    .line 462
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v4, v4, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 467
    :cond_21
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v3

    .line 468
    .local v3, tabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->focusCurrentTab(I)V

    .line 470
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    if-nez v4, :cond_32

    .line 471
    const/4 v4, 0x1

    invoke-direct {p0, p2, v4}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->fillData(Ljava/lang/String;Z)V

    .line 474
    :cond_32
    if-eqz p1, :cond_39

    .line 475
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 477
    :cond_39
    iput p1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->m_firstVisibleItem:I

    .line 478
    return-void

    .line 461
    .end local v3           #tabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public setTwTabHost(I)Ljava/util/ArrayList;
    .registers 9
    .parameter "tabNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v2, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 120
    .local v2, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v0

    .line 122
    .local v0, headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v4

    .line 123
    .local v4, tabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_1a

    .line 124
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->removeAllViews()V

    .line 128
    :cond_1a
    if-eqz v0, :cond_5d

    .line 130
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_4a

    .line 131
    iget-object v6, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v5, v5, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v3

    .line 132
    .local v3, spec:Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v5, v5, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    .line 133
    const v5, 0x7f0c0003

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(I)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    .line 134
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v5, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 138
    .end local v3           #spec:Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    :cond_4a
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    new-instance v6, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$1;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain$1;-><init>(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;)V

    .line 150
    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->focusCurrentTab(I)V

    .line 151
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 157
    .end local v1           #i:I
    :goto_5c
    return-object v0

    .line 154
    :cond_5d
    const-string v5, ""

    const-string v6, "headList is Null !!!!"

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method

.method public updateData(IZ)V
    .registers 5
    .parameter "tabNum"
    .parameter "noImage"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->setTwTabHost(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 382
    .local v0, headList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 383
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->fillData(Ljava/lang/String;Z)V

    .line 386
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->checkNoData()V

    .line 387
    return-void
.end method

.method public updateImageData(Ljava/lang/String;)V
    .registers 8
    .parameter "xmlUrl"

    .prologue
    const/4 v5, 0x0

    .line 390
    const v3, 0x7f0c0003

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    .line 391
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 392
    new-instance v2, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 393
    .local v2, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v2, p1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsRows(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 395
    .local v0, APNewsListTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    if-eqz v0, :cond_4b

    .line 396
    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mStartNewsData:I

    .local v1, i:I
    :goto_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3a

    .line 397
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 398
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 401
    :cond_3a
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsItemAdapter:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;

    if-eqz v3, :cond_47

    .line 402
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->mAPNewsItemAdapter:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->notifyDataSetChanged()V

    .line 411
    .end local v1           #i:I
    :goto_43
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->checkNoData()V

    .line 412
    return-void

    .line 405
    .restart local v1       #i:I
    :cond_47
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->fillData(Ljava/lang/String;Z)V

    goto :goto_43

    .line 408
    .end local v1           #i:I
    :cond_4b
    const-string v3, ""

    const-string v4, "APNewsListTemp is Null::::::::::::::::::"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

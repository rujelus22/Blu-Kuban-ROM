.class public Lcom/vlingo/client/car/test/CarTTSTesterItem2;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "CarTTSTesterItem2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;
    }
.end annotation


# instance fields
.field private items:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/test/CarTTSTesterItem2;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->items:Ljava/util/Vector;

    return-object v0
.end method

.method private loadForCache(Lcom/vlingo/client/core/tts/TTSFileCache;)V
    .registers 13
    .parameter "cache"

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSFileCache;->getFiles()[Ljava/io/File;

    move-result-object v2

    .line 56
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_9

    array-length v6, v2

    if-nez v6, :cond_a

    .line 101
    :cond_9
    :goto_9
    return-void

    .line 58
    :cond_a
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_d
    if-ge v3, v4, :cond_1f

    aget-object v1, v0, v3

    .line 59
    .local v1, f:Ljava/io/File;
    iget-object v6, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->items:Ljava/util/Vector;

    new-instance v7, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;

    const/4 v8, 0x0

    invoke-direct {v7, v1, p1, v8}, Lcom/vlingo/client/car/test/CarTTSTesterItem2$ItemWrapper;-><init>(Ljava/io/File;Lcom/vlingo/client/core/tts/TTSFileCache;Lcom/vlingo/client/car/test/CarTTSTesterItem2$1;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 62
    .end local v1           #f:Ljava/io/File;
    :cond_1f
    iget-object v6, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->textView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->items:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " items"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v5, 0x7f03003f

    .line 65
    .local v5, resID:I
    iget-object v6, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->listView:Landroid/widget/ListView;

    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f00d8

    iget-object v10, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->items:Ljava/util/Vector;

    invoke-direct {v7, v8, v5, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v6, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->listView:Landroid/widget/ListView;

    new-instance v7, Lcom/vlingo/client/car/test/CarTTSTesterItem2$1;

    invoke-direct {v7, p0}, Lcom/vlingo/client/car/test/CarTTSTesterItem2$1;-><init>(Lcom/vlingo/client/car/test/CarTTSTesterItem2;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_9
.end method

.method private loadSync()V
    .registers 2

    .prologue
    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->items:Ljava/util/Vector;

    .line 105
    invoke-virtual {p0}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSFileCache;->persistentCacheManager(Landroid/content/Context;)Lcom/vlingo/client/core/tts/TTSFileCache;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->loadForCache(Lcom/vlingo/client/core/tts/TTSFileCache;)V

    .line 106
    invoke-virtual {p0}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSFileCache;->genericCacheManager(Landroid/content/Context;)Lcom/vlingo/client/core/tts/TTSFileCache;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->loadForCache(Lcom/vlingo/client/core/tts/TTSFileCache;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getFieldID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    const-string v0, "vp_car_main_generic"

    return-object v0
.end method

.method public onDelegateAttached()V
    .registers 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 117
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 49
    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->textView:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->listView:Landroid/widget/ListView;

    .line 51
    invoke-direct {p0}, Lcom/vlingo/client/car/test/CarTTSTesterItem2;->loadSync()V

    .line 52
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 123
    return-void
.end method

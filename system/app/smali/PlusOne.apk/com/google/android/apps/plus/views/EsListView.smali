.class public Lcom/google/android/apps/plus/views/EsListView;
.super Landroid/widget/ListView;
.source "EsListView.java"


# instance fields
.field private final mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/google/android/apps/plus/views/EsListView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/EsListView$1;-><init>(Lcom/google/android/apps/plus/views/EsListView;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EsListView;->mObserver:Landroid/database/DataSetObserver;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/views/EsListView;->wrapContextIfNeeded(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/google/android/apps/plus/views/EsListView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/EsListView$1;-><init>(Lcom/google/android/apps/plus/views/EsListView;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EsListView;->mObserver:Landroid/database/DataSetObserver;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/views/EsListView;->wrapContextIfNeeded(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Lcom/google/android/apps/plus/views/EsListView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/EsListView$1;-><init>(Lcom/google/android/apps/plus/views/EsListView;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EsListView;->mObserver:Landroid/database/DataSetObserver;

    .line 30
    return-void
.end method

.method private static wrapContextIfNeeded(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/Context;
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    if-nez p1, :cond_3

    .line 46
    .end local p0
    :cond_2
    :goto_2
    return-object p0

    .line 42
    .restart local p0
    :cond_3
    const/4 v1, 0x0

    const-string v2, "theme"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, themeResourceId:I
    if-eqz v0, :cond_2

    .line 44
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v1

    goto :goto_2
.end method


# virtual methods
.method protected adjustFastScroll()V
    .registers 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsListView;->isFastScrollEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 94
    :goto_6
    return-void

    .line 87
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EsListView;->setFastScrollEnabled(Z)V

    .line 88
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EsListView;->setFastScrollEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsListView;->getWidth()I

    move-result v1

    .line 92
    .local v1, width:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsListView;->getHeight()I

    move-result v0

    .line 93
    .local v0, height:I
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/google/android/apps/plus/views/EsListView;->onSizeChanged(IIII)V

    goto :goto_6
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/EsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .parameter "adapter"

    .prologue
    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_a

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    :goto_9
    return-void

    .line 69
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 70
    .local v0, oldAdapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_15

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EsListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 74
    :cond_15
    if-eqz p1, :cond_1c

    .line 75
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EsListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 78
    :cond_1c
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_9
.end method

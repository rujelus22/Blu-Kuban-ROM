.class public Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;
.super Landroid/widget/LinearLayout;
.source "WidgetAccessbilityLayout.java"


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mIsEmpty:Z

.field private mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v0, "WidgetAccessbilityLayout"

    const-string v1, "WidgetAccessbilityLayout(Context context)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContentDescription:Ljava/lang/CharSequence;

    .line 23
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mIsEmpty:Z

    .line 35
    const-string v0, "WidgetAccessbilityLayout"

    const-string v1, "WidgetAccessbilityLayout(Context context, AttributeSet attrs)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private setContentDescription()V
    .registers 9

    .prologue
    .line 129
    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;

    if-eqz v4, :cond_98

    .line 131
    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;

    .line 133
    .local v0, adapter:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;
    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->getFirstVisiblePosition()I

    move-result v2

    .line 134
    .local v2, firstViewPos:I
    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->getLastVisiblePosition()I

    move-result v3

    .line 135
    .local v3, lastViewPos:I
    const-string v4, "WidgetAccessbilityLayout"

    const-string v5, "setContentDescription"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ListView count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v4, "WidgetAccessbilityLayout"

    const-string v5, "setContentDescription"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adapter count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v4, "WidgetAccessbilityLayout"

    const-string v5, "setContentDescription"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firstViewPos = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v4, "WidgetAccessbilityLayout"

    const-string v5, "setContentDescription"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastViewPos = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-eqz v0, :cond_98

    .line 144
    invoke-virtual {v0, v2, v3}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;->getContentDescription(II)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, contentDescription:Ljava/lang/String;
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContentDescription:Ljava/lang/CharSequence;

    .line 149
    .end local v0           #adapter:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;
    .end local v1           #contentDescription:Ljava/lang/String;
    .end local v2           #firstViewPos:I
    .end local v3           #lastViewPos:I
    :cond_98
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    .line 86
    const-string v5, "WidgetAccessbilityLayout"

    const-string v6, "dispatchPopulateAccessibilityEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v5, "WidgetAccessbilityLayout"

    const-string v6, "dispatchPopulateAccessibilityEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsEmpty = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mIsEmpty:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    .line 90
    .local v3, ret:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    .line 91
    .local v4, textList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 92
    .local v0, beforeText:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 94
    .local v1, contentDescription:Ljava/lang/CharSequence;
    const-string v5, "WidgetAccessbilityLayout"

    const-string v6, "dispatchPopulateAccessibilityEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "textList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v5, "WidgetAccessbilityLayout"

    const-string v6, "dispatchPopulateAccessibilityEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beforeText = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v5, "WidgetAccessbilityLayout"

    const-string v6, "dispatchPopulateAccessibilityEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentDescription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v5, "WidgetAccessbilityLayout"

    const-string v6, "dispatchPopulateAccessibilityEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->setContentDescription()V

    .line 101
    const-string v5, "WidgetAccessbilityLayout"

    const-string v6, "dispatchPopulateAccessibilityEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mContentDescription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f07

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, defaultText:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mIsEmpty:Z

    if-eqz v5, :cond_e2

    .line 106
    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 120
    :goto_e1
    return v3

    .line 108
    :cond_e2
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 109
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    if-eqz v1, :cond_ed

    .line 111
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_ed
    iget-object v5, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v5, :cond_f6

    .line 114
    iget-object v5, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_f6
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 52
    const-string v3, "WidgetAccessbilityLayout"

    const-string v4, "onKeyDown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  event = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "WidgetAccessbilityLayout"

    const-string v4, "onKeyDown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event.getAction() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "WidgetAccessbilityLayout"

    const-string v4, "onKeyDown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event.getKeyCode() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 56
    .local v0, action:I
    packed-switch v0, :pswitch_data_be

    .line 79
    :cond_67
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 80
    .local v2, ret:Z
    const-string v3, "WidgetAccessbilityLayout"

    const-string v4, "onKeyDown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v2           #ret:Z
    :goto_85
    return v2

    .line 58
    :pswitch_86
    const/16 v3, 0x42

    if-eq p1, v3, :cond_8e

    const/16 v3, 0x17

    if-ne p1, v3, :cond_67

    .line 60
    :cond_8e
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mIsEmpty:Z

    if-eqz v3, :cond_a0

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.socialhub.AddAccount"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    :goto_9e
    const/4 v2, 0x1

    goto :goto_85

    .line 64
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v3, "com.sec.android.socialhub"

    const-string v4, "com.sec.android.socialhub.activity.SocialHubMainActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/high16 v3, 0x3400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9e

    .line 56
    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_86
    .end packed-switch
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "contentDescription"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mContentDescription:Ljava/lang/CharSequence;

    .line 125
    return-void
.end method

.method public setEmpty(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mIsEmpty:Z

    .line 153
    return-void
.end method

.method public setListView(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)V
    .registers 2
    .parameter "listView"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/WidgetAccessbilityLayout;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    .line 46
    return-void
.end method

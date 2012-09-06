.class public Lcom/dropbox/android/widget/SweetListView;
.super Landroid/widget/ListView;
.source "panda.py"


# instance fields
.field a:Landroid/widget/AdapterView$OnItemClickListener;

.field b:Landroid/widget/AdapterView$OnItemLongClickListener;

.field c:I

.field d:I

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/Object;

.field private g:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/dropbox/android/widget/SweetListView;->c:I

    .line 22
    iput-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->e:Ljava/lang/reflect/Method;

    .line 23
    iput-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->f:Ljava/lang/Object;

    .line 28
    iput v0, p0, Lcom/dropbox/android/widget/SweetListView;->d:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/dropbox/android/widget/SweetListView;->c:I

    .line 22
    iput-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->e:Ljava/lang/reflect/Method;

    .line 23
    iput-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->f:Ljava/lang/Object;

    .line 28
    iput v0, p0, Lcom/dropbox/android/widget/SweetListView;->d:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v0, p0, Lcom/dropbox/android/widget/SweetListView;->c:I

    .line 22
    iput-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->e:Ljava/lang/reflect/Method;

    .line 23
    iput-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->f:Ljava/lang/Object;

    .line 28
    iput v0, p0, Lcom/dropbox/android/widget/SweetListView;->d:I

    .line 32
    return-void
.end method

.method private a()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->f:Ljava/lang/Object;

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->e:Ljava/lang/reflect/Method;

    if-nez v1, :cond_4c

    .line 133
    :try_start_9
    const-string v1, "android.widget.AbsListView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    .line 135
    const/4 v1, 0x0

    .line 136
    array-length v5, v4

    move v2, v0

    :goto_16
    if-ge v2, v5, :cond_2b

    aget-object v0, v4, v2

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.widget.AbsListView$RecycleBin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 136
    :goto_26
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_16

    .line 141
    :cond_2b
    const-string v0, "mRecycler"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 142
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 144
    const-string v2, "pruneScrapViews"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->e:Ljava/lang/reflect/Method;

    .line 145
    iget-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->e:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/SweetListView;->f:Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4c} :catch_57

    .line 154
    :cond_4c
    :goto_4c
    :try_start_4c
    iget-object v0, p0, Lcom/dropbox/android/widget/SweetListView;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dropbox/android/widget/SweetListView;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_56} :catch_5c

    .line 158
    :goto_56
    return-void

    .line 147
    :catch_57
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 155
    :catch_5c
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    :cond_61
    move-object v0, v1

    goto :goto_26
.end method


# virtual methods
.method protected final a(I)V
    .registers 7
    .parameter

    .prologue
    .line 162
    :try_start_0
    const-class v0, Landroid/widget/ListView;

    .line 163
    const-string v1, "setSelectionInt"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 165
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 169
    :goto_21
    return-void

    .line 166
    :catch_22
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method protected detachViewFromParent(I)V
    .registers 2
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/ListView;->detachViewFromParent(I)V

    .line 88
    invoke-direct {p0}, Lcom/dropbox/android/widget/SweetListView;->a()V

    .line 89
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/dropbox/android/widget/SweetListView;->a()V

    .line 95
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->detachViewsFromParent(II)V

    .line 82
    invoke-direct {p0}, Lcom/dropbox/android/widget/SweetListView;->a()V

    .line 83
    return-void
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dropbox/android/widget/SweetListView;->g:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method protected layoutChildren()V
    .registers 3

    .prologue
    .line 65
    iget v0, p0, Lcom/dropbox/android/widget/SweetListView;->c:I

    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_31

    .line 66
    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/aq;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/aq;->b(I)V

    .line 67
    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/widget/SweetListView;->c:I

    .line 68
    iget v0, p0, Lcom/dropbox/android/widget/SweetListView;->d:I

    if-eqz v0, :cond_31

    .line 69
    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/aq;

    iget v1, p0, Lcom/dropbox/android/widget/SweetListView;->d:I

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/aq;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/SweetListView;->a(I)V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/widget/SweetListView;->d:I

    .line 73
    :cond_31
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 74
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter

    .prologue
    .line 14
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/SweetListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter

    .prologue
    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SweetListView requires a SweetListAdapter. Call setSweetAdapter instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContextMenuInfo(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/dropbox/android/widget/SweetListView;->g:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 181
    return-void
.end method

.method public setDelayedPositionFromTop(I)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput p1, p0, Lcom/dropbox/android/widget/SweetListView;->d:I

    .line 175
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/dropbox/android/widget/SweetListView;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 105
    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 106
    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/aq;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/widget/aq;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    :cond_11
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dropbox/android/widget/SweetListView;->b:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 117
    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 118
    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/aq;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/widget/aq;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 120
    :cond_11
    return-void
.end method

.method public setSweetAdapter(Lcom/dropbox/android/widget/aq;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 50
    invoke-virtual {p0}, Lcom/dropbox/android/widget/SweetListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/aq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/aq;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    :cond_10
    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/dropbox/android/widget/SweetListView;->a:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1b

    .line 54
    iget-object v0, p0, Lcom/dropbox/android/widget/SweetListView;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Lcom/dropbox/android/widget/aq;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    :cond_1b
    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/dropbox/android/widget/SweetListView;->b:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_26

    .line 57
    iget-object v0, p0, Lcom/dropbox/android/widget/SweetListView;->b:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Lcom/dropbox/android/widget/aq;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 60
    :cond_26
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method

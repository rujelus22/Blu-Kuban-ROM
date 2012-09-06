.class public abstract Lcom/google/android/feeds/ContentDecorator;
.super Ljava/lang/Object;
.source "ContentDecorator.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field private static SUPPORT_CURSOR_ADAPTER:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static SUPPORT_GET_CURSOR:Ljava/lang/reflect/Method;


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 53
    :try_start_1
    const-string v0, "android.support.v4.widget.CursorAdapter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/feeds/ContentDecorator;->SUPPORT_CURSOR_ADAPTER:Ljava/lang/Class;

    .line 54
    sget-object v0, Lcom/google/android/feeds/ContentDecorator;->SUPPORT_CURSOR_ADAPTER:Ljava/lang/Class;

    const-string v1, "getCursor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/feeds/ContentDecorator;->SUPPORT_GET_CURSOR:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_17

    .line 60
    :goto_16
    return-void

    .line 57
    :catch_17
    move-exception v0

    sput-object v3, Lcom/google/android/feeds/ContentDecorator;->SUPPORT_CURSOR_ADAPTER:Ljava/lang/Class;

    .line 58
    sput-object v3, Lcom/google/android/feeds/ContentDecorator;->SUPPORT_GET_CURSOR:Ljava/lang/reflect/Method;

    goto :goto_16
.end method

.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-nez p1, :cond_b

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_b
    iput-object p1, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    .line 88
    return-void
.end method

.method private getCursorExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_18

    .line 97
    iget-object p0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    .end local p0
    check-cast p0, Landroid/widget/CursorAdapter;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 103
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_14
    return-object v1

    .line 98
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_15
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_14

    .line 99
    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local p0
    :cond_18
    iget-object v1, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-static {v1}, Lcom/google/android/feeds/ContentDecorator;->isInstanceOfSupportCursorAdapter(Landroid/widget/ListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 100
    iget-object v1, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-static {v1}, Lcom/google/android/feeds/ContentDecorator;->supportGetCursor(Landroid/widget/ListAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 101
    .restart local v0       #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_14

    :cond_2d
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_14

    .line 103
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_30
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_14
.end method

.method private static getLayoutInflater(Landroid/view/ViewGroup;)Landroid/view/LayoutInflater;
    .registers 3
    .parameter "parent"

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 238
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1
.end method

.method private hasError()Z
    .registers 3

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/feeds/ContentDecorator;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.feeds.cursor.extra.ERROR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasMore()Z
    .registers 3

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/feeds/ContentDecorator;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.feeds.cursor.extra.MORE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isInstanceOfSupportCursorAdapter(Landroid/widget/ListAdapter;)Z
    .registers 2
    .parameter "adapter"

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/feeds/ContentDecorator;->SUPPORT_CURSOR_ADAPTER:Ljava/lang/Class;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/feeds/ContentDecorator;->SUPPORT_CURSOR_ADAPTER:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isItem(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static supportGetCursor(Landroid/widget/ListAdapter;)Landroid/database/Cursor;
    .registers 4
    .parameter "adapter"

    .prologue
    .line 75
    :try_start_0
    sget-object v1, Lcom/google/android/feeds/ContentDecorator;->SUPPORT_GET_CURSOR:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 76
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 77
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Incompatible android.support.v4.widget.CursorAdapter"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .registers 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 118
    .local v0, count:I
    if-eqz v0, :cond_16

    .line 119
    invoke-direct {p0}, Lcom/google/android/feeds/ContentDecorator;->hasError()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0}, Lcom/google/android/feeds/ContentDecorator;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 120
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_16
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/feeds/ContentDecorator;->isItem(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 184
    iget-object v0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 186
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/google/android/feeds/ContentDecorator;->isItem(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    iget-object v0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 195
    :goto_c
    return-wide v0

    :cond_d
    const-wide/high16 v0, -0x8000

    goto :goto_c
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/google/android/feeds/ContentDecorator;->isItem(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 131
    iget-object v0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 133
    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/google/android/feeds/ContentDecorator;->isItem(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 149
    iget-object v1, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 155
    :goto_c
    return-object v1

    .line 150
    :cond_d
    invoke-direct {p0}, Lcom/google/android/feeds/ContentDecorator;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 151
    invoke-static {p3}, Lcom/google/android/feeds/ContentDecorator;->getLayoutInflater(Landroid/view/ViewGroup;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 152
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0, v0, p3}, Lcom/google/android/feeds/ContentDecorator;->newErrorView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_c

    .line 153
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/feeds/ContentDecorator;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 154
    invoke-static {p3}, Lcom/google/android/feeds/ContentDecorator;->getLayoutInflater(Landroid/view/ViewGroup;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 155
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0, v0, p3}, Lcom/google/android/feeds/ContentDecorator;->newLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_c

    .line 157
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_2b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/feeds/ContentDecorator;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/feeds/ContentDecorator;->isItem(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 230
    iget-object v0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    .line 232
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected abstract newErrorView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract newLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 213
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/feeds/ContentDecorator;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 218
    return-void
.end method

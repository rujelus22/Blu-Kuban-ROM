.class public final Lcom/google/android/apps/reader/widget/ItemViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "ItemViewFragment.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final PAUSE_WEBVIEW:Z = false

.field private static final STATE_VALUES:Ljava/lang/String; = "reader:values"


# instance fields
.field private mContentValues:Landroid/content/ContentValues;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->PAUSE_WEBVIEW:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .registers 2
    .parameter "values"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mContentValues:Landroid/content/ContentValues;

    .line 50
    return-void
.end method

.method private static contentValuesToCursorRow([Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 126
    array-length v2, p0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, p0, v3

    .line 127
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 129
    :cond_19
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 130
    return-object v0
.end method

.method private static invoke(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 114
    :goto_11
    return-void

    .line 111
    :catch_12
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method


# virtual methods
.method public getItemId()J
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 61
    if-eqz p3, :cond_c

    .line 62
    const-string v2, "reader:values"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    iput-object v2, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mContentValues:Landroid/content/ContentValues;

    .line 64
    :cond_c
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    invoke-static {p2}, Lcom/google/android/apps/reader/widget/ItemViewFactory;->newView(Landroid/view/ViewGroup;)Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 66
    sget-object v2, Lcom/google/android/apps/reader/widget/ItemQuery;->PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Lcom/google/android/apps/reader/widget/ItemViewFragment;->contentValuesToCursorRow([Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v1

    .line 67
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/reader/widget/ItemViewBinder;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 68
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    return-object v2
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 97
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 98
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 87
    sget-boolean v0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->PAUSE_WEBVIEW:Z

    if-eqz v0, :cond_b

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/widget/ItemViewFragment;->invoke(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :cond_b
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 91
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 80
    sget-boolean v0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->PAUSE_WEBVIEW:Z

    if-eqz v0, :cond_e

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/widget/ItemViewFragment;->invoke(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :cond_e
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "reader:values"

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 141
    :cond_a
    return-void
.end method

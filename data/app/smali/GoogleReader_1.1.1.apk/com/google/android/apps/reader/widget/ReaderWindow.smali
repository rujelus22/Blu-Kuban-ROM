.class public Lcom/google/android/apps/reader/widget/ReaderWindow;
.super Ljava/lang/Object;
.source "ReaderWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;
    }
.end annotation


# static fields
.field public static final ANDROID_R_ID_HOME:I = 0x102002c

#the value of this static final field might be set in the static constructor
.field private static final HAS_ACTION_BAR:Z = false

.field private static final HONEYCOMB:I = 0xb

#the value of this static final field might be set in the static constructor
.field private static final SDK:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "reader_window"


# instance fields
.field private final mActiveLoaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Landroid/app/Activity;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/apps/reader/widget/ReaderWindow;->SDK:I

    .line 57
    sget v0, Lcom/google/android/apps/reader/widget/ReaderWindow;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_f
    sput-boolean v0, Lcom/google/android/apps/reader/widget/ReaderWindow;->HAS_ACTION_BAR:Z

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mActiveLoaders:Ljava/util/Set;

    .line 72
    if-nez p1, :cond_12

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_12
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mActivity:Landroid/app/Activity;

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mWindow:Landroid/view/Window;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/reader/widget/ReaderWindow;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mActiveLoaders:Ljava/util/Set;

    return-object v0
.end method

.method private static clearAnimation(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 188
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/android/apps/reader/widget/ReaderWindow;
    .registers 2
    .parameter "context"

    .prologue
    .line 88
    const-string v0, "reader_window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/reader/widget/ReaderWindow;

    return-object p0
.end method

.method public static invalidateOptionsMenu(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4
    .parameter

    .prologue
    .line 192
    :try_start_0
    const-class v0, Landroid/support/v4/app/FragmentActivity;

    const-string v1, "supportInvalidateOptionsMenu"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 194
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    .line 198
    :goto_15
    return-void

    .line 195
    :catch_16
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15
.end method

.method public static setProgress(Landroid/app/Activity;I)V
    .registers 6
    .parameter "activity"
    .parameter "value"

    .prologue
    .line 131
    sget v2, Lcom/google/android/apps/reader/widget/ReaderWindow;->SDK:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_15

    .line 132
    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/reader/widget/ProgressView;

    .line 133
    .local v1, progressView:Lcom/google/android/apps/reader/widget/ProgressView;
    if-eqz v1, :cond_14

    .line 134
    invoke-static {v1, p1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setProgress(Lcom/google/android/apps/reader/widget/ProgressView;I)V

    .line 145
    .end local v1           #progressView:Lcom/google/android/apps/reader/widget/ProgressView;
    :cond_14
    :goto_14
    return-void

    .line 137
    :cond_15
    const v2, 0x7f0b0002

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 139
    .local v0, progressBar:Landroid/widget/ProgressBar;
    if-eqz v0, :cond_24

    .line 140
    invoke-static {v0, p1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setProgress(Landroid/widget/ProgressBar;I)V

    goto :goto_14

    .line 142
    :cond_24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/view/Window;->setFeatureInt(II)V

    goto :goto_14
.end method

.method private static setProgress(Landroid/widget/ProgressBar;I)V
    .registers 5
    .parameter "progressBar"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    if-eq p1, v1, :cond_14

    const/4 v1, 0x1

    move v0, v1

    .line 166
    .local v0, changed:Z
    :goto_9
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 168
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_16

    .line 169
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    :goto_13
    return-void

    .end local v0           #changed:Z
    :cond_14
    move v0, v2

    .line 165
    goto :goto_9

    .line 171
    .restart local v0       #changed:Z
    :cond_16
    if-eqz v0, :cond_24

    .line 172
    const v1, 0x10a0001

    invoke-static {p0, v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->startAnimation(Landroid/view/View;I)V

    .line 176
    :goto_1e
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_13

    .line 174
    :cond_24
    invoke-static {p0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->clearAnimation(Landroid/view/View;)V

    goto :goto_1e
.end method

.method private static setProgress(Lcom/google/android/apps/reader/widget/ProgressView;I)V
    .registers 5
    .parameter "progressView"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ProgressView;->getProgress()I

    move-result v1

    if-eq p1, v1, :cond_17

    const/4 v1, 0x1

    move v0, v1

    .line 149
    .local v0, changed:Z
    :goto_9
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/ProgressView;->setProgress(I)V

    .line 151
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_19

    .line 152
    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/widget/ProgressView;->setVisibility(I)V

    .line 161
    :goto_13
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/ProgressView;->setProgress(I)V

    .line 162
    return-void

    .end local v0           #changed:Z
    :cond_17
    move v0, v2

    .line 148
    goto :goto_9

    .line 154
    .restart local v0       #changed:Z
    :cond_19
    if-eqz v0, :cond_27

    .line 155
    const v1, 0x10a0001

    invoke-static {p0, v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->startAnimation(Landroid/view/View;I)V

    .line 159
    :goto_21
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/ProgressView;->setVisibility(I)V

    goto :goto_13

    .line 157
    :cond_27
    invoke-static {p0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->clearAnimation(Landroid/view/View;)V

    goto :goto_21
.end method

.method private static startAnimation(Landroid/view/View;I)V
    .registers 4
    .parameter "view"
    .parameter "resId"

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 183
    .local v1, fadeOut:Landroid/view/animation/Animation;
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 184
    return-void
.end method


# virtual methods
.method public observe(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .registers 4
    .parameter "fragment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, callbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Landroid/database/Cursor;>;"
    new-instance v0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;-><init>(Lcom/google/android/apps/reader/widget/ReaderWindow;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method public requestCustomTitle()V
    .registers 3

    .prologue
    .line 96
    sget-boolean v0, Lcom/google/android/apps/reader/widget/ReaderWindow;->HAS_ACTION_BAR:Z

    if-nez v0, :cond_a

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mWindow:Landroid/view/Window;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 99
    :cond_a
    return-void
.end method

.method public setCustomTitleLayout(I)V
    .registers 4
    .parameter "layout"

    .prologue
    .line 105
    sget-boolean v0, Lcom/google/android/apps/reader/widget/ReaderWindow;->HAS_ACTION_BAR:Z

    if-nez v0, :cond_a

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mWindow:Landroid/view/Window;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 108
    :cond_a
    return-void
.end method

.method public setProgress(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setProgress(Landroid/app/Activity;I)V

    .line 128
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "title"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mWindow:Landroid/view/Window;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    .local v0, titleView:Landroid/widget/TextView;
    if-eqz v0, :cond_11

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_10
    return-void

    .line 122
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method updateIndeterminateProgress()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 202
    iget-object v4, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mActiveLoaders:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    move v3, v4

    .line 206
    .local v3, visible:Z
    :goto_b
    iget-object v4, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mWindow:Landroid/view/Window;

    const v5, 0x7f0b0001

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, progress:Landroid/view/View;
    if-eqz v1, :cond_22

    .line 208
    if-eqz v3, :cond_1f

    move v4, v6

    :goto_19
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :goto_1c
    return-void

    .end local v1           #progress:Landroid/view/View;
    .end local v3           #visible:Z
    :cond_1d
    move v3, v6

    .line 202
    goto :goto_b

    .line 208
    .restart local v1       #progress:Landroid/view/View;
    .restart local v3       #visible:Z
    :cond_1f
    const/16 v4, 0x8

    goto :goto_19

    .line 210
    :cond_22
    const/4 v0, 0x5

    .line 211
    .local v0, featureId:I
    if-eqz v3, :cond_2d

    const/4 v4, -0x1

    move v2, v4

    .line 212
    .local v2, value:I
    :goto_27
    iget-object v4, p0, Lcom/google/android/apps/reader/widget/ReaderWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v0, v2}, Landroid/view/Window;->setFeatureInt(II)V

    goto :goto_1c

    .line 211
    .end local v2           #value:I
    :cond_2d
    const/4 v4, -0x2

    move v2, v4

    goto :goto_27
.end method

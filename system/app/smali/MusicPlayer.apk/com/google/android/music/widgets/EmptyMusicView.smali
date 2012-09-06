.class public Lcom/google/android/music/widgets/EmptyMusicView;
.super Landroid/widget/LinearLayout;
.source "EmptyMusicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/widgets/EmptyMusicView$2;,
        Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;
    }
.end annotation


# instance fields
.field private mAllEmptyViews:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllLearnMoreButtons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllLearnMoreText:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

.field private mEmptyStateFlags:I

.field private mNoLocalMusicView:Landroid/view/View;

.field private mNoMusicAddMusicTitle:Landroid/view/View;

.field private mNoMusicScanning:Landroid/view/View;

.field private mNoMusicShop:Landroid/view/View;

.field private mNoMusicStreamingDisabledView:Landroid/view/View;

.field private mNoMusicStreamingEnabledView:Landroid/view/View;

.field private mNoMusicSyncing:Landroid/view/View;

.field private mNoMusicUpload:Landroid/view/View;

.field private mNoMusicUsbCopy:Landroid/view/View;

.field private mOnEmptyStateChangedRunnable:Ljava/lang/Runnable;

.field private mRunWhenAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 54
    iput-boolean v1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAttached:Z

    .line 55
    iput-boolean v1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mRunWhenAttached:Z

    .line 217
    new-instance v0, Lcom/google/android/music/widgets/EmptyMusicView$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/widgets/EmptyMusicView$1;-><init>(Lcom/google/android/music/widgets/EmptyMusicView;)V

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mOnEmptyStateChangedRunnable:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/widgets/EmptyMusicView;)Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingDisabledView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/widgets/EmptyMusicView;)Ljava/util/Collection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreButtons:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/widgets/EmptyMusicView;)Ljava/util/Collection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreText:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/widgets/EmptyMusicView;)Ljava/util/Collection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllEmptyViews:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicSyncing:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoLocalMusicView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicScanning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicAddMusicTitle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/widgets/EmptyMusicView;Landroid/view/View;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/widgets/EmptyMusicView;->setVisibilityFor(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    return-object v0
.end method

.method private launchLink(IZ)V
    .registers 9
    .parameter "id"
    .parameter "isLocalized"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/android/music/widgets/EmptyMusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_3e

    .line 275
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, url:Ljava/lang/String;
    :goto_1c
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v1, i:Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 281
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    const/high16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void

    .line 277
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #url:Ljava/lang/String;
    :cond_3e
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto :goto_1c
.end method

.method private onEmptyStateChangedAsync()V
    .registers 2

    .prologue
    .line 208
    monitor-enter p0

    .line 209
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAttached:Z

    if-eqz v0, :cond_c

    .line 210
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mOnEmptyStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->post(Ljava/lang/Runnable;)Z

    .line 214
    :goto_a
    monitor-exit p0

    .line 215
    return-void

    .line 212
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mRunWhenAttached:Z

    goto :goto_a

    .line 214
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private setVisibilityFor(Landroid/view/View;I)V
    .registers 4
    .parameter "view"
    .parameter "flag"

    .prologue
    .line 204
    invoke-virtual {p0, p2}, Lcom/google/android/music/widgets/EmptyMusicView;->isEmptyState(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    return-void

    .line 204
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method


# virtual methods
.method public isEmptyState(I)Z
    .registers 3
    .parameter "flags"

    .prologue
    .line 200
    iget v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mEmptyStateFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 151
    monitor-enter p0

    .line 152
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAttached:Z

    .line 153
    iget-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mRunWhenAttached:Z

    if-eqz v0, :cond_13

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mRunWhenAttached:Z

    .line 155
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mOnEmptyStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_13
    monitor-exit p0

    .line 158
    return-void

    .line 157
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_34

    .line 307
    :goto_8
    return-void

    .line 291
    :sswitch_9
    const v1, 0x7f0d004f

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->launchLink(IZ)V

    goto :goto_8

    .line 295
    :sswitch_10
    const v1, 0x7f0d0052

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->launchLink(IZ)V

    goto :goto_8

    .line 298
    :sswitch_18
    const v1, 0x7f0d0050

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->launchLink(IZ)V

    goto :goto_8

    .line 301
    :sswitch_1f
    invoke-virtual {p0}, Lcom/google/android/music/widgets/EmptyMusicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 303
    .local v0, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    iget-object v1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/dl/IntentConstants;->getMusicStoreIntent(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 304
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    goto :goto_8

    .line 288
    :sswitch_data_34
    .sparse-switch
        0x7f100096 -> :sswitch_18
        0x7f10009c -> :sswitch_1f
        0x7f1000a2 -> :sswitch_9
        0x7f1000a7 -> :sswitch_10
        0x7f1000af -> :sswitch_10
        0x7f1000b3 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 163
    monitor-enter p0

    .line 164
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAttached:Z

    .line 165
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mOnEmptyStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 166
    monitor-exit p0

    .line 167
    return-void

    .line 166
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected onFinishInflate()V
    .registers 12

    .prologue
    const v10, 0x7f1000b3

    const v9, 0x7f1000af

    const v8, 0x7f1000a2

    const v7, 0x7f10009c

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 78
    const v2, 0x7f1000a5

    invoke-virtual {p0, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    .line 79
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    if-nez v2, :cond_24

    .line 80
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Could not find streaming enabled view"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_24
    const v2, 0x7f1000a0

    invoke-virtual {p0, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingDisabledView:Landroid/view/View;

    .line 84
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingDisabledView:Landroid/view/View;

    if-nez v2, :cond_39

    .line 85
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Could not find streaming disabled view"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_39
    const v2, 0x7f100092

    invoke-virtual {p0, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoLocalMusicView:Landroid/view/View;

    .line 89
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoLocalMusicView:Landroid/view/View;

    if-nez v2, :cond_4e

    .line 90
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Could not find local music view"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_4e
    const v2, 0x7f1000ae

    invoke-virtual {p0, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicSyncing:Landroid/view/View;

    .line 94
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicSyncing:Landroid/view/View;

    if-nez v2, :cond_63

    .line 95
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Could not find the no music/syncing view"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_63
    const v2, 0x7f10009a

    invoke-virtual {p0, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicScanning:Landroid/view/View;

    .line 99
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicScanning:Landroid/view/View;

    if-nez v2, :cond_78

    .line 100
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Could not find the no music/scanning view"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_78
    const v2, 0x7f100098

    invoke-virtual {p0, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicAddMusicTitle:Landroid/view/View;

    .line 104
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicAddMusicTitle:Landroid/view/View;

    if-nez v2, :cond_8d

    .line 105
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Could not find the no music/add music title view"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_8d
    invoke-virtual {p0, v7}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    .line 109
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    new-instance v3, Lcom/google/android/music/FadingColorDrawable;

    iget-object v4, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    if-nez v2, :cond_ad

    .line 111
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Could not find the no music/shop view"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_ad
    invoke-virtual {p0, v9}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    .line 115
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    new-instance v3, Lcom/google/android/music/FadingColorDrawable;

    iget-object v4, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    if-nez v2, :cond_cd

    .line 117
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Could not find the no music/upload view"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_cd
    invoke-virtual {p0, v10}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    .line 121
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    new-instance v3, Lcom/google/android/music/FadingColorDrawable;

    iget-object v4, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    if-nez v2, :cond_ed

    .line 123
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Could not find the no music/usb copy view"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_ed
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoLocalMusicView:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingDisabledView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicSyncing:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicScanning:Landroid/view/View;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllEmptyViews:Ljava/util/Collection;

    .line 129
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoLocalMusicView:Landroid/view/View;

    const v3, 0x7f100096

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingDisabledView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    const v3, 0x7f1000a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreButtons:Ljava/util/Collection;

    .line 138
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreButtons:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_145
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_155

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 139
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_145

    .line 142
    .end local v1           #view:Landroid/view/View;
    :cond_155
    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    const v3, 0x7f1000b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    const v4, 0x7f10009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    const v5, 0x7f1000b2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreText:Ljava/util/Collection;

    .line 146
    return-void
.end method

.method public setEmptyState(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    if-eq v0, p1, :cond_9

    .line 171
    iput-object p1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 172
    invoke-direct {p0}, Lcom/google/android/music/widgets/EmptyMusicView;->onEmptyStateChangedAsync()V

    .line 174
    :cond_9
    return-void
.end method

.method public setEmptyStateFlags(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 185
    iput p1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mEmptyStateFlags:I

    .line 186
    invoke-direct {p0}, Lcom/google/android/music/widgets/EmptyMusicView;->onEmptyStateChangedAsync()V

    .line 187
    return-void
.end method

.method public setEmptyStateWithFlags(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;I)V
    .registers 4
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mEmptyStateFlags:I

    if-eq v0, p2, :cond_f

    .line 178
    :cond_8
    iput-object p1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 179
    iput p2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mEmptyStateFlags:I

    .line 180
    invoke-direct {p0}, Lcom/google/android/music/widgets/EmptyMusicView;->onEmptyStateChangedAsync()V

    .line 182
    :cond_f
    return-void
.end method

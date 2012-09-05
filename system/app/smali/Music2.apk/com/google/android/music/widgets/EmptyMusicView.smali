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

.field private mNoPlaylistsView:Landroid/view/View;

.field private mOnEmptyStateChangedRunnable:Ljava/lang/Runnable;

.field private mRunWhenAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    sget-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 55
    iput-boolean v1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAttached:Z

    .line 56
    iput-boolean v1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mRunWhenAttached:Z

    .line 215
    new-instance v0, Lcom/google/android/music/widgets/EmptyMusicView$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/widgets/EmptyMusicView$1;-><init>(Lcom/google/android/music/widgets/EmptyMusicView;)V

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mOnEmptyStateChangedRunnable:Ljava/lang/Runnable;

    .line 72
    iput-object p1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mContext:Landroid/content/Context;

    .line 73
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
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/widgets/EmptyMusicView;)Ljava/util/Collection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreButtons:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/widgets/EmptyMusicView;)Ljava/util/Collection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreText:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/widgets/EmptyMusicView;)Ljava/util/Collection;
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
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoPlaylistsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicAddMusicTitle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/widgets/EmptyMusicView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/widgets/EmptyMusicView;Landroid/view/View;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/widgets/EmptyMusicView;->setVisibilityFor(Landroid/view/View;I)V

    return-void
.end method

.method private launchLink(IZ)V
    .registers 9
    .parameter "id"
    .parameter "isLocalized"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/android/music/widgets/EmptyMusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 275
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_2e

    .line 276
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

    .line 280
    .local v2, url:Ljava/lang/String;
    :goto_1c
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, i:Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 283
    return-void

    .line 278
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #url:Ljava/lang/String;
    :cond_2e
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto :goto_1c
.end method

.method private onEmptyStateChangedAsync()V
    .registers 2

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAttached:Z

    if-eqz v0, :cond_c

    .line 208
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mOnEmptyStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->post(Ljava/lang/Runnable;)Z

    .line 212
    :goto_a
    monitor-exit p0

    .line 213
    return-void

    .line 210
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mRunWhenAttached:Z

    goto :goto_a

    .line 212
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
    .line 202
    invoke-virtual {p0, p2}, Lcom/google/android/music/widgets/EmptyMusicView;->isEmptyState(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    return-void

    .line 202
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method


# virtual methods
.method public clearEmptyStateFlags()V
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mEmptyStateFlags:I

    .line 194
    invoke-direct {p0}, Lcom/google/android/music/widgets/EmptyMusicView;->onEmptyStateChangedAsync()V

    .line 195
    return-void
.end method

.method public isEmptyState(I)Z
    .registers 3
    .parameter "flags"

    .prologue
    .line 198
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
    .line 156
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 157
    monitor-enter p0

    .line 158
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAttached:Z

    .line 159
    iget-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mRunWhenAttached:Z

    if-eqz v0, :cond_13

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mRunWhenAttached:Z

    .line 161
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mOnEmptyStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->post(Ljava/lang/Runnable;)Z

    .line 163
    :cond_13
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2a

    .line 302
    :goto_8
    return-void

    .line 289
    :sswitch_9
    const v0, 0x7f0d003f

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/widgets/EmptyMusicView;->launchLink(IZ)V

    goto :goto_8

    .line 293
    :sswitch_10
    const v0, 0x7f0d0042

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/widgets/EmptyMusicView;->launchLink(IZ)V

    goto :goto_8

    .line 296
    :sswitch_18
    const v0, 0x7f0d0040

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/widgets/EmptyMusicView;->launchLink(IZ)V

    goto :goto_8

    .line 299
    :sswitch_1f
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/music/dl/IntentConstants;->getMusicStoreIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 286
    nop

    :sswitch_data_2a
    .sparse-switch
        0x7f10007d -> :sswitch_18
        0x7f100083 -> :sswitch_1f
        0x7f100089 -> :sswitch_9
        0x7f10008e -> :sswitch_10
        0x7f100096 -> :sswitch_10
        0x7f10009a -> :sswitch_9
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 169
    monitor-enter p0

    .line 170
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAttached:Z

    .line 171
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mOnEmptyStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 172
    monitor-exit p0

    .line 173
    return-void

    .line 172
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected onFinishInflate()V
    .registers 13

    .prologue
    const v11, 0x7f10009a

    const v10, 0x7f100096

    const v9, 0x7f100089

    const v8, 0x7f100083

    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 79
    const v0, 0x7f10008c

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    if-nez v0, :cond_24

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find streaming enabled view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_24
    const v0, 0x7f100087

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingDisabledView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingDisabledView:Landroid/view/View;

    if-nez v0, :cond_39

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find streaming disabled view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_39
    const v0, 0x7f100079

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoLocalMusicView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoLocalMusicView:Landroid/view/View;

    if-nez v0, :cond_4e

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find local music view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_4e
    const v0, 0x7f10009e

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoPlaylistsView:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoPlaylistsView:Landroid/view/View;

    if-nez v0, :cond_63

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find the no playlists view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_63
    const v0, 0x7f100095

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicSyncing:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicSyncing:Landroid/view/View;

    if-nez v0, :cond_78

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find the no music/syncing view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_78
    const v0, 0x7f100081

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicScanning:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicScanning:Landroid/view/View;

    if-nez v0, :cond_8d

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find the no music/scanning view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_8d
    const v0, 0x7f10007f

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicAddMusicTitle:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicAddMusicTitle:Landroid/view/View;

    if-nez v0, :cond_a2

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find the no music/add music title view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_a2
    invoke-virtual {p0, v8}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    new-instance v1, Lcom/google/android/music/FadingColorDrawable;

    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    if-nez v0, :cond_c2

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find the no music/shop view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_c2
    invoke-virtual {p0, v10}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    new-instance v1, Lcom/google/android/music/FadingColorDrawable;

    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    if-nez v0, :cond_e2

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find the no music/upload view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_e2
    invoke-virtual {p0, v11}, Lcom/google/android/music/widgets/EmptyMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    new-instance v1, Lcom/google/android/music/FadingColorDrawable;

    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    if-nez v0, :cond_102

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find the no music/usb copy view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_102
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoLocalMusicView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingDisabledView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoPlaylistsView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicSyncing:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicScanning:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllEmptyViews:Ljava/util/Collection;

    .line 135
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoLocalMusicView:Landroid/view/View;

    const v1, 0x7f10007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingDisabledView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicStreamingEnabledView:Landroid/view/View;

    const v1, 0x7f10008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreButtons:Ljava/util/Collection;

    .line 144
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreButtons:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_15c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 145
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_15c

    .line 148
    .end local v7           #view:Landroid/view/View;
    :cond_16c
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUsbCopy:Landroid/view/View;

    const v1, 0x7f10009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicShop:Landroid/view/View;

    const v2, 0x7f100086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mNoMusicUpload:Landroid/view/View;

    const v3, 0x7f100099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mAllLearnMoreText:Ljava/util/Collection;

    .line 152
    return-void
.end method

.method public setEmptyState(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    if-eq v0, p1, :cond_9

    .line 177
    iput-object p1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mCurrentEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 178
    invoke-direct {p0}, Lcom/google/android/music/widgets/EmptyMusicView;->onEmptyStateChangedAsync()V

    .line 180
    :cond_9
    return-void
.end method

.method public setEmptyStateFlags(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 183
    iput p1, p0, Lcom/google/android/music/widgets/EmptyMusicView;->mEmptyStateFlags:I

    .line 184
    invoke-direct {p0}, Lcom/google/android/music/widgets/EmptyMusicView;->onEmptyStateChangedAsync()V

    .line 185
    return-void
.end method

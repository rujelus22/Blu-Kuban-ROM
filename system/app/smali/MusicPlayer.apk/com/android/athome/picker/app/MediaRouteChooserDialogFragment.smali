.class public Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$1;,
        Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$VolumeSliderChangeListener;,
        Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$LauncherListener;,
        Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;,
        Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteComparator;,
        Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;,
        Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;,
        Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final ITEM_LAYOUTS:[I


# instance fields
.field private mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

.field final mCallback:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

.field final mComparator:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteComparator;

.field private mExtendedSettingsListener:Landroid/view/View$OnClickListener;

.field private mIgnoreCallbackVolumeChanges:Z

.field private mIgnoreSliderVolumeChanges:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherListener:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$LauncherListener;

.field private mListView:Landroid/widget/ListView;

.field private mRouteTypes:I

.field mRouter:Ljava/lang/Object;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumeSlider:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/athome/picker/R$layout;->media_route_list_item_top_header:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/athome/picker/R$layout;->media_route_list_item_section_header:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/athome/picker/R$layout;->media_route_list_item:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/athome/picker/R$layout;->media_route_list_item_checkable:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/athome/picker/R$layout;->media_route_list_item_collapse_group:I

    aput v2, v0, v1

    sput-object v0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->ITEM_LAYOUTS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteComparator;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteComparator;-><init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)V

    iput-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mComparator:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteComparator;

    .line 83
    new-instance v0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;-><init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)V

    iput-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mCallback:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    .line 88
    const/4 v0, 0x1

    sget v1, Lcom/android/athome/picker/R$style;->Theme_Dialog:I

    invoke-virtual {p0, v0, v1}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->setStyle(II)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200()[I
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->ITEM_LAYOUTS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mIgnoreCallbackVolumeChanges:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mIgnoreCallbackVolumeChanges:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method changeVolume(I)V
    .registers 6
    .parameter "newValue"

    .prologue
    .line 148
    iget-boolean v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mIgnoreSliderVolumeChanges:Z

    if-eqz v2, :cond_5

    .line 157
    :cond_4
    :goto_4
    return-void

    .line 150
    :cond_5
    iget-object v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    invoke-static {v2, v3}, Lcom/android/athome/picker/media/MediaRouterCompat;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 151
    .local v1, selectedRoute:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getVolumeHandling(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 153
    invoke-static {v1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getVolumeMax(Ljava/lang/Object;)I

    move-result v0

    .line 154
    .local v0, maxVolume:I
    const/4 v2, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 155
    invoke-static {v1, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->requestSetVolume(Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 98
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat;->forApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 191
    new-instance v0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;

    invoke-virtual {p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteChooserDialog;-><init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 162
    iput-object p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 163
    sget v3, Lcom/android/athome/picker/R$layout;->media_route_chooser_layout:I

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, layout:Landroid/view/View;
    sget v3, Lcom/android/athome/picker/R$id;->volume_icon:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeIcon:Landroid/widget/ImageView;

    .line 166
    sget v3, Lcom/android/athome/picker/R$id;->volume_slider:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 167
    invoke-virtual {p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->updateVolume()V

    .line 168
    iget-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$VolumeSliderChangeListener;

    invoke-direct {v4, p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$VolumeSliderChangeListener;-><init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3c

    .line 171
    sget v3, Lcom/android/athome/picker/R$id;->extended_settings:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, extendedSettingsButton:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .end local v0           #extendedSettingsButton:Landroid/view/View;
    :cond_3c
    sget v3, Lcom/android/athome/picker/R$id;->list:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 177
    .local v2, list:Landroid/widget/ListView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 178
    new-instance v3, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-direct {v3, p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;-><init>(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)V

    iput-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    iput-object v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;

    .line 182
    iget-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget v4, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    iget-object v5, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mCallback:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    invoke-static {v3, v4, v5}, Lcom/android/athome/picker/media/MediaRouterCompat;->addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 184
    iget-object v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v3}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;->scrollToSelectedItem()V

    .line 186
    return-object v1
.end method

.method public onDetach()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 104
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mLauncherListener:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$LauncherListener;

    if-eqz v0, :cond_d

    .line 105
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mLauncherListener:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$LauncherListener;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$LauncherListener;->onDetached(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;)V

    .line 107
    :cond_d
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    if-eqz v0, :cond_13

    .line 108
    iput-object v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$RouteAdapter;

    .line 110
    :cond_13
    iput-object v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    iget-object v0, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mCallback:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouterCompat;->removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 112
    iput-object v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 197
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    .line 117
    return-void
.end method

.method public setLauncherListener(Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$LauncherListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mLauncherListener:Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment$LauncherListener;

    .line 93
    return-void
.end method

.method public setRouteTypes(I)V
    .registers 2
    .parameter "types"

    .prologue
    .line 120
    iput p1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    .line 121
    return-void
.end method

.method updateVolume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 124
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    if-nez v1, :cond_7

    .line 145
    :goto_6
    return-void

    .line 126
    :cond_7
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouter:Ljava/lang/Object;

    iget v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    invoke-static {v1, v2}, Lcom/android/athome/picker/media/MediaRouterCompat;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, selectedRoute:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getPlaybackType(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_36

    sget v1, Lcom/android/athome/picker/R$drawable;->ic_audio_vol_multi_holo_dark:I

    :goto_19
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iput-boolean v3, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mIgnoreSliderVolumeChanges:Z

    .line 133
    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getVolumeHandling(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_39

    .line 135
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 136
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 137
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 144
    :goto_33
    iput-boolean v4, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mIgnoreSliderVolumeChanges:Z

    goto :goto_6

    .line 127
    :cond_36
    sget v1, Lcom/android/athome/picker/R$drawable;->ic_media_route_on_holo_dark:I

    goto :goto_19

    .line 139
    :cond_39
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getVolumeMax(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 141
    iget-object v1, p0, Lcom/android/athome/picker/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getVolume(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_33
.end method

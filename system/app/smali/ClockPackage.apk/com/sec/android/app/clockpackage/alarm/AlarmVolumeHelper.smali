.class public Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;
.super Ljava/lang/Object;
.source "AlarmVolumeHelper.java"


# instance fields
.field public mAlarmVolumeIcon:Landroid/widget/ImageView;

.field public mAlarmVolumeLevel:Landroid/widget/ProgressBar;

.field public mAlarmVolumeToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private final setSmallIcon(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_f

    const v0, 0x1080366

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :cond_e
    return-void

    .line 131
    :cond_f
    const v0, 0x1080367

    goto :goto_b
.end method


# virtual methods
.method public final changeAlarmVolume(I)V
    .registers 3
    .parameter "volume"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    if-eqz v0, :cond_10

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeLevel:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_10

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 119
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->setSmallIcon(I)V

    .line 125
    :cond_10
    return-void
.end method

.method public final hideAlarmVolumeToast()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 109
    :cond_9
    return-void
.end method

.method public final showAlarmVolumeToast(Landroid/content/Context;I)V
    .registers 10
    .parameter "context"
    .parameter "volume"

    .prologue
    const/4 v6, 0x0

    .line 39
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    if-nez v4, :cond_89

    .line 41
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    .line 43
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000e

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 48
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0e0068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, tv:Landroid/widget/TextView;
    const v4, 0x7f0b002a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 52
    const v4, 0x7f0e006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55
    const v4, 0x7f0e0067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeIcon:Landroid/widget/ImageView;

    .line 58
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_53

    .line 60
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeIcon:Landroid/widget/ImageView;

    const v5, 0x1080367

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :cond_53
    const v4, 0x7f0e006b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeLevel:Landroid/widget/ProgressBar;

    .line 69
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 73
    .local v1, max:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeLevel:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_74

    .line 75
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 77
    :cond_74
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    if-eqz v4, :cond_89

    .line 79
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    invoke-virtual {v4, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 81
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    invoke-virtual {v4, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 83
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    const/16 v5, 0x30

    invoke-virtual {v4, v5, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 89
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #max:I
    .end local v2           #tv:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_89
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    if-eqz v4, :cond_9e

    .line 91
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeLevel:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_96

    .line 93
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v4, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 95
    :cond_96
    invoke-direct {p0, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->setSmallIcon(I)V

    .line 97
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->mAlarmVolumeToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 101
    :cond_9e
    return-void
.end method

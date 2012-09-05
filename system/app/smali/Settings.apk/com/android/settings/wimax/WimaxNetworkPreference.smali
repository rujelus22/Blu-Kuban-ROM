.class public Lcom/android/settings/wimax/WimaxNetworkPreference;
.super Landroid/preference/Preference;
.source "WimaxNetworkPreference.java"


# static fields
.field private static m_bLog:Z

.field private static m_nCurrentStateDetail:I

.field private static m_nSignalLevel:I


# instance fields
.field private mImageViewSignal:Landroid/widget/ImageView;

.field private mNapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    .line 37
    sput v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wimax/WimaxSettings;Ljava/lang/String;)V
    .registers 6
    .parameter "wimaxSettings"
    .parameter "napId"

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/android/settings/wimax/WimaxSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mNapId:Ljava/lang/String;

    .line 47
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_2c

    const-string v0, "WimaxNetworkPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WimaxNetworkPreference]  NapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_2c
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/android/settings/wimax/WimaxNetworkPreference;->setWidgetLayoutResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/wimax/WimaxNetworkPreference;->refresh()V

    .line 50
    return-void
.end method

.method public static updateWimaxSignal(II)V
    .registers 2
    .parameter "nWimaxSignalLevel"
    .parameter "nStateDetail"

    .prologue
    .line 109
    sput p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    .line 110
    sput p1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nCurrentStateDetail:I

    .line 111
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 59
    const v0, 0x7f080185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    if-eqz v0, :cond_4e

    .line 61
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_30

    const-string v0, "WimaxNetworkPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onBindView]  If signal != null, signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_30
    sget v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nCurrentStateDetail:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4f

    .line 63
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_40

    const-string v0, "WimaxNetworkPreference"

    const-string v1, "[onBindView]  extraStateDetail == 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_40
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 72
    :cond_4e
    :goto_4e
    return-void

    .line 67
    :cond_4f
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_5a

    const-string v0, "WimaxNetworkPreference"

    const-string v1, "[onBindView]  extraStateDetail != 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_5a
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020154

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_4e
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 53
    const-string v0, "000002"

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mNapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "000004"

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mNapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_14
    const v0, 0x7f0b0862

    :goto_17
    invoke-virtual {p0, v0}, Lcom/android/settings/wimax/WimaxNetworkPreference;->setTitle(I)V

    .line 54
    return-void

    .line 53
    :cond_1b
    const v0, 0x7f0b0863

    goto :goto_17
.end method

.method public updateIdleSignalLevelIcon(I)V
    .registers 5
    .parameter "nStateDetail"

    .prologue
    .line 92
    sput p1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nCurrentStateDetail:I

    .line 93
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_20

    const-string v0, "WimaxNetworkPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateIdleSignalLevelIcon]  Signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_20
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    if-eqz v0, :cond_4d

    .line 95
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_2f

    const-string v0, "WimaxNetworkPreference"

    const-string v1, "[updateIdleSignalLevelIcon]  if signal != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2f
    sget v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nCurrentStateDetail:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4e

    .line 97
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_3f

    const-string v0, "WimaxNetworkPreference"

    const-string v1, "[updateIdleSignalLevelIcon]  extraStateDetail == 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3f
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 106
    :cond_4d
    :goto_4d
    return-void

    .line 101
    :cond_4e
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_59

    const-string v0, "WimaxNetworkPreference"

    const-string v1, "[updateIdleSignalLevelIcon]  extraStateDetail != 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_59
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020154

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_4d
.end method

.method public updateWimaxSignalLevelIcon(I)V
    .registers 5
    .parameter "nSignalLevel"

    .prologue
    .line 75
    sput p1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    .line 76
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_20

    const-string v0, "WimaxNetworkPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateWimaxSignalLevelIcon]  Signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_20
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    if-eqz v0, :cond_4d

    .line 78
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_2f

    const-string v0, "WimaxNetworkPreference"

    const-string v1, "[updateWimaxSignalLevelIcon]  if signal != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2f
    sget v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nCurrentStateDetail:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4e

    .line 80
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_3f

    const-string v0, "WimaxNetworkPreference"

    const-string v1, "[updateWimaxSignalLevelIcon]  extraStateDetail == 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_3f
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 89
    :cond_4d
    :goto_4d
    return-void

    .line 84
    :cond_4e
    sget-boolean v0, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_bLog:Z

    if-eqz v0, :cond_59

    const-string v0, "WimaxNetworkPreference"

    const-string v1, "[updateWimaxSignalLevelIcon]  extraStateDetail != 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_59
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    const v1, 0x7f020154

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxNetworkPreference;->mImageViewSignal:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/wimax/WimaxNetworkPreference;->m_nSignalLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_4d
.end method

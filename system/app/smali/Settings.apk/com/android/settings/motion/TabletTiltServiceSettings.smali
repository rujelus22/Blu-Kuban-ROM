.class public Lcom/android/settings/motion/TabletTiltServiceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TabletTiltServiceSettings.java"


# static fields
.field private static final mTiltAnimationImage:[I


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mImgBtn:Landroid/widget/ImageButton;

.field private mMotions:Landroid/preference/CheckBoxPreference;

.field private mSensitivity:Landroid/preference/Preference;

.field private mTiltAnimationIndex:I

.field private mUseMotionDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationImage:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x4bt 0x1t 0x2t 0x7ft
        0x4ct 0x1t 0x2t 0x7ft
        0x4dt 0x1t 0x2t 0x7ft
        0x4ct 0x1t 0x2t 0x7ft
        0x4bt 0x1t 0x2t 0x7ft
        0x4bt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationIndex:I

    .line 51
    new-instance v0, Lcom/android/settings/motion/TabletTiltServiceSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/TabletTiltServiceSettings$1;-><init>(Lcom/android/settings/motion/TabletTiltServiceSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/TabletTiltServiceSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/TabletTiltServiceSettings;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/TabletTiltServiceSettings;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/motion/TabletTiltServiceSettings;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/motion/TabletTiltServiceSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->showUseMotionDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion/TabletTiltServiceSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->startAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion/TabletTiltServiceSettings;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/TabletTiltServiceSettings;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion/TabletTiltServiceSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private showUseMotionDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    .line 188
    iget-object v1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 189
    iput-object v4, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    .line 191
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07c3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07c7

    new-instance v3, Lcom/android/settings/motion/TabletTiltServiceSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/TabletTiltServiceSettings$4;-><init>(Lcom/android/settings/motion/TabletTiltServiceSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0101

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    .line 205
    iget-object v1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/TabletTiltServiceSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/TabletTiltServiceSettings$5;-><init>(Lcom/android/settings/motion/TabletTiltServiceSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 211
    return-void
.end method

.method private startAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 162
    const-string v0, "TiltServiceSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 164
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1d

    .line 165
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 168
    :cond_1d
    iput v2, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationIndex:I

    .line 169
    invoke-direct {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->updateAnimation()V

    .line 171
    :cond_22
    return-void
.end method

.method private startTryActually(Z)V
    .registers 6
    .parameter "preview"

    .prologue
    .line 127
    const-string v1, "TiltServiceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTryActually(), Preview : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "com.android.sec.gallery3d"

    const-string v2, "com.android.sec.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    if-eqz p1, :cond_3d

    .line 133
    const-string v1, "MotionTest"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    :goto_33
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    return-void

    .line 135
    :cond_3d
    const-string v1, "MotionTest"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_33
.end method

.method private stopAnimation()V
    .registers 4

    .prologue
    .line 175
    const-string v0, "TiltServiceSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2e

    .line 177
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2e

    .line 179
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationImage:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 184
    :cond_2e
    return-void
.end method

.method private updateAnimation()V
    .registers 5

    .prologue
    .line 143
    const-string v0, "TiltServiceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_TILT_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2f

    .line 145
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 146
    iget v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationIndex:I

    .line 149
    :cond_2f
    iget v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationIndex:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_38

    .line 150
    invoke-direct {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->stopAnimation()V

    .line 158
    :cond_37
    :goto_37
    return-void

    .line 154
    :cond_38
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_37

    .line 155
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_37
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 76
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040096

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, about_motion_layout:Landroid/view/View;
    const v4, 0x7f0801d6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    .line 78
    const v4, 0x7f0801d5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 79
    .local v2, message:Landroid/widget/TextView;
    const v4, 0x7f0801d7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 80
    .local v3, tryBtn:Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/motion/TabletTiltServiceSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/motion/TabletTiltServiceSettings$2;-><init>(Lcom/android/settings/motion/TabletTiltServiceSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v4, 0x7f0b07b0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v4, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    sget-object v5, Lcom/android/settings/motion/TabletTiltServiceSettings;->mTiltAnimationImage:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 91
    iget-object v4, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    const v5, 0x7f02014a

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 92
    iget-object v4, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mImgBtn:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/settings/motion/TabletTiltServiceSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/TabletTiltServiceSettings$3;-><init>(Lcom/android/settings/motion/TabletTiltServiceSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v0, v7, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f05003f

    invoke-virtual {p0, v1}, Lcom/android/settings/motion/TabletTiltServiceSettings;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v1, "tilt_activation"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion/TabletTiltServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v1, "sensitivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion/TabletTiltServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mSensitivity:Landroid/preference/Preference;

    .line 71
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->stopAnimation()V

    .line 112
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 116
    iget-object v2, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_19

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    iget-object v4, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    move v0, v1

    :cond_15
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    :goto_18
    return v1

    .line 119
    :cond_19
    iget-object v2, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mSensitivity:Landroid/preference/Preference;

    if-ne p2, v2, :cond_21

    .line 120
    invoke-direct {p0, v1}, Lcom/android/settings/motion/TabletTiltServiceSettings;->startTryActually(Z)V

    goto :goto_18

    :cond_21
    move v1, v0

    .line 123
    goto :goto_18
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 105
    iget-object v1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    return-void
.end method

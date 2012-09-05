.class public Lcom/android/settings/motion/TabletWaveServiceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TabletWaveServiceSettings.java"


# static fields
.field private static final mHomeWaveAnimationImage:[I

.field private static final mWaveAnimationImage:[I


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mGalleryAnimationIndex:I

.field private mHomeAnimationIndex:I

.field private mImgBtn_gallery:Landroid/widget/ImageButton;

.field private mImgBtn_home:Landroid/widget/ImageButton;

.field private mMotions:Landroid/preference/CheckBoxPreference;

.field private mSensitivity:Landroid/preference/Preference;

.field private mUseMotionDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mWaveAnimationImage:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeWaveAnimationImage:[I

    return-void

    .line 50
    :array_10
    .array-data 0x4
        0x47t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
        0x49t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
        0x47t 0x1t 0x2t 0x7ft
        0x47t 0x1t 0x2t 0x7ft
    .end array-data

    .line 53
    :array_20
    .array-data 0x4
        0x44t 0x1t 0x2t 0x7ft
        0x45t 0x1t 0x2t 0x7ft
        0x46t 0x1t 0x2t 0x7ft
        0x45t 0x1t 0x2t 0x7ft
        0x44t 0x1t 0x2t 0x7ft
        0x44t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    .line 47
    iput v1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeAnimationIndex:I

    .line 48
    iput v1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mGalleryAnimationIndex:I

    .line 57
    new-instance v0, Lcom/android/settings/motion/TabletWaveServiceSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/TabletWaveServiceSettings$1;-><init>(Lcom/android/settings/motion/TabletWaveServiceSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/TabletWaveServiceSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->updateHomeAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/TabletWaveServiceSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->updateGalleryAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/motion/TabletWaveServiceSettings;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/motion/TabletWaveServiceSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/TabletWaveServiceSettings;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/TabletWaveServiceSettings;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/motion/TabletWaveServiceSettings;->startHomeTryActually(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion/TabletWaveServiceSettings;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/motion/TabletWaveServiceSettings;->showUseMotionDialog(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion/TabletWaveServiceSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->startHomeAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion/TabletWaveServiceSettings;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion/TabletWaveServiceSettings;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/motion/TabletWaveServiceSettings;->startGalleryTryActually(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/motion/TabletWaveServiceSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->startGalleryAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/motion/TabletWaveServiceSettings;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private showUseMotionDialog(Z)V
    .registers 7
    .parameter "isHome"

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    .line 288
    iget-object v1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 289
    iput-object v4, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    .line 291
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07c8

    new-instance v3, Lcom/android/settings/motion/TabletWaveServiceSettings$6;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/motion/TabletWaveServiceSettings$6;-><init>(Lcom/android/settings/motion/TabletWaveServiceSettings;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0101

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    .line 309
    iget-object v1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mUseMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/TabletWaveServiceSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/TabletWaveServiceSettings$7;-><init>(Lcom/android/settings/motion/TabletWaveServiceSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 315
    return-void
.end method

.method private startGalleryAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 263
    const-string v0, "WaveServiceSettings"

    const-string v1, "startGalleryAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 265
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1d

    .line 266
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 269
    :cond_1d
    iput v2, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mGalleryAnimationIndex:I

    .line 270
    invoke-direct {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->updateGalleryAnimation()V

    .line 272
    :cond_22
    return-void
.end method

.method private startGalleryTryActually(Z)V
    .registers 7
    .parameter "preview"

    .prologue
    const/4 v4, 0x1

    .line 182
    const-string v1, "WaveServiceSettings"

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

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "com.android.sec.gallery3d"

    const-string v2, "com.android.sec.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "isPanning"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    if-eqz p1, :cond_43

    .line 188
    const-string v1, "MotionTest"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    :goto_39
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void

    .line 190
    :cond_43
    const-string v1, "MotionTest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_39
.end method

.method private startHomeAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 217
    const-string v0, "WaveServiceSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 219
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1d

    .line 220
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 223
    :cond_1d
    iput v2, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeAnimationIndex:I

    .line 224
    invoke-direct {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->updateHomeAnimation()V

    .line 226
    :cond_22
    return-void
.end method

.method private startHomeTryActually(Z)V
    .registers 6
    .parameter "preview"

    .prologue
    .line 168
    const-string v1, "WaveServiceSettings"

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

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.motions.settings.panningtutorial"

    const-string v2, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "Preview"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    return-void
.end method

.method private stopGalleryAnimation()V
    .registers 4

    .prologue
    .line 276
    const-string v0, "WaveServiceSettings"

    const-string v1, "stopGalleryAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2e

    .line 278
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2e

    .line 280
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/settings/motion/TabletWaveServiceSettings;->mWaveAnimationImage:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 285
    :cond_2e
    return-void
.end method

.method private stopHomeAnimation()V
    .registers 4

    .prologue
    .line 230
    const-string v0, "WaveServiceSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2e

    .line 232
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2e

    .line 234
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeWaveAnimationImage:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 239
    :cond_2e
    return-void
.end method

.method private updateGalleryAnimation()V
    .registers 5

    .prologue
    .line 243
    const-string v0, "WaveServiceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_GALLERY_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mGalleryAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2f

    .line 245
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/settings/motion/TabletWaveServiceSettings;->mWaveAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mGalleryAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 246
    iget v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mGalleryAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mGalleryAnimationIndex:I

    .line 249
    :cond_2f
    iget v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mGalleryAnimationIndex:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_3b

    .line 250
    invoke-direct {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->stopGalleryAnimation()V

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mGalleryAnimationIndex:I

    .line 259
    :cond_3a
    :goto_3a
    return-void

    .line 255
    :cond_3b
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3a

    .line 256
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3a
.end method

.method private updateHomeAnimation()V
    .registers 5

    .prologue
    .line 197
    const-string v0, "WaveServiceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_HOME_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2f

    .line 199
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeWaveAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 200
    iget v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeAnimationIndex:I

    .line 203
    :cond_2f
    iget v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeAnimationIndex:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_3b

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeAnimationIndex:I

    .line 205
    invoke-direct {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->stopHomeAnimation()V

    .line 213
    :cond_3a
    :goto_3a
    return-void

    .line 209
    :cond_3b
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3a

    .line 210
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3a
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f02014a

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 85
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040097

    invoke-virtual {v2, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, about_motion_layout:Landroid/view/View;
    const v7, 0x7f0801d6

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    .line 87
    const v7, 0x7f0801d5

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 88
    .local v3, message:Landroid/widget/TextView;
    const v7, 0x7f0801d7

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 89
    .local v5, tryBtn:Landroid/widget/Button;
    new-instance v7, Lcom/android/settings/motion/TabletWaveServiceSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/motion/TabletWaveServiceSettings$2;-><init>(Lcom/android/settings/motion/TabletWaveServiceSettings;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v7, 0x7f0b07ab

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v7, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    sget-object v8, Lcom/android/settings/motion/TabletWaveServiceSettings;->mHomeWaveAnimationImage:[I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 100
    iget-object v7, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 101
    iget-object v7, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_home:Landroid/widget/ImageButton;

    new-instance v8, Lcom/android/settings/motion/TabletWaveServiceSettings$3;

    invoke-direct {v8, p0}, Lcom/android/settings/motion/TabletWaveServiceSettings$3;-><init>(Lcom/android/settings/motion/TabletWaveServiceSettings;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v7, 0x7f0801d8

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    .local v1, categoty_2:Landroid/widget/TextView;
    const v7, 0x7f0801da

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    .line 108
    const v7, 0x7f0801d9

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 109
    .local v4, message_2:Landroid/widget/TextView;
    const v7, 0x7f0801db

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 110
    .local v6, tryBtn_2:Landroid/widget/Button;
    new-instance v7, Lcom/android/settings/motion/TabletWaveServiceSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/motion/TabletWaveServiceSettings$4;-><init>(Lcom/android/settings/motion/TabletWaveServiceSettings;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v7, 0x7f0b07c5

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 120
    const v7, 0x7f0b07c6

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v7, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    sget-object v8, Lcom/android/settings/motion/TabletWaveServiceSettings;->mWaveAnimationImage:[I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 122
    iget-object v7, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 123
    iget-object v7, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    new-instance v8, Lcom/android/settings/motion/TabletWaveServiceSettings$5;

    invoke-direct {v8, p0}, Lcom/android/settings/motion/TabletWaveServiceSettings$5;-><init>(Lcom/android/settings/motion/TabletWaveServiceSettings;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v7, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mImgBtn_gallery:Landroid/widget/ImageButton;

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 132
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v0, v12, v10}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v1, 0x7f050040

    invoke-virtual {p0, v1}, Lcom/android/settings/motion/TabletWaveServiceSettings;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v1, "wave_activation"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion/TabletWaveServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    .line 78
    const-string v1, "sensitivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion/TabletWaveServiceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mSensitivity:Landroid/preference/Preference;

    .line 80
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->stopHomeAnimation()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->stopGalleryAnimation()V

    .line 152
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 156
    iget-object v2, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_19

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    iget-object v4, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    move v0, v1

    :cond_15
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    :goto_18
    return v1

    .line 159
    :cond_19
    iget-object v2, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mSensitivity:Landroid/preference/Preference;

    if-ne p2, v2, :cond_21

    .line 160
    invoke-direct {p0, v1}, Lcom/android/settings/motion/TabletWaveServiceSettings;->startHomeTryActually(Z)V

    goto :goto_18

    :cond_21
    move v1, v0

    .line 163
    goto :goto_18
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    iget-object v1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    return-void
.end method

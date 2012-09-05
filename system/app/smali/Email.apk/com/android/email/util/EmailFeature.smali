.class public Lcom/android/email/util/EmailFeature;
.super Ljava/lang/Object;
.source "EmailFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;
    }
.end annotation


# static fields
.field public static DEBUG_FRAGMENTS:Z

.field public static DEBUG_MOTION_SCROLL:Z

.field public static DEBUG_TOUCHEVENT:Z

.field public static DEBUG_VIEWPAGER_POSITIONCHANGE:Z

.field public static DEBUG_VIEWPAGER_SCROLL:Z

.field public static DEBUG_VIEWPAGER_SIZECHANGE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 178
    sput-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SCROLL:Z

    .line 179
    sput-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    .line 180
    sput-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_POSITIONCHANGE:Z

    .line 181
    sput-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_MOTION_SCROLL:Z

    .line 182
    sput-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_FRAGMENTS:Z

    .line 183
    sput-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_TOUCHEVENT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDownloadPercent()I
    .registers 2

    .prologue
    .line 86
    invoke-static {}, Lcom/android/email/util/EmailFeature;->GetDownloadProgress()Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    move-result-object v0

    sget-object v1, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->HALF:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    if-ne v0, v1, :cond_b

    .line 87
    const/16 v0, 0x32

    .line 92
    :goto_a
    return v0

    .line 88
    :cond_b
    invoke-static {}, Lcom/android/email/util/EmailFeature;->GetDownloadProgress()Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    move-result-object v0

    sget-object v1, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->NINETY:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    if-ne v0, v1, :cond_16

    .line 89
    const/16 v0, 0x5a

    goto :goto_a

    .line 92
    :cond_16
    const/16 v0, 0x64

    goto :goto_a
.end method

.method public static GetDownloadProgress()Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->NINETY:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    return-object v0
.end method

.method public static IsBlackTheme()Z
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public static IsOnlyWIFIDevice(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 142
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 144
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_10

    move-result v2

    if-eqz v2, :cond_14

    .line 145
    const/4 v2, 0x0

    .line 151
    .end local v1           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :goto_f
    return v2

    .line 147
    :catch_10
    move-exception v0

    .line 148
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_14
    const/4 v2, 0x1

    goto :goto_f
.end method

.method public static IsPhone()Z
    .registers 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public static IsSPRModel()Z
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseAlwaysShowToTopButton()Z
    .registers 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseCheckAfterPageFinished()Z
    .registers 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public static IsUseDownloadCancel()Z
    .registers 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseEmailViewPort()Z
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public static IsUseFragmentPager()Z
    .registers 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public static IsUseFragmentTransaction()Z
    .registers 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseFragmentTransactionAnimation()Z
    .registers 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public static IsUseGesture()Z
    .registers 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseHistoryUrl()Z
    .registers 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseInitScale()Z
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseInlineTag()Z
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseMessageWebViewSizeChange()Z
    .registers 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseNewDownloadProgress()Z
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseRetrievesize()Z
    .registers 1

    .prologue
    .line 20
    const-string v0, "VZW_LTE"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    const/4 v0, 0x1

    .line 23
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static IsUseWideViewPort()Z
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public static is5FontModel()Z
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Lcom/android/email/util/EmailFeature;->isQ1BasedModel()Z

    move-result v0

    if-nez v0, :cond_6

    .line 65
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static isQ1BasedModel()Z
    .registers 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

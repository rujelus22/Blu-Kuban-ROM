.class public Lcom/google/android/apps/translate/SdkVersionWrapper;
.super Ljava/lang/Object;
.source "SdkVersionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/SdkVersionWrapper$1;,
        Lcom/google/android/apps/translate/SdkVersionWrapper$Version14;,
        Lcom/google/android/apps/translate/SdkVersionWrapper$Version11;,
        Lcom/google/android/apps/translate/SdkVersionWrapper$Version7;,
        Lcom/google/android/apps/translate/SdkVersionWrapper$Version5;,
        Lcom/google/android/apps/translate/SdkVersionWrapper$Version4;,
        Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;
    }
.end annotation


# static fields
.field private static final FEEDBACK_CATEGORY_TAG:Ljava/lang/String; = "com.google.android.apps.translate.USER_INITIATED_FEEDBACK_REPORT"

.field private static final FEEDBACK_LOG_FILTER:Ljava/lang/String; = "AndroidRuntime:V *:S"

.field private static final TAG:Ljava/lang/String; = "SdkVersionWrapper"

.field private static final sWrappper:Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->createWrapperBySdkVersion()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translate/SdkVersionWrapper;->sWrappper:Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method private static createWrapperBySdkVersion()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 323
    new-instance v0, Lcom/google/android/apps/translate/SdkVersionWrapper$Version14;

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version14;-><init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V

    :goto_d
    return-object v0

    .line 302
    :pswitch_e
    new-instance v0, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    invoke-direct {v0}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;-><init>()V

    goto :goto_d

    .line 305
    :pswitch_14
    new-instance v0, Lcom/google/android/apps/translate/SdkVersionWrapper$Version4;

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version4;-><init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V

    goto :goto_d

    .line 309
    :pswitch_1a
    new-instance v0, Lcom/google/android/apps/translate/SdkVersionWrapper$Version5;

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version5;-><init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V

    goto :goto_d

    .line 315
    :pswitch_20
    new-instance v0, Lcom/google/android/apps/translate/SdkVersionWrapper$Version7;

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version7;-><init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V

    goto :goto_d

    .line 320
    :pswitch_26
    new-instance v0, Lcom/google/android/apps/translate/SdkVersionWrapper$Version11;

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version11;-><init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V

    goto :goto_d

    .line 300
    :pswitch_data_2c
    .packed-switch 0x3
        :pswitch_e
        :pswitch_14
        :pswitch_1a
        :pswitch_1a
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method public static getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/apps/translate/SdkVersionWrapper;->sWrappper:Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    return-object v0
.end method

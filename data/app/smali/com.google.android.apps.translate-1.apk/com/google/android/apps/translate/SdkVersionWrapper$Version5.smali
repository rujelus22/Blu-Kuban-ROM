.class Lcom/google/android/apps/translate/SdkVersionWrapper$Version5;
.super Lcom/google/android/apps/translate/SdkVersionWrapper$Version4;
.source "SdkVersionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SdkVersionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Version5"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version4;-><init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version5;-><init>()V

    return-void
.end method


# virtual methods
.method public removeTransitionAnimation(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 170
    return-void
.end method

.method public setIntentNoAnimation(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 164
    const/high16 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    return-void
.end method

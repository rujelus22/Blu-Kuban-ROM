.class Lcom/google/android/apps/translate/SdkVersionWrapper$Version4;
.super Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;
.source "SdkVersionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SdkVersionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Version4"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version4;-><init>()V

    return-void
.end method


# virtual methods
.method public isHandwritingSupported()Z
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public isLargeScreen(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 148
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 149
    .local v1, screenSize:I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

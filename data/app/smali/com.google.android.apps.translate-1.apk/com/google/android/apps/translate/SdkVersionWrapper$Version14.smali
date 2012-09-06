.class Lcom/google/android/apps/translate/SdkVersionWrapper$Version14;
.super Lcom/google/android/apps/translate/SdkVersionWrapper$Version11;
.source "SdkVersionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SdkVersionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Version14"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version11;-><init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/SdkVersionWrapper$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version14;-><init>()V

    return-void
.end method


# virtual methods
.method public sendFeedback(Landroid/app/Activity;Z)V
    .registers 6
    .parameter "activity"
    .parameter "requestScreenshot"

    .prologue
    .line 272
    if-eqz p2, :cond_6

    .line 274
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version11;->sendFeedback(Landroid/app/Activity;Z)V

    .line 296
    :goto_5
    return-void

    .line 278
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Lcom/google/android/apps/translate/SdkVersionWrapper$Version14$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/SdkVersionWrapper$Version14$1;-><init>(Lcom/google/android/apps/translate/SdkVersionWrapper$Version14;)V

    .line 295
    .local v0, conn:Landroid/content/ServiceConnection;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_5
.end method

.method public setHomeButton(Landroid/app/Activity;Z)V
    .registers 5
    .parameter "activity"
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 265
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 266
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 268
    return-void
.end method

.method public useExternalFontsForUnsupportedLanguages()Z
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

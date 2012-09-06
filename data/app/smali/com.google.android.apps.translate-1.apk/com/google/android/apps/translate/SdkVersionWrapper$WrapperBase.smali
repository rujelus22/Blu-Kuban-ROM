.class public Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;
.super Ljava/lang/Object;
.source "SdkVersionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SdkVersionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapperBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyToClipBoard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "textToCopy"

    .prologue
    .line 108
    const-string v1, "clipboard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 111
    .local v0, clipboard:Landroid/text/ClipboardManager;
    invoke-virtual {v0, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public hasFeatureTelephony(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public invalidateOptionsMenu(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 89
    return-void
.end method

.method public isHandwritingSupported()Z
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public isLargeScreen(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public removeTransitionAnimation(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 65
    return-void
.end method

.method public sendFeedback(Landroid/app/Activity;Z)V
    .registers 8
    .parameter "activity"
    .parameter "requestScreenshot"

    .prologue
    .line 119
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const-string v3, "AndroidRuntime:V *:S"

    const-string v4, "com.google.android.apps.translate.USER_INITIATED_FEEDBACK_REPORT"

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v0, spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    invoke-virtual {v0, p2}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setScreenshotEnabled(Z)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 136
    new-instance v1, Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-direct {v1}, Lcom/google/userfeedback/android/api/UserFeedback;-><init>()V

    .line 137
    .local v1, uf:Lcom/google/userfeedback/android/api/UserFeedback;
    invoke-virtual {v1, v0}, Lcom/google/userfeedback/android/api/UserFeedback;->startFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V

    .line 138
    return-void
.end method

.method public setActionBarTitle(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V
    .registers 3
    .parameter "activity"
    .parameter "spinnerAdapter"

    .prologue
    .line 80
    return-void
.end method

.method public setHomeButton(Landroid/app/Activity;Z)V
    .registers 3
    .parameter "activity"
    .parameter "enable"

    .prologue
    .line 84
    return-void
.end method

.method public setIntentNoAnimation(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 60
    return-void
.end method

.method public setTextIsSelectable(Landroid/widget/TextView;Z)V
    .registers 3
    .parameter "view"
    .parameter "selectable"

    .prologue
    .line 70
    return-void
.end method

.method public useExternalFontsForUnsupportedLanguages()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public useFragments()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

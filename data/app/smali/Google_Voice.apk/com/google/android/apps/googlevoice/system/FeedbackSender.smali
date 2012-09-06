.class public Lcom/google/android/apps/googlevoice/system/FeedbackSender;
.super Ljava/lang/Object;
.source "FeedbackSender.java"


# static fields
.field private static final FEEDBACK_CATEGORY:Ljava/lang/String; = "com.google.android.apps.googlevoice.USER_INITIATED"

.field private static final LOG_FILTER:Ljava/lang/String; = "GoogleVoice:V *:S"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Landroid/app/Activity;)V
    .registers 6
    .parameter "activity"

    .prologue
    .line 21
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const-string v3, "GoogleVoice:V *:S"

    const-string v4, "com.google.android.apps.googlevoice.USER_INITIATED"

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v0, spec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    new-instance v1, Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-direct {v1}, Lcom/google/userfeedback/android/api/UserFeedback;-><init>()V

    .line 24
    .local v1, userFeedback:Lcom/google/userfeedback/android/api/UserFeedback;
    invoke-virtual {v1, v0}, Lcom/google/userfeedback/android/api/UserFeedback;->startFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V

    .line 25
    return-void
.end method

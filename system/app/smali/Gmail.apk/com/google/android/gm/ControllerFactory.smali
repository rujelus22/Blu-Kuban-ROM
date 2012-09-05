.class public Lcom/google/android/gm/ControllerFactory;
.super Ljava/lang/Object;
.source "ControllerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forActivity(Lcom/google/android/gm/ActivityController$ControllableActivity;)Lcom/google/android/gm/ActivityController;
    .registers 4
    .parameter "activity"

    .prologue
    .line 21
    invoke-interface {p0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getViewMode()Lcom/google/android/gm/ViewMode;

    move-result-object v0

    .line 22
    .local v0, viewMode:Lcom/google/android/gm/ViewMode;
    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isTwoPane()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 23
    const-string v1, "android.intent.action.SEARCH"

    invoke-interface {p0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/Utils;->shouldShowTwoPaneSearchResult(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 25
    new-instance v1, Lcom/google/android/gm/SearchTwoPaneActivityController;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gm/SearchTwoPaneActivityController;-><init>(Lcom/google/android/gm/ActivityController$ControllableActivity;Lcom/google/android/gm/ViewMode;)V

    .line 30
    :goto_29
    return-object v1

    .line 27
    :cond_2a
    new-instance v1, Lcom/google/android/gm/TwoPaneActivityController;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gm/TwoPaneActivityController;-><init>(Lcom/google/android/gm/ActivityController$ControllableActivity;Lcom/google/android/gm/ViewMode;)V

    goto :goto_29

    .line 30
    :cond_30
    new-instance v1, Lcom/google/android/gm/OnePaneActivityController;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gm/OnePaneActivityController;-><init>(Lcom/google/android/gm/ActivityController$ControllableActivity;Lcom/google/android/gm/ViewMode;)V

    goto :goto_29
.end method

.method public static forActivity(Lcom/google/android/gm/LabelsActivityController$ControllableLabelsActivity;)Lcom/google/android/gm/LabelsActivityController;
    .registers 4
    .parameter "activity"

    .prologue
    .line 38
    invoke-interface {p0}, Lcom/google/android/gm/LabelsActivityController$ControllableLabelsActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/gm/Utils;->useTabletUI(Landroid/content/Context;)Z

    move-result v1

    .line 41
    .local v1, twoPane:Z
    if-eqz v1, :cond_10

    new-instance v2, Lcom/google/android/gm/TwoPaneLabelsController;

    invoke-direct {v2, p0}, Lcom/google/android/gm/TwoPaneLabelsController;-><init>(Lcom/google/android/gm/LabelsActivityController$ControllableLabelsActivity;)V

    :goto_f
    return-object v2

    :cond_10
    new-instance v2, Lcom/google/android/gm/OnePaneLabelsController;

    invoke-direct {v2, p0}, Lcom/google/android/gm/OnePaneLabelsController;-><init>(Lcom/google/android/gm/LabelsActivityController$ControllableLabelsActivity;)V

    goto :goto_f
.end method

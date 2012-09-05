.class public Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;
.super Ljava/lang/Object;
.source "DetailsOwnedActionsViewBinder.java"


# instance fields
.field protected mContainerFragment:Landroid/support/v4/app/Fragment;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configureAutoUpdateSection()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    .line 50
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mLayout:Landroid/view/View;

    const v4, 0x7f080024

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AutoUpdateSection;

    .line 52
    .local v0, autoUpdateSection:Lcom/google/android/finsky/layout/AutoUpdateSection;
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mLayout:Landroid/view/View;

    const v4, 0x7f0800cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 54
    .local v2, separator:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_26

    .line 55
    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setVisibility(I)V

    .line 56
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_25
    return-void

    .line 60
    :cond_26
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setApplicationPackageName(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    goto :goto_25
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .registers 8
    .parameter "view"
    .parameter "document"

    .prologue
    const/16 v4, 0x8

    .line 33
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mLayout:Landroid/view/View;

    .line 34
    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 36
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->configureAutoUpdateSection()V

    .line 39
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f080024

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, autoUpdateSection:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f080169

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, reviewSection:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_2d

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_2d

    .line 43
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :goto_2c
    return-void

    .line 45
    :cond_2d
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c
.end method

.method public init(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .registers 3
    .parameter "fragment"
    .parameter "navigationManager"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsOwnedActionsViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    .line 30
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method

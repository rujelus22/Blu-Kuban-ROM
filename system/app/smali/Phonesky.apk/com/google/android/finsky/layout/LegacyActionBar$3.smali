.class Lcom/google/android/finsky/layout/LegacyActionBar$3;
.super Ljava/lang/Object;
.source "LegacyActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/LegacyActionBar;->setupSearchButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/LegacyActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    #getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()Lcom/google/android/finsky/navigationmanager/NavigationState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationState;

    if-ne v1, v2, :cond_2b

    .line 177
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    #getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/SearchFragment;

    .line 179
    .local v0, searchFragment:Lcom/google/android/finsky/activities/SearchFragment;
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    #getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SearchFragment;->getQuery()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 183
    .end local v0           #searchFragment:Lcom/google/android/finsky/activities/SearchFragment;
    :goto_2a
    return-void

    .line 181
    :cond_2b
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    #getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onSearchRequested()Z

    goto :goto_2a
.end method

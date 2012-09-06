.class Lcom/google/android/finsky/layout/LegacyActionBar$1;
.super Ljava/lang/Object;
.source "LegacyActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/LegacyActionBar;
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
    .line 72
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    #getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    #getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    .line 80
    :goto_11
    return-void

    .line 78
    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    #getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_11
.end method

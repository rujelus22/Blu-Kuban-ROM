.class Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater$1;
.super Ljava/lang/Object;
.source "ActionBarHelperHoneycombAndLater.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater;->enableLabelNavigation(Landroid/app/Activity;Landroid/widget/SpinnerAdapter;Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater;

.field final synthetic val$onNavigationListener:Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater;Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater$1;->this$0:Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater$1;->val$onNavigationListener:Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 5
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/ActionBarHelperHoneycombAndLater$1;->val$onNavigationListener:Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;->onNavigationItemSelected(IJ)Z

    move-result v0

    return v0
.end method

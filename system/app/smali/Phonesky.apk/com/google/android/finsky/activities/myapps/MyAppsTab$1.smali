.class Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;
.super Ljava/lang/Object;
.source "MyAppsTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTab;->syncViewToState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsTab;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab.1;"
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 142
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab.1;"
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->retryFromError()V

    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->syncViewToState()V

    .line 144
    return-void
.end method

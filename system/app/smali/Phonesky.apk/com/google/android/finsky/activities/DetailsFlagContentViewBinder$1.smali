.class Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsFlagContentViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->populateContent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    #getter for: Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->access$100(Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;

    #getter for: Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsFlagContentViewBinder;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToFlagContent(Ljava/lang/String;)V

    .line 51
    return-void
.end method

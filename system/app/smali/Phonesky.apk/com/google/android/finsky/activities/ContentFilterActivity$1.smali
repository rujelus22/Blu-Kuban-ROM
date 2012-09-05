.class Lcom/google/android/finsky/activities/ContentFilterActivity$1;
.super Ljava/lang/Object;
.source "ContentFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ContentFilterActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$1;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$1;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    #getter for: Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$000(Lcom/google/android/finsky/activities/ContentFilterActivity;)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$1;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/ContentLevel;->exportToSettings(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$1;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setResult(I)V

    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$1;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->finish()V

    .line 102
    return-void
.end method

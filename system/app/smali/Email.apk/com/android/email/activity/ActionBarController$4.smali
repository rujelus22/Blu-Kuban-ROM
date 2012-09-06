.class Lcom/android/email/activity/ActionBarController$4;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ActionBarController;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ActionBarController;)V
    .registers 2
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$4;->this$0:Lcom/android/email/activity/ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .parameter "newText"

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 4
    .parameter "query"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$4;->this$0:Lcom/android/email/activity/ActionBarController;

    iget-object v0, v0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController$4;->this$0:Lcom/android/email/activity/ActionBarController;

    #getter for: Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/email/activity/ActionBarController;->access$600(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/activity/ActionBarController$Callback;->onSearchSubmit(Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x1

    return v0
.end method

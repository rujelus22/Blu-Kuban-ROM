.class Lcom/google/android/youtube/core/async/UserAuthorizer$4;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;->onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field final synthetic val$accounts:[Landroid/accounts/Account;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;[Landroid/accounts/Account;Landroid/app/Activity;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->val$accounts:[Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->val$accounts:[Landroid/accounts/Account;

    array-length v0, v0

    if-ge p3, v0, :cond_1c

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 383
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->val$accounts:[Landroid/accounts/Account;

    aget-object v1, v1, p3

    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V

    .line 387
    :goto_16
    const-string v0, "logging in"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 388
    return-void

    .line 385
    :cond_1c
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$4;->val$activity:Landroid/app/Activity;

    #calls: Lcom/google/android/youtube/core/async/UserAuthorizer;->addAccount(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->access$100(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    goto :goto_16
.end method

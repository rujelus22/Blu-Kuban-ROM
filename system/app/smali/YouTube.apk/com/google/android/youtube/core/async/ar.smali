.class final Lcom/google/android/youtube/core/async/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:[Landroid/accounts/Account;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;[Landroid/accounts/Account;Landroid/app/Activity;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ar;->c:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/ar;->a:[Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/youtube/core/async/ar;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ar;->a:[Landroid/accounts/Account;

    array-length v0, v0

    if-ge p3, v0, :cond_1a

    .line 422
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ar;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 423
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ar;->c:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ar;->a:[Landroid/accounts/Account;

    aget-object v1, v1, p3

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ar;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/accounts/Account;Landroid/app/Activity;)V

    .line 427
    :goto_16
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 428
    return-void

    .line 425
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ar;->c:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ar;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    goto :goto_16
.end method

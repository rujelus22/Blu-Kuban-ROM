.class Lcom/google/android/finsky/adapters/ReviewsAdapter$1;
.super Ljava/lang/Object;
.source "ReviewsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/ReviewsAdapter;->bindItemView(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/ReviewsAdapter;

.field final synthetic val$sourceUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/ReviewsAdapter;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;->this$0:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;->val$sourceUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;->val$sourceUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

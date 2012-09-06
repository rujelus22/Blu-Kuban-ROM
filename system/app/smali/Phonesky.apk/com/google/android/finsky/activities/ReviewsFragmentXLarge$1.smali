.class Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$1;
.super Ljava/lang/Object;
.source "ReviewsFragmentXLarge.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$1;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$1;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #calls: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->collapseForm()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$000(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$1;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    const/4 v1, 0x1

    #calls: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->setFormEnabled(Z)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$100(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;Z)V

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$1;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070173

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)V

    return-void
.end method

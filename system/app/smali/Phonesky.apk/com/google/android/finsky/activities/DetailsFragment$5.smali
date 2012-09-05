.class Lcom/google/android/finsky/activities/DetailsFragment$5;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsFragment;->onPositiveClick(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFragment$5;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$5;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    const v1, 0x7f07013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/DetailsFragment;->toast(II)V

    .line 807
    return-void
.end method

.class Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$2;
.super Ljava/lang/Object;
.source "RecommendationsBucketEntry.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1$2;->this$1:Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 71
    return-void
.end method

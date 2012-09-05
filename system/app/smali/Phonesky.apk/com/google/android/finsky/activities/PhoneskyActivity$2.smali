.class Lcom/google/android/finsky/activities/PhoneskyActivity$2;
.super Ljava/lang/Object;
.source "PhoneskyActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PhoneskyActivity;->initialize(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PhoneskyActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PhoneskyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/finsky/activities/PhoneskyActivity$2;->this$0:Lcom/google/android/finsky/activities/PhoneskyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 76
    const-string v0, "Metadata failed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/activities/PhoneskyActivity$2;->this$0:Lcom/google/android/finsky/activities/PhoneskyActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/PhoneskyActivity;->handleAuthenticationError(Lcom/android/volley/VolleyError;)V

    .line 78
    return-void
.end method

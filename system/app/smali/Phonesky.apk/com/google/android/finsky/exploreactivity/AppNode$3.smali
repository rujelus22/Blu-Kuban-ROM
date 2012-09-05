.class Lcom/google/android/finsky/exploreactivity/AppNode$3;
.super Ljava/lang/Object;
.source "AppNode.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/AppNode;->loadDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/AppNode;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 2
    .parameter

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode$3;->this$0:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 1216
    const-string v0, "Description request error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1217
    return-void
.end method

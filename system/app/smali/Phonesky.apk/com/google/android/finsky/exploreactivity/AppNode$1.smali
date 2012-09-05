.class Lcom/google/android/finsky/exploreactivity/AppNode$1;
.super Ljava/lang/Object;
.source "AppNode.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/AppNode;->loadTexture()V
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
    .line 1052
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/AppNode$1;->this$0:Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode$1;->this$0:Lcom/google/android/finsky/exploreactivity/AppNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->access$000(Lcom/google/android/finsky/exploreactivity/AppNode;)Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    if-ne v0, v1, :cond_16

    .line 1060
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode$1;->this$0:Lcom/google/android/finsky/exploreactivity/AppNode;

    #setter for: Lcom/google/android/finsky/exploreactivity/AppNode;->mIconImageBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-static {v0, p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->access$102(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 1061
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/AppNode$1;->this$0:Lcom/google/android/finsky/exploreactivity/AppNode;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->RECIEVED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    #setter for: Lcom/google/android/finsky/exploreactivity/AppNode;->mImageState:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;
    invoke-static {v0, v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->access$002(Lcom/google/android/finsky/exploreactivity/AppNode;Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;)Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    .line 1063
    :cond_16
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1052
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/AppNode$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method

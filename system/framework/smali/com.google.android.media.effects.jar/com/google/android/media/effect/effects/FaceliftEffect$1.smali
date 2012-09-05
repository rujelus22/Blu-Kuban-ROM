.class Lcom/google/android/media/effect/effects/FaceliftEffect$1;
.super Ljava/lang/Object;
.source "FaceliftEffect.java"

# interfaces
.implements Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/media/effect/effects/FaceliftEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/media/effect/effects/FaceliftEffect;


# direct methods
.method constructor <init>(Lcom/google/android/media/effect/effects/FaceliftEffect;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/media/effect/effects/FaceliftEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceliftEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V
    .registers 6
    .parameter "filter"
    .parameter "result"
    .parameter "userData"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceliftEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceliftEffect;

    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    move-result-object v1

    #setter for: Lcom/google/android/media/effect/effects/FaceliftEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;
    invoke-static {v0, v1}, Lcom/google/android/media/effect/effects/FaceliftEffect;->access$002(Lcom/google/android/media/effect/effects/FaceliftEffect;Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 178
    return-void
.end method

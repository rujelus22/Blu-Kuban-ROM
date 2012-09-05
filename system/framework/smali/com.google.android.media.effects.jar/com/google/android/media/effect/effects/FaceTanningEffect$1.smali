.class Lcom/google/android/media/effect/effects/FaceTanningEffect$1;
.super Ljava/lang/Object;
.source "FaceTanningEffect.java"

# interfaces
.implements Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/media/effect/effects/FaceTanningEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/media/effect/effects/FaceTanningEffect;


# direct methods
.method constructor <init>(Lcom/google/android/media/effect/effects/FaceTanningEffect;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceTanningEffect;

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
    .line 166
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceTanningEffect;

    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    move-result-object v1

    #setter for: Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;
    invoke-static {v0, v1}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->access$002(Lcom/google/android/media/effect/effects/FaceTanningEffect;Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 167
    return-void
.end method

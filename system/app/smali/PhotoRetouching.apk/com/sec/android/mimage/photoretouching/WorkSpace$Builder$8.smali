.class Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$8;
.super Ljava/lang/Object;
.source "WorkSpace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->create()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$8;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$8;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$0(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Lcom/sec/android/mimage/photoretouching/EffectController;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 423
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$8;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$8;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v1

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$0(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Lcom/sec/android/mimage/photoretouching/EffectController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v3, v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->Rotate_Flip(IZZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->bRotate:Z

    .line 424
    :cond_24
    return-void
.end method

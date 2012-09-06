.class Lcom/android/athome/picker/MediaOutputSelector$5;
.super Ljava/lang/Object;
.source "MediaOutputSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/MediaOutputSelector;->configureUi(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/MediaOutputSelector;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/MediaOutputSelector;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputSelector$5;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    .line 281
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$5;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputSelector;->access$400(Lcom/android/athome/picker/MediaOutputSelector;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$5;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputSelector;->access$500(Lcom/android/athome/picker/MediaOutputSelector;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$5;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->updateViewVisibility()V
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputSelector;->access$600(Lcom/android/athome/picker/MediaOutputSelector;)V

    .line 285
    return-void
.end method

.class Lcom/google/android/finsky/local/AsyncWriter$1;
.super Ljava/lang/Object;
.source "AsyncWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/local/AsyncWriter;-><init>(Lcom/google/android/finsky/local/PersistentAssetStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/local/AsyncWriter;

.field final synthetic val$persistentStore:Lcom/google/android/finsky/local/PersistentAssetStore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/AsyncWriter;Lcom/google/android/finsky/local/PersistentAssetStore;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/finsky/local/AsyncWriter$1;->this$0:Lcom/google/android/finsky/local/AsyncWriter;

    iput-object p2, p0, Lcom/google/android/finsky/local/AsyncWriter$1;->val$persistentStore:Lcom/google/android/finsky/local/PersistentAssetStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/local/AsyncWriter$1;->this$0:Lcom/google/android/finsky/local/AsyncWriter;

    iget-object v1, p0, Lcom/google/android/finsky/local/AsyncWriter$1;->val$persistentStore:Lcom/google/android/finsky/local/PersistentAssetStore;

    #calls: Lcom/google/android/finsky/local/AsyncWriter;->mainLoop(Lcom/google/android/finsky/local/PersistentAssetStore;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/local/AsyncWriter;->access$000(Lcom/google/android/finsky/local/AsyncWriter;Lcom/google/android/finsky/local/PersistentAssetStore;)V

    .line 33
    return-void
.end method

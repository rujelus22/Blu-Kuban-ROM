.class Lcom/google/android/plus1/PlusOneController$Worker$2;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController$Worker;->refreshPlusOnesFromSource(Lcom/google/android/plus1/PlusOneReader;Ljava/util/Set;Lcom/google/android/plus1/PlusOneStore;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/plus1/PlusOneController$Worker;

.field final synthetic val$storeValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController$Worker;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Worker$2;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Worker$2;->val$storeValues:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Worker$2;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneController$Worker;->this$0:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker$2;->val$storeValues:Ljava/util/Map;

    #calls: Lcom/google/android/plus1/PlusOneController;->onLoadedValues(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/google/android/plus1/PlusOneController;->access$1200(Lcom/google/android/plus1/PlusOneController;Ljava/util/Map;)V

    .line 567
    return-void
.end method

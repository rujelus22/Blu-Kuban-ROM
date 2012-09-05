.class Lcom/google/android/plus1/PlusOneController$Worker$6;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController$Worker;->refreshOptedInFromSource(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/PlusOneStore;)Lcom/google/android/plus1/PlusOneStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/plus1/PlusOneController$Worker;

.field final synthetic val$finalResult:Lcom/google/android/plus1/PlusOneStatus;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Worker$6;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Worker$6;->val$finalResult:Lcom/google/android/plus1/PlusOneStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Worker$6;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneController$Worker;->this$0:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker$6;->val$finalResult:Lcom/google/android/plus1/PlusOneStatus;

    #calls: Lcom/google/android/plus1/PlusOneController;->onLoadedOptedIn(Lcom/google/android/plus1/PlusOneStatus;)V
    invoke-static {v0, v1}, Lcom/google/android/plus1/PlusOneController;->access$1500(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOneStatus;)V

    .line 670
    return-void
.end method

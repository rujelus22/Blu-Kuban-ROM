.class Lcom/google/android/plus1/PlusOneController$2;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController;->addAccountStatusListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/PlusOneController;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$2;->this$0:Lcom/google/android/plus1/PlusOneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$2;->this$0:Lcom/google/android/plus1/PlusOneController;

    #getter for: Lcom/google/android/plus1/PlusOneController;->mWorker:Lcom/google/android/plus1/PlusOneController$Worker;
    invoke-static {v0}, Lcom/google/android/plus1/PlusOneController;->access$100(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneController$Worker;

    move-result-object v0

    #calls: Lcom/google/android/plus1/PlusOneController$Worker;->refreshOptedIn()V
    invoke-static {v0}, Lcom/google/android/plus1/PlusOneController$Worker;->access$300(Lcom/google/android/plus1/PlusOneController$Worker;)V

    .line 187
    return-void
.end method

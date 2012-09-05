.class Lcom/google/android/plus1/PlusOneController$3;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/PlusOneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/PlusOneController;

.field final synthetic val$person:Lcom/google/android/plus1/PlusOnePerson;


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$3;->this$0:Lcom/google/android/plus1/PlusOneController;

    #getter for: Lcom/google/android/plus1/PlusOneController;->mWorker:Lcom/google/android/plus1/PlusOneController$Worker;
    invoke-static {v0}, Lcom/google/android/plus1/PlusOneController;->access$100(Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/plus1/PlusOneController$Worker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$3;->val$person:Lcom/google/android/plus1/PlusOnePerson;

    #calls: Lcom/google/android/plus1/PlusOneController$Worker;->getProfileImage(Lcom/google/android/plus1/PlusOnePerson;)V
    invoke-static {v0, v1}, Lcom/google/android/plus1/PlusOneController$Worker;->access$400(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOnePerson;)V

    .line 245
    return-void
.end method

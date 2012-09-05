.class Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneController$ValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlusOneListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/plus1/PlusOneController$ValueListener",
        "<",
        "Lcom/google/android/plus1/PlusOne;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 4221
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4221
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 4237
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneException:Ljava/lang/Exception;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8802(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 4238
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->maybeShowPlusOneButton()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8900(Lcom/google/android/apps/books/app/ReaderFragment;)V

    .line 4239
    return-void
.end method

.method public onNewValue(Lcom/google/android/plus1/PlusOne;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 4225
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mLatestPlusOne:Lcom/google/android/plus1/PlusOne;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8702(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/plus1/PlusOne;)Lcom/google/android/plus1/PlusOne;

    .line 4226
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneException:Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8802(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 4228
    const-string v0, "ReaderFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4229
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received new +1 value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->maybeShowPlusOneButton()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8900(Lcom/google/android/apps/books/app/ReaderFragment;)V

    .line 4233
    return-void
.end method

.method public bridge synthetic onNewValue(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4221
    check-cast p1, Lcom/google/android/plus1/PlusOne;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;->onNewValue(Lcom/google/android/plus1/PlusOne;)V

    return-void
.end method

.class Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;
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
    name = "PlusOneStatusListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/plus1/PlusOneController$ValueListener",
        "<",
        "Lcom/google/android/plus1/PlusOneStatus;",
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
    .line 4243
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4243
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 4255
    instance-of v2, p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    if-eqz v2, :cond_19

    .line 4256
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4257
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_18

    move-object v1, p1

    .line 4258
    check-cast v1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .line 4259
    .local v1, authException:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneAuthenticationListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOneController$ValueListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->resolve(Landroid/app/Activity;Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 4265
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #authException:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
    :cond_18
    :goto_18
    return-void

    .line 4262
    :cond_19
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatusException:Ljava/lang/Exception;
    invoke-static {v2, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9102(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 4263
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->maybeShowPlusOneButton()V
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8900(Lcom/google/android/apps/books/app/ReaderFragment;)V

    goto :goto_18
.end method

.method public onNewValue(Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatus:Lcom/google/android/plus1/PlusOneStatus;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9002(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/plus1/PlusOneStatus;)Lcom/google/android/plus1/PlusOneStatus;

    .line 4248
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatusException:Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9102(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 4250
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->maybeShowPlusOneButton()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8900(Lcom/google/android/apps/books/app/ReaderFragment;)V

    .line 4251
    return-void
.end method

.method public bridge synthetic onNewValue(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4243
    check-cast p1, Lcom/google/android/plus1/PlusOneStatus;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;->onNewValue(Lcom/google/android/plus1/PlusOneStatus;)V

    return-void
.end method

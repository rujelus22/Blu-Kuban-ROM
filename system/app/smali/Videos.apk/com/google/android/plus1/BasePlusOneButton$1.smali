.class Lcom/google/android/plus1/BasePlusOneButton$1;
.super Ljava/lang/Object;
.source "BasePlusOneButton.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneController$ValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/BasePlusOneButton;->handleAuthException(Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/plus1/PlusOneController$ValueListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/BasePlusOneButton;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 2
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton$1;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 4
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$1;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #setter for: Lcom/google/android/plus1/BasePlusOneButton;->mAuthorizing:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->access$402(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 369
    const-string v0, "+1 authorization failed."

    invoke-static {v0, p1}, Lcom/google/android/plus1/BasePlusOneButton$L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$1;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #getter for: Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$600(Lcom/google/android/plus1/BasePlusOneButton;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 371
    const-string v0, "Can\'t continue click: user did not authorize +1"

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$1;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #setter for: Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->access$602(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 373
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$1;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    iget-object v1, p0, Lcom/google/android/plus1/BasePlusOneButton$1;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-virtual {v1}, Lcom/google/android/plus1/BasePlusOneButton;->getPermissionNeededDescription()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/plus1/BasePlusOneButton;->mError:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->access$702(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    :cond_28
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$1;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #calls: Lcom/google/android/plus1/BasePlusOneButton;->updateView()V
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$800(Lcom/google/android/plus1/BasePlusOneButton;)V

    .line 376
    return-void
.end method

.method public bridge synthetic onNewValue(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 361
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton$1;->onNewValue(Ljava/lang/Void;)V

    return-void
.end method

.method public onNewValue(Ljava/lang/Void;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$1;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/plus1/BasePlusOneButton;->mAuthorizing:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->access$402(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 364
    const-string v0, "+1 authorization successful."

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->i(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$1;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #calls: Lcom/google/android/plus1/BasePlusOneButton;->maybeContinueClick()V
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$500(Lcom/google/android/plus1/BasePlusOneButton;)V

    .line 366
    return-void
.end method

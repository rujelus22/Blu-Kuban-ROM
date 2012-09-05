.class Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;
.super Ljava/lang/Object;
.source "BasePlusOneButton.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneController$ValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/BasePlusOneButton;
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
.field final synthetic this$0:Lcom/google/android/plus1/BasePlusOneButton;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 2
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error receiving +1 data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #getter for: Lcom/google/android/plus1/BasePlusOneButton;->mOutsidePlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$1300(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/PlusOneController$ValueListener;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 518
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #getter for: Lcom/google/android/plus1/BasePlusOneButton;->mOutsidePlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$1300(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/PlusOneController$ValueListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onError(Ljava/lang/Exception;)V

    .line 521
    :cond_44
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #getter for: Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$1400(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/PlusOne;

    move-result-object v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #getter for: Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$1500(Lcom/google/android/plus1/BasePlusOneButton;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 522
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #setter for: Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z
    invoke-static {v0, v2}, Lcom/google/android/plus1/BasePlusOneButton;->access$1502(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 525
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #calls: Lcom/google/android/plus1/BasePlusOneButton;->handleException(Ljava/lang/Exception;Z)V
    invoke-static {v0, p1, v2}, Lcom/google/android/plus1/BasePlusOneButton;->access$1700(Lcom/google/android/plus1/BasePlusOneButton;Ljava/lang/Exception;Z)V

    .line 527
    :cond_5e
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/plus1/BasePlusOneButton;->mResultPending:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->access$1602(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 528
    return-void
.end method

.method public onNewValue(Lcom/google/android/plus1/PlusOne;)V
    .registers 5
    .parameter "newPlusOne"

    .prologue
    const/4 v2, 0x0

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received +1 data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton$L;->d(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #getter for: Lcom/google/android/plus1/BasePlusOneButton;->mOutsidePlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$1300(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/PlusOneController$ValueListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 505
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #getter for: Lcom/google/android/plus1/BasePlusOneButton;->mOutsidePlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$1300(Lcom/google/android/plus1/BasePlusOneButton;)Lcom/google/android/plus1/PlusOneController$ValueListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V

    .line 507
    :cond_28
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #setter for: Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatus:Lcom/google/android/plus1/PlusOne;
    invoke-static {v0, p1}, Lcom/google/android/plus1/BasePlusOneButton;->access$1402(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/PlusOne;)Lcom/google/android/plus1/PlusOne;

    .line 508
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #setter for: Lcom/google/android/plus1/BasePlusOneButton;->mPlusOneStatusError:Z
    invoke-static {v0, v2}, Lcom/google/android/plus1/BasePlusOneButton;->access$1502(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 509
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #calls: Lcom/google/android/plus1/BasePlusOneButton;->updateView()V
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$900(Lcom/google/android/plus1/BasePlusOneButton;)V

    .line 510
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #setter for: Lcom/google/android/plus1/BasePlusOneButton;->mResultPending:Z
    invoke-static {v0, v2}, Lcom/google/android/plus1/BasePlusOneButton;->access$1602(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 511
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #calls: Lcom/google/android/plus1/BasePlusOneButton;->maybeContinueClick()V
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$500(Lcom/google/android/plus1/BasePlusOneButton;)V

    .line 512
    return-void
.end method

.method public bridge synthetic onNewValue(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 500
    check-cast p1, Lcom/google/android/plus1/PlusOne;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton$PlusOneListener;->onNewValue(Lcom/google/android/plus1/PlusOne;)V

    return-void
.end method

.class Lcom/google/android/street/Street$DrdListener;
.super Ljava/lang/Object;
.source "Street.java"

# interfaces
.implements Lcom/google/mobile/googlenav/datarequest/DataRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/Street;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/street/Street;


# direct methods
.method private constructor <init>(Lcom/google/android/street/Street;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/street/Street;Lcom/google/android/street/Street$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/street/Street$DrdListener;-><init>(Lcom/google/android/street/Street;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V
    .registers 4
    .parameter "dataRequest"

    .prologue
    const/4 v1, -0x1

    .line 269
    iget-object v0, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    #getter for: Lcom/google/android/street/Street;->mDrdNetworkError:I
    invoke-static {v0}, Lcom/google/android/street/Street;->access$000(Lcom/google/android/street/Street;)I

    move-result v0

    if-eq v0, v1, :cond_1f

    .line 270
    iget-object v0, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    #setter for: Lcom/google/android/street/Street;->mDrdNetworkError:I
    invoke-static {v0, v1}, Lcom/google/android/street/Street;->access$002(Lcom/google/android/street/Street;I)I

    .line 271
    iget-object v0, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    #getter for: Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;
    invoke-static {v0}, Lcom/google/android/street/Street;->access$100(Lcom/google/android/street/Street;)Lcom/google/android/street/StreetView;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 272
    iget-object v0, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    #getter for: Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;
    invoke-static {v0}, Lcom/google/android/street/Street;->access$100(Lcom/google/android/street/Street;)Lcom/google/android/street/StreetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->postInvalidate()V

    .line 275
    :cond_1f
    return-void
.end method

.method public onNetworkError(IZLjava/lang/String;)V
    .registers 6
    .parameter "errorCode"
    .parameter "networkEverWorked"
    .parameter "debugMessage"

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    #getter for: Lcom/google/android/street/Street;->mDrdNetworkError:I
    invoke-static {v0}, Lcom/google/android/street/Street;->access$000(Lcom/google/android/street/Street;)I

    move-result v0

    if-eq v0, p1, :cond_48

    .line 283
    iget-object v0, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    #setter for: Lcom/google/android/street/Street;->mDrdNetworkError:I
    invoke-static {v0, p1}, Lcom/google/android/street/Street;->access$002(Lcom/google/android/street/Street;I)I

    .line 284
    iget-object v0, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    #getter for: Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;
    invoke-static {v0}, Lcom/google/android/street/Street;->access$100(Lcom/google/android/street/Street;)Lcom/google/android/street/StreetView;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 285
    iget-object v0, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    #getter for: Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;
    invoke-static {v0}, Lcom/google/android/street/Street;->access$100(Lcom/google/android/street/Street;)Lcom/google/android/street/StreetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->postInvalidate()V

    .line 288
    :cond_48
    return-void
.end method

.method public onPermanentFailure(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    #getter for: Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;
    invoke-static {v0}, Lcom/google/android/street/Street;->access$100(Lcom/google/android/street/Street;)Lcom/google/android/street/StreetView;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 294
    iget-object v0, p0, Lcom/google/android/street/Street$DrdListener;->this$0:Lcom/google/android/street/Street;

    #getter for: Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;
    invoke-static {v0}, Lcom/google/android/street/Street;->access$100(Lcom/google/android/street/Street;)Lcom/google/android/street/StreetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->postInvalidate()V

    .line 296
    :cond_3d
    return-void
.end method

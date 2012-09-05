.class Lcom/vlingo/client/home/ViewServer$NoopViewServer;
.super Lcom/vlingo/client/home/ViewServer;
.source "ViewServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/home/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoopViewServer"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/home/ViewServer;-><init>(Lcom/vlingo/client/home/ViewServer$1;)V

    .line 455
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/home/ViewServer$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/vlingo/client/home/ViewServer$NoopViewServer;-><init>()V

    return-void
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 474
    return-void
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .registers 3
    .parameter "view"
    .parameter "name"

    .prologue
    .line 482
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 478
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 486
    return-void
.end method

.method public run()V
    .registers 1

    .prologue
    .line 498
    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 490
    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 494
    return-void
.end method

.method public start()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .registers 2

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

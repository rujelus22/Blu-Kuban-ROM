.class Lcom/samsung/swift/applet/PopupEasyConnectActivity$4;
.super Ljava/lang/Object;
.source "PopupEasyConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/PopupEasyConnectActivity;->delayedEnableButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$4;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$4;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    const/4 v1, 0x1

    #calls: Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setEnableRefresh(Z)V
    invoke-static {v0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->access$200(Lcom/samsung/swift/applet/PopupEasyConnectActivity;Z)V

    .line 319
    return-void
.end method

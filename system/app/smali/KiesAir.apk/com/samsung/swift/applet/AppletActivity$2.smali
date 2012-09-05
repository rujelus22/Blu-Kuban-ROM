.class Lcom/samsung/swift/applet/AppletActivity$2;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->delayedEnableButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/AppletActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$2;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 794
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$2;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const/4 v1, 0x1

    #calls: Lcom/samsung/swift/applet/AppletActivity;->setButtonEnabled(Z)V
    invoke-static {v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->access$100(Lcom/samsung/swift/applet/AppletActivity;Z)V

    .line 795
    return-void
.end method

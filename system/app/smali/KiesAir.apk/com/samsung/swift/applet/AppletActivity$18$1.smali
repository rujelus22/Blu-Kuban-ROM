.class Lcom/samsung/swift/applet/AppletActivity$18$1;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity$18;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/swift/applet/AppletActivity$18;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity$18;)V
    .registers 2
    .parameter

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$18$1;->this$1:Lcom/samsung/swift/applet/AppletActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1680
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v0, :cond_c

    .line 1682
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$18$1;->this$1:Lcom/samsung/swift/applet/AppletActivity$18;

    iget-object v0, v0, Lcom/samsung/swift/applet/AppletActivity$18;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->showDialog(I)V

    .line 1684
    :cond_c
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$18$1;->this$1:Lcom/samsung/swift/applet/AppletActivity$18;

    iget-object v0, v0, Lcom/samsung/swift/applet/AppletActivity$18;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const/4 v1, 0x1

    #calls: Lcom/samsung/swift/applet/AppletActivity;->setButtonEnabled(Z)V
    invoke-static {v0, v1}, Lcom/samsung/swift/applet/AppletActivity;->access$100(Lcom/samsung/swift/applet/AppletActivity;Z)V

    .line 1685
    return-void
.end method

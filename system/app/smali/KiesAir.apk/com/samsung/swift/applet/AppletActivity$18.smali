.class Lcom/samsung/swift/applet/AppletActivity$18;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1672
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$18;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/samsung/swift/applet/AppletActivity$18;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #calls: Lcom/samsung/swift/applet/AppletActivity;->getHandler()Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/swift/applet/AppletActivity;->access$000(Lcom/samsung/swift/applet/AppletActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/applet/AppletActivity$18$1;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/AppletActivity$18$1;-><init>(Lcom/samsung/swift/applet/AppletActivity$18;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1687
    return-void
.end method

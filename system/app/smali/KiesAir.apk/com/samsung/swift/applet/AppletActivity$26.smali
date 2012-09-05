.class Lcom/samsung/swift/applet/AppletActivity$26;
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
    .line 1789
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$26;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1792
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/swift/security/SecurityManager;->getConnections()[Lcom/samsung/swift/security/Connection;

    move-result-object v2

    .line 1793
    .local v2, connections:[Lcom/samsung/swift/security/Connection;
    move-object v0, v2

    .local v0, arr$:[Lcom/samsung/swift/security/Connection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_2c

    aget-object v1, v0, v3

    .line 1795
    .local v1, c:Lcom/samsung/swift/security/Connection;
    invoke-interface {v1}, Lcom/samsung/swift/security/Connection;->isWhiteListed()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1797
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    .line 1798
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/swift/security/SecurityManager;->update(Lcom/samsung/swift/security/Connection;)V

    .line 1799
    iget-object v5, p0, Lcom/samsung/swift/applet/AppletActivity$26;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-interface {v1}, Lcom/samsung/swift/security/Connection;->getName()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/samsung/swift/applet/AppletActivity;->deviceName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/samsung/swift/applet/AppletActivity;->access$2502(Lcom/samsung/swift/applet/AppletActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1793
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1802
    .end local v1           #c:Lcom/samsung/swift/security/Connection;
    :cond_2c
    invoke-static {}, Lcom/samsung/swift/service/fx/UploadServer;->getInstance()Lcom/samsung/swift/service/fx/UploadServer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/swift/service/fx/UploadServer;->shutdownActiveConnections()V

    .line 1803
    iget-object v5, p0, Lcom/samsung/swift/applet/AppletActivity$26;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/samsung/swift/applet/AppletActivity;->showDialog(I)V

    .line 1804
    return-void
.end method

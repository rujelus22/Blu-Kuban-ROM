.class Lcom/samsung/swift/applet/AppletActivity$27;
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
    .line 1814
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$27;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1817
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/security/SecurityManager;->reset()V

    .line 1818
    invoke-static {}, Lcom/samsung/swift/service/fx/UploadServer;->getInstance()Lcom/samsung/swift/service/fx/UploadServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/fx/UploadServer;->shutdownActiveConnections()V

    .line 1819
    return-void
.end method

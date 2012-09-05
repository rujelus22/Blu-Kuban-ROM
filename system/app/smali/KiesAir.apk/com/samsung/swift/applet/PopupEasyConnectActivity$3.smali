.class Lcom/samsung/swift/applet/PopupEasyConnectActivity$3;
.super Ljava/lang/Object;
.source "PopupEasyConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/PopupEasyConnectActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 195
    iput-object p1, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$3;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$3;->this$0:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-virtual {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->doScanServer()V

    .line 199
    return-void
.end method

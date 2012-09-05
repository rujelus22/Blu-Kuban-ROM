.class Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$1;
.super Landroid/os/Handler;
.source "EvClipBoardHelperSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$1;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "bNative"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 46
    .local v2, nNative:I
    const-string v4, "nDataType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, nDataType:I
    const-string v4, "DataString"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, strData:Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$1;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    #getter for: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v4}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$0(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v1, v3}, Lcom/infraware/office/evengine/EvInterface;->IEditDocument(IIILjava/lang/String;)V

    .line 50
    return-void
.end method

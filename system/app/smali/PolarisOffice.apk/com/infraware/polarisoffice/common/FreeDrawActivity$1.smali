.class Lcom/infraware/polarisoffice/common/FreeDrawActivity$1;
.super Ljava/lang/Object;
.source "FreeDrawActivity.java"

# interfaces
.implements Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FreeDrawActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FreeDrawActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentCreated(II)V
    .registers 11
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, bLandScape:I
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_12

    .line 56
    const/4 v0, 0x1

    .line 59
    :cond_12
    if-lez p1, :cond_43

    .line 60
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget-object v4, v4, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4, v0, p1, p2}, Lcom/infraware/office/evengine/EvInterface;->IChangeScreen(III)V

    .line 63
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 64
    .local v3, display:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 65
    .local v1, centerX:I
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 66
    .local v2, centerY:I
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget-object v4, v4, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4, v6, v1, v2, v6}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 67
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget-object v4, v4, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4, v7, v1, v2, v6}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 69
    .end local v1           #centerX:I
    .end local v2           #centerY:I
    .end local v3           #display:Landroid/view/Display;
    :cond_43
    return-void
.end method

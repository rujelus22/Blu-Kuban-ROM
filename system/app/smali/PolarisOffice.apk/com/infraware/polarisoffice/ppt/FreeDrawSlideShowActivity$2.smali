.class Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$2;
.super Ljava/lang/Object;
.source "FreeDrawSlideShowActivity.java"

# interfaces
.implements Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentCreated(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->access$1(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->access$1(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    iget v1, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/infraware/office/evengine/EvInterface;->ISlideShow(III)V

    .line 66
    return-void
.end method

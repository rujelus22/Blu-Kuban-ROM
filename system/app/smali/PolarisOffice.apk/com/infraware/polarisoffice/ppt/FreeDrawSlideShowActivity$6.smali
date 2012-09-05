.class Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$6;
.super Ljava/lang/Object;
.source "FreeDrawSlideShowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->makeFreeDrawSaveAlert()V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$6;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "paramDialogInterface"
    .parameter "paramInt"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$6;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->access$1(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IDeletePenDataForSlideShow()V

    .line 229
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$6;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    #calls: Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->closeActivity()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->access$2(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V

    .line 230
    return-void
.end method

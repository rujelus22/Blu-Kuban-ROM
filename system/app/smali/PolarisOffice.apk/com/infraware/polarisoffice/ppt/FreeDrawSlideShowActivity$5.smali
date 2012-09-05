.class Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$5;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$5;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$5;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    #calls: Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->closeActivity()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->access$2(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V

    .line 223
    return-void
.end method

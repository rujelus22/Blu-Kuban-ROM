.class Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$4;
.super Ljava/lang/Object;
.source "FreeDrawSlideShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->initGotoPageBtn()V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->goToPage(I)V

    .line 93
    return-void
.end method

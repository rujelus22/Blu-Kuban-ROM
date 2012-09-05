.class Lcom/infraware/polarisoffice/ppt/SlideShowActivity$2;
.super Ljava/lang/Object;
.source "SlideShowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->AlertErrorAndCloseDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideShowActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideShowActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideShowActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;->finish()V

    .line 362
    return-void
.end method

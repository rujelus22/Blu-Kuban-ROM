.class Lcom/infraware/polarisoffice/common/FreeDrawToolbar$5;
.super Ljava/lang/Object;
.source "FreeDrawToolbar.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->createSubToolBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FreeDrawToolbar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$5;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$5;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 465
    return-void
.end method

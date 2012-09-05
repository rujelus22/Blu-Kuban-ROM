.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$3;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Lcom/infraware/polarisoffice/common/ImmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->showDelayedIme()V

    .line 290
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Landroid/widget/PopupWindow;)V

    .line 291
    return-void
.end method

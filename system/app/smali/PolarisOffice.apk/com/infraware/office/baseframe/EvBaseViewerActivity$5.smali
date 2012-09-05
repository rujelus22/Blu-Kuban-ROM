.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$5;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 335
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x6

    if-eq p2, v0, :cond_1f

    if-nez p2, :cond_28

    .line 337
    :cond_1f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Lcom/infraware/polarisoffice/common/ImmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->hideForcedIme()V

    .line 339
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

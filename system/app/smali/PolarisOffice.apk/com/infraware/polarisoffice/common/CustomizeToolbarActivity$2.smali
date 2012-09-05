.class Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$2;
.super Ljava/lang/Object;
.source "CustomizeToolbarActivity.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$2;->this$0:Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$2;->this$0:Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;

    #getter for: Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->access$0(Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;)Lcom/infraware/polarisoffice/common/MultiAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/infraware/polarisoffice/common/MultiAdapter;

    if-eqz v0, :cond_1c

    .line 131
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$2;->this$0:Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;

    #getter for: Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->access$0(Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;)Lcom/infraware/polarisoffice/common/MultiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/MultiAdapter;->onRemove(I)V

    .line 132
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity$2;->this$0:Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/CustomizeToolbarActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 134
    :cond_1c
    return-void
.end method

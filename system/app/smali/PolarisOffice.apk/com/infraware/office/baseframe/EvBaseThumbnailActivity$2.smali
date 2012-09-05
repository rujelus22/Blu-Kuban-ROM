.class Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$2;
.super Ljava/lang/Object;
.source "EvBaseThumbnailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "EvBaseThumbnailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onItemClick = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "THUMBNAIL_GOTO"

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->finish()V

    .line 136
    return-void
.end method

.class Lcom/samsung/fumo/UpdateSoftware$2;
.super Ljava/lang/Object;
.source "UpdateSoftware.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/fumo/UpdateSoftware;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/UpdateSoftware;


# direct methods
.method constructor <init>(Lcom/samsung/fumo/UpdateSoftware;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/fumo/UpdateSoftware$2;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 85
    const-string v0, "UpdateSoftware"

    const-string v1, "No pressed ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$2;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #getter for: Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/fumo/UpdateSoftware;->access$100(Lcom/samsung/fumo/UpdateSoftware;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->cancelUpdate()V

    .line 87
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$2;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #calls: Lcom/samsung/fumo/UpdateSoftware;->showCancelUpdateDlg()V
    invoke-static {v0}, Lcom/samsung/fumo/UpdateSoftware;->access$300(Lcom/samsung/fumo/UpdateSoftware;)V

    .line 88
    return-void
.end method

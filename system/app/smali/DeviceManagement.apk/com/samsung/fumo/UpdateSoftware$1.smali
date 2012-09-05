.class Lcom/samsung/fumo/UpdateSoftware$1;
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
    .line 70
    iput-object p1, p0, Lcom/samsung/fumo/UpdateSoftware$1;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 72
    const-string v0, "UpdateSoftware"

    const-string v1, "Yes pressed ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$1;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #getter for: Lcom/samsung/fumo/UpdateSoftware;->hfaPrlFumoUpdate:Z
    invoke-static {v0}, Lcom/samsung/fumo/UpdateSoftware;->access$000(Lcom/samsung/fumo/UpdateSoftware;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 74
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$1;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #getter for: Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/fumo/UpdateSoftware;->access$100(Lcom/samsung/fumo/UpdateSoftware;)Lcom/samsung/client/DMApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 75
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$1;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #getter for: Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/fumo/UpdateSoftware;->access$100(Lcom/samsung/fumo/UpdateSoftware;)Lcom/samsung/client/DMApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 77
    :cond_23
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$1;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #calls: Lcom/samsung/fumo/UpdateSoftware;->resetPhone()V
    invoke-static {v0}, Lcom/samsung/fumo/UpdateSoftware;->access$200(Lcom/samsung/fumo/UpdateSoftware;)V

    .line 78
    return-void
.end method

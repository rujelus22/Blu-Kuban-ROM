.class Lcom/samsung/fumo/UpdateSoftware$8;
.super Ljava/lang/Object;
.source "UpdateSoftware.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/fumo/UpdateSoftware;->resetPhone()V
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
    .line 237
    iput-object p1, p0, Lcom/samsung/fumo/UpdateSoftware$8;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 240
    const-string v0, "UpdateSoftware"

    const-string v1, "onDismiss... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$8;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    invoke-virtual {v0}, Lcom/samsung/fumo/UpdateSoftware;->finish()V

    .line 242
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$8;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #calls: Lcom/samsung/fumo/UpdateSoftware;->updatedone()V
    invoke-static {v0}, Lcom/samsung/fumo/UpdateSoftware;->access$500(Lcom/samsung/fumo/UpdateSoftware;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$8;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #getter for: Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/fumo/UpdateSoftware;->access$100(Lcom/samsung/fumo/UpdateSoftware;)Lcom/samsung/client/DMApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 244
    return-void
.end method

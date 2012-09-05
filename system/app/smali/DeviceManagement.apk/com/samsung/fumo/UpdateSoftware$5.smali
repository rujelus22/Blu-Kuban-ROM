.class Lcom/samsung/fumo/UpdateSoftware$5;
.super Ljava/lang/Object;
.source "UpdateSoftware.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/fumo/UpdateSoftware;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 155
    iput-object p1, p0, Lcom/samsung/fumo/UpdateSoftware$5;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 158
    const-string v0, "UpdateSoftware"

    const-string v1, "onDismiss... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$5;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    invoke-virtual {v0}, Lcom/samsung/fumo/UpdateSoftware;->finish()V

    .line 160
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware$5;->this$0:Lcom/samsung/fumo/UpdateSoftware;

    #calls: Lcom/samsung/fumo/UpdateSoftware;->cancelUpdDlg()V
    invoke-static {v0}, Lcom/samsung/fumo/UpdateSoftware;->access$400(Lcom/samsung/fumo/UpdateSoftware;)V

    .line 161
    return-void
.end method

.class Lcom/sprint/w/installer/SprintIdHome$8;
.super Ljava/lang/Object;
.source "SprintIdHome.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/SprintIdHome;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/SprintIdHome;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/SprintIdHome;)V
    .registers 2
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdHome$8;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dlg"
    .parameter "whichButton"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$8;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/SprintIdHome;->dismissDialog(I)V

    .line 286
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$8;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #getter for: Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/w/installer/SprintIdHome;->access$300(Lcom/sprint/w/installer/SprintIdHome;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$8;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #getter for: Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/w/installer/SprintIdHome;->access$300(Lcom/sprint/w/installer/SprintIdHome;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 289
    return-void
.end method

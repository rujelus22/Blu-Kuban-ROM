.class Lcom/sprint/w/installer/SprintIdHome$9;
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
    .line 298
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdHome$9;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dlg"
    .parameter "whichButton"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome$9;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/SprintIdHome;->dismissDialog(I)V

    .line 301
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome$9;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$9;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #getter for: Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/w/installer/SprintIdHome;->access$300(Lcom/sprint/w/installer/SprintIdHome;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/SprintIdHome;->goGetNew(Landroid/content/Context;)V

    .line 302
    return-void
.end method

.class Lcom/sprint/w/installer/SprintIdHome$5;
.super Ljava/lang/Object;
.source "SprintIdHome.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/SprintIdHome;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
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
    .line 260
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdHome$5;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome$5;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/SprintIdHome;->removeDialog(I)V

    .line 263
    return-void
.end method

.class Lcom/sprint/w/installer/dev/DevModeHandlerActivity$2;
.super Ljava/lang/Object;
.source "DevModeHandlerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/dev/DevModeHandlerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$2;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$2;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    const-class v2, Lcom/sprint/w/installer/dev/DeveloperLanding;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$2;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    invoke-virtual {v1, v0}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

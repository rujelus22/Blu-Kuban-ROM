.class Lcom/sprint/w/installer/dev/DevModeHandlerActivity$3;
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
    .line 139
    iput-object p1, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$3;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$3;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->startProcessing()V

    .line 142
    return-void
.end method

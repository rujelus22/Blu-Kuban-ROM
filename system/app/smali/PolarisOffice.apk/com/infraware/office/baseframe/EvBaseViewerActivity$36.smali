.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$36;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$36;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 2162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$36;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindReplaceEnabled(Z)V

    .line 2165
    return-void
.end method

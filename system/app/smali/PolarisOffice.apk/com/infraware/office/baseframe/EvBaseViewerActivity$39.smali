.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$39;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$39;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 2191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$39;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->finish()V

    .line 2195
    return-void
.end method
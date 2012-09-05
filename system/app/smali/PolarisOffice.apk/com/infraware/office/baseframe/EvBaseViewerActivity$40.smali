.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$40;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$40;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 2197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2200
    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    .line 2201
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$40;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->finish()V

    .line 2202
    const/4 v0, 0x1

    .line 2204
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

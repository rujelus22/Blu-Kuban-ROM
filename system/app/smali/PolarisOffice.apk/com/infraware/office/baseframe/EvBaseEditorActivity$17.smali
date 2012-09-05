.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$17;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$17;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 2559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 2563
    packed-switch p2, :pswitch_data_28

    .line 2577
    :goto_4
    return-void

    .line 2565
    :pswitch_5
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$17;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/infraware/office/evengine/EvInterface;->ICellInsertDelete(II)V

    goto :goto_4

    .line 2568
    :pswitch_e
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$17;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/infraware/office/evengine/EvInterface;->ICellInsertDelete(II)V

    goto :goto_4

    .line 2571
    :pswitch_17
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$17;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v2, v2}, Lcom/infraware/office/evengine/EvInterface;->ICellInsertDelete(II)V

    goto :goto_4

    .line 2574
    :pswitch_1f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$17;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/infraware/office/evengine/EvInterface;->ICellInsertDelete(II)V

    goto :goto_4

    .line 2563
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
        :pswitch_e
        :pswitch_17
        :pswitch_1f
    .end packed-switch
.end method

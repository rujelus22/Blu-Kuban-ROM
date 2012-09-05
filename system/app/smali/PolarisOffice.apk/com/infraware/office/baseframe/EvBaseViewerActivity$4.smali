.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_6a

    .line 329
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 300
    :pswitch_a
    const-string v0, "EvBaseViewerActivity"

    const-string v1, "find_function_button"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dismissPopupWindow()Z

    move-result v0

    if-nez v0, :cond_9

    .line 303
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Lcom/infraware/polarisoffice/common/ImmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->hideForcedIme()V

    .line 304
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v1, 0x7f0c0136

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->SearchSetPopupWindow(I)V

    goto :goto_9

    .line 307
    :pswitch_2b
    const-string v0, "EvBaseViewerActivity"

    const-string v1, "find_prev_button"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindText(I)V

    goto :goto_9

    .line 311
    :pswitch_38
    const-string v0, "EvBaseViewerActivity"

    const-string v1, "find_next_button"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindText(I)V

    goto :goto_9

    .line 315
    :pswitch_45
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dismissPopupWindow()Z

    move-result v0

    if-nez v0, :cond_9

    .line 317
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const v1, 0x7f0c013c

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->SearchSetPopupWindow(I)V

    goto :goto_9

    .line 320
    :pswitch_56
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->ReplaceText(I)V

    goto :goto_9

    .line 323
    :pswitch_5c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->ReplaceText(I)V

    goto :goto_9

    .line 326
    :pswitch_62
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->ReplaceText(I)V

    goto :goto_9

    .line 297
    nop

    :pswitch_data_6a
    .packed-switch 0x7f0c0136
        :pswitch_a
        :pswitch_38
        :pswitch_2b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_45
        :pswitch_9
        :pswitch_9
        :pswitch_56
        :pswitch_5c
        :pswitch_62
    .end packed-switch
.end method

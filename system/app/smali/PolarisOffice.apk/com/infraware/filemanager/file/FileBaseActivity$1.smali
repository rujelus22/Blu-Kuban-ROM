.class Lcom/infraware/filemanager/file/FileBaseActivity$1;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileBaseActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$1;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$1;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateState:I
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$0(Lcom/infraware/filemanager/file/FileBaseActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 381
    :goto_a
    return-void

    .line 371
    :pswitch_b
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$1;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #setter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I
    invoke-static {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$1(Lcom/infraware/filemanager/file/FileBaseActivity;I)V

    .line 372
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$1;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v0, v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a

    .line 375
    :pswitch_18
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$1;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v0, v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutProgress:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$1;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_nUpdateColor:I
    invoke-static {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$2(Lcom/infraware/filemanager/file/FileBaseActivity;)I

    move-result v1

    const/high16 v2, 0x100

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_a

    .line 378
    :pswitch_29
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$1;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v0, v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_layoutProgress:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a

    .line 368
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_b
        :pswitch_18
        :pswitch_29
    .end packed-switch
.end method

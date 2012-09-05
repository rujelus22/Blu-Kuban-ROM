.class Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;
.super Ljava/lang/Object;
.source "SlideNoteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 129
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    const v5, 0x7f0c01ea

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 130
    .local v1, parent_layout:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    const v5, 0x7f0c01eb

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 131
    .local v0, left:Landroid/widget/ImageButton;
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    const v5, 0x7f0c01ee

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 133
    .local v2, right:Landroid/widget/ImageButton;
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    #setter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapWidth:I
    invoke-static {v4, v5}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;I)V

    .line 134
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1d

    #setter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapHeight:I
    invoke-static {v4, v5}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$2(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;I)V

    .line 136
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v4}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$3(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapWidth:I
    invoke-static {v5}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$4(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_slideBitmapHeight:I
    invoke-static {v6}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$5(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I
    invoke-static {v7}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$6(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/infraware/office/evengine/EvInterface;->ISlideNote(III)V

    .line 137
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v4}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$3(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_nPageNum:I
    invoke-static {v5}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$6(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/infraware/office/evengine/EvInterface;->IGetSlideNoteString_Editor(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, strForSet:Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->inputBox:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 140
    if-eqz v3, :cond_93

    .line 141
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$7(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;Ljava/lang/String;)V

    .line 144
    :goto_92
    return-void

    .line 143
    :cond_93
    iget-object v4, p0, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    #setter for: Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->m_strCmp:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;->access$7(Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;Ljava/lang/String;)V

    goto :goto_92
.end method

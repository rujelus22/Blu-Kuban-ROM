.class Lcom/infraware/filemanager/file/FileBaseActivity$8;
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
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$8;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 457
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$8;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oToastMsg:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$10(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_24

    .line 458
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$8;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$8;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v2, p0, Lcom/infraware/filemanager/file/FileBaseActivity$8;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_strToastMsg:Ljava/lang/String;
    invoke-static {v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$11(Lcom/infraware/filemanager/file/FileBaseActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oToastMsg:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$12(Lcom/infraware/filemanager/file/FileBaseActivity;Landroid/widget/Toast;)V

    .line 462
    :goto_1a
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$8;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oToastMsg:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$10(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    return-void

    .line 460
    :cond_24
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$8;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_oToastMsg:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$10(Lcom/infraware/filemanager/file/FileBaseActivity;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$8;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #getter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_strToastMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$11(Lcom/infraware/filemanager/file/FileBaseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

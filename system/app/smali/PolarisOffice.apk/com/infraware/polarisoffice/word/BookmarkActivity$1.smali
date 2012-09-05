.class Lcom/infraware/polarisoffice/word/BookmarkActivity$1;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/word/BookmarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$1;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 104
    :cond_7
    :goto_7
    return-void

    .line 92
    :pswitch_8
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$1;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mbClick:Z
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 94
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$1;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$1(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 96
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$1;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$1(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 99
    :cond_24
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$1;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #calls: Lcom/infraware/polarisoffice/word/BookmarkActivity;->AddBookmark()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$2(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V

    .line 101
    :cond_29
    const-string v0, "BookmarkActivity"

    const-string v1, "bookmark_add_button"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 90
    nop

    :pswitch_data_32
    .packed-switch 0x7f0c0048
        :pswitch_8
    .end packed-switch
.end method

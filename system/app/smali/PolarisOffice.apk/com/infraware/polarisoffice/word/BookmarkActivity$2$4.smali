.class Lcom/infraware/polarisoffice/word/BookmarkActivity$2$4;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$4;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$4;->this$1:Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;
    invoke-static {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mbClick:Z
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$5(Lcom/infraware/polarisoffice/word/BookmarkActivity;Z)V

    .line 163
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 164
    return-void
.end method

.class Lcom/infraware/polarisoffice/viewer/BookClipActivity$1;
.super Ljava/lang/Object;
.source "BookClipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/viewer/BookClipActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$1;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 97
    :goto_7
    return-void

    .line 89
    :pswitch_8
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$1;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #getter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z
    invoke-static {v0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$0(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 91
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$1;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    const/4 v1, 0x1

    #setter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$1(Lcom/infraware/polarisoffice/viewer/BookClipActivity;Z)V

    .line 92
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$1;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #calls: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->AddBookClip()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$2(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    .line 94
    :cond_1b
    const-string v0, "BookClipActivity"

    const-string v1, "bookclip_add_button"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 86
    nop

    :pswitch_data_24
    .packed-switch 0x7f0c0048
        :pswitch_8
    .end packed-switch
.end method

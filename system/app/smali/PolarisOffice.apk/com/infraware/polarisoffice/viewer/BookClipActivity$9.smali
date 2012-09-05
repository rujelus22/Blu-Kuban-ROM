.class Lcom/infraware/polarisoffice/viewer/BookClipActivity$9;
.super Ljava/lang/Object;
.source "BookClipActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/viewer/BookClipActivity;->showDuplicateMsgPopup()V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$9;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 348
    packed-switch p2, :pswitch_data_10

    .line 354
    :goto_4
    return v0

    .line 350
    :pswitch_5
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$9;->this$0:Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    #setter for: Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z
    invoke-static {v1, v0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->access$1(Lcom/infraware/polarisoffice/viewer/BookClipActivity;Z)V

    .line 351
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 352
    const/4 v0, 0x1

    goto :goto_4

    .line 348
    nop

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method

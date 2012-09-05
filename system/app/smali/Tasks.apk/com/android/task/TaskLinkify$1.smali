.class final Lcom/android/task/TaskLinkify$1;
.super Ljava/lang/Object;
.source "TaskLinkify.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/task/TaskLinkify;->showPopup(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 191
    packed-switch p2, :pswitch_data_a

    .line 197
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 193
    :pswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    goto :goto_4

    .line 191
    :pswitch_data_a
    .packed-switch 0x52
        :pswitch_5
    .end packed-switch
.end method

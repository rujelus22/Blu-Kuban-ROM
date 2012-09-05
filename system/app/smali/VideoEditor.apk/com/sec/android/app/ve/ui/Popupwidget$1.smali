.class Lcom/sec/android/app/ve/ui/Popupwidget$1;
.super Landroid/os/Handler;
.source "Popupwidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/ui/Popupwidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/ui/Popupwidget;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/ui/Popupwidget;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/Popupwidget$1;->this$0:Lcom/sec/android/app/ve/ui/Popupwidget;

    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/Popupwidget$1;->this$0:Lcom/sec/android/app/ve/ui/Popupwidget;

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/Popupwidget;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 23
    return-void
.end method

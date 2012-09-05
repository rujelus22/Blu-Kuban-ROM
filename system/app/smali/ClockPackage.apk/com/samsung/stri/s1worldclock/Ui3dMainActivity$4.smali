.class Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$4;
.super Landroid/os/Handler;
.source "Ui3dMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$4;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 768
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 769
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$4;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->showDialog(I)V

    .line 770
    return-void
.end method

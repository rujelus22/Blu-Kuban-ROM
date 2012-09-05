.class Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$2;
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
    .line 520
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$2;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 522
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 523
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$2;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    const v2, 0x7f0e0150

    invoke-virtual {v1, v2}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 524
    .local v0, ib:Landroid/widget/ImageButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 525
    return-void
.end method

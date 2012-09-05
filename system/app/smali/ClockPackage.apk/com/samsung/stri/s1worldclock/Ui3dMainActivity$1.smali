.class Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$1;
.super Ljava/lang/Object;
.source "Ui3dMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 216
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$1;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 219
    .local v0, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 220
    .local v1, y:I
    const-string v2, "Ui3dMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- zoomBack.onTouch() y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$1;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    #calls: Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->setBackZoomimg(II)V
    invoke-static {v2, v0, v1}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->access$000(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;II)V

    .line 224
    const/4 v2, 0x0

    return v2
.end method

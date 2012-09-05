.class public Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$ZoomChangedListener;
.super Ljava/lang/Object;
.source "Ui3dMainActivity.java"

# interfaces
.implements Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZoomChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$ZoomChangedListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomChanged(I)V
    .registers 5
    .parameter "zoom_level"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$ZoomChangedListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    #setter for: Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mZoom_level:I
    invoke-static {v0, p1}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->access$302(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;I)I

    .line 1283
    const-string v0, "Ui3dMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -- OnZoomChanged zoom_level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SetZoomLevel(I)V

    .line 1287
    iget-object v0, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$ZoomChangedListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->onZoom(Landroid/view/View;)V

    .line 1289
    return-void
.end method

.class public Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;
.super Ljava/lang/Object;
.source "Ui3dMainActivity.java"

# interfaces
.implements Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchCityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCityTouched(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "cityName"
    .parameter "countryName"

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    #getter for: Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mAlreadySelect:Z
    invoke-static {v1}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->access$200(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1276
    :goto_9
    return-void

    .line 1266
    :cond_a
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    .line 1268
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v1, v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 1270
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-nez v0, :cond_52

    .line 1271
    const-string v1, "Ui3dMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---- WARNNING : touchCity city : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v3, v3, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1273
    :cond_52
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityUniqueID:I

    .line 1274
    iget-object v1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$TouchCityListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v1, v1, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mDlgHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9
.end method

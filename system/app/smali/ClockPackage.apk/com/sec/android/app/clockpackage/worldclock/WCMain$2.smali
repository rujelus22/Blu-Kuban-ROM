.class Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;
.super Ljava/lang/Object;
.source "WCMain.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 2
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 335
    invoke-virtual {p1, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 336
    if-eqz v0, :cond_8c

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$202(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefLastActivity()Ljava/lang/String;

    move-result-object v1

    .line 343
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 344
    const-string v3, "AddLastActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "CityList"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 346
    :cond_36
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    const-class v3, Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 353
    :goto_3d
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$200(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v1

    .line 354
    if-eqz v1, :cond_8c

    .line 355
    const-string v3, "where"

    const-string v4, "city"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v3, "index"

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v0, "cityname"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$200(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v3, "uniqueid"

    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_70
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v0, "zoomlevel"

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getZoomLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 362
    const-string v0, "NUMBER_OF_CITIES_IN_MENU"

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$300(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 368
    :cond_8c
    if-nez p3, :cond_93

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Create(Z)V
    invoke-static {v0, v5}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Z)V

    .line 371
    :cond_93
    return-void

    .line 349
    :cond_94
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    const-class v3, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 350
    const-string v1, "sTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_3d

    .line 358
    :cond_a5
    const/4 v0, -0x1

    goto :goto_70
.end method

.class Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;
.super Ljava/lang/Thread;
.source "PackSwitcherLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackSwitcherLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThread"
.end annotation


# instance fields
.field private selectCurrentPack:Z

.field private selectedPackId:Ljava/lang/String;

.field private selectedPosition:I

.field final synthetic this$0:Lcom/sprint/w/installer/PackSwitcherLoader;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "name"

    .prologue
    .line 833
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    .line 834
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 829
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPosition:I

    .line 830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectCurrentPack:Z

    .line 835
    return-void
.end method

.method public constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "name"
    .parameter "selectedPackId"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    .line 843
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 829
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPosition:I

    .line 830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectCurrentPack:Z

    .line 844
    iput-object p3, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPackId:Ljava/lang/String;

    .line 845
    return-void
.end method

.method public constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter "name"
    .parameter "selectCurrentPack"

    .prologue
    .line 837
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    .line 838
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 829
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPosition:I

    .line 830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectCurrentPack:Z

    .line 839
    iput-boolean p3, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectCurrentPack:Z

    .line 840
    return-void
.end method

.method static synthetic access$1400(Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 827
    iget v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPosition:I

    return v0
.end method

.method private getHomePack()Lcom/sprint/w/installer/PackInfo;
    .registers 4

    .prologue
    .line 983
    new-instance v0, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v0}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 984
    .local v0, info:Lcom/sprint/w/installer/PackInfo;
    const-string v1, "HOME"

    iput-object v1, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .line 985
    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v1

    const v2, 0x7f06007d

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/SprintIdHome;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 986
    return-object v0
.end method

.method private getOemPack()Lcom/sprint/w/installer/PackInfo;
    .registers 3

    .prologue
    .line 991
    const/4 v0, 0x0

    .line 992
    .local v0, pi:Lcom/sprint/w/installer/PackInfo;
    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->getOEMLauncherStrategy()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 993
    new-instance v0, Lcom/sprint/w/installer/PackInfo;

    .end local v0           #pi:Lcom/sprint/w/installer/PackInfo;
    invoke-direct {v0}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 994
    .restart local v0       #pi:Lcom/sprint/w/installer/PackInfo;
    const-string v1, "OEM"

    iput-object v1, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .line 995
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 996
    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->getOEMLauncherStrategy()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sprint/w/installer/env/LauncherStrategy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackInfo;->setOemLauncher(Landroid/content/ComponentName;)V

    .line 997
    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->getOEMLauncherStrategy()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sprint/w/installer/env/LauncherStrategy;->getIconResource()I

    move-result v1

    iput v1, v0, Lcom/sprint/w/installer/PackInfo;->oemIconResource:I

    .line 1000
    :cond_29
    return-object v0
.end method

.method private prepareHomeIcon()V
    .registers 8

    .prologue
    .line 1004
    sget-object v4, Lcom/sprint/w/installer/PackSwitcherLoader;->sHomeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_5

    .line 1030
    :goto_4
    return-void

    .line 1007
    :cond_5
    const-string v2, "wp-HOME.png"

    .line 1008
    .local v2, packPngFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "th-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, packThumbPngFile:Ljava/lang/String;
    :try_start_1a
    iget-object v4, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v4}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sprint/w/installer/SprintIdHome;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 1011
    .local v1, in:Ljava/io/FileInputStream;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v5}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sprint/w/installer/SprintIdHome;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    sput-object v4, Lcom/sprint/w/installer/PackSwitcherLoader;->sHomeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 1012
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_38} :catch_a5

    goto :goto_4

    .line 1014
    .end local v1           #in:Ljava/io/FileInputStream;
    :catch_39
    move-exception v0

    .line 1015
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon file not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 1020
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_54
    :try_start_54
    iget-object v4, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v4}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sprint/w/installer/SprintIdHome;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 1021
    .restart local v1       #in:Ljava/io/FileInputStream;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v5}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sprint/w/installer/SprintIdHome;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    sput-object v4, Lcom/sprint/w/installer/PackSwitcherLoader;->sHomeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 1022
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_72} :catch_73
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_72} :catch_c1

    goto :goto_4

    .line 1024
    .end local v1           #in:Ljava/io/FileInputStream;
    :catch_73
    move-exception v0

    .line 1025
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper file not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 1029
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_8e
    iget-object v4, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v4}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sprint/w/installer/SprintIdHome;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v4, Lcom/sprint/w/installer/PackSwitcherLoader;->sHomeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_4

    .line 1016
    :catch_a5
    move-exception v0

    .line 1017
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_54

    .line 1026
    .end local v0           #e:Ljava/io/IOException;
    :catch_c1
    move-exception v0

    .line 1027
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_8e
.end method

.method private prepareOemIcon()V
    .registers 9

    .prologue
    .line 1033
    sget-object v5, Lcom/sprint/w/installer/PackSwitcherLoader;->sOemDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_5

    .line 1060
    :goto_4
    return-void

    .line 1036
    :cond_5
    const-string v2, "wp-OEM.png"

    .line 1037
    .local v2, packPngFile:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "th-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    .local v3, packThumbPngFile:Ljava/lang/String;
    :try_start_1a
    iget-object v5, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v5}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sprint/w/installer/SprintIdHome;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 1040
    .local v1, in:Ljava/io/FileInputStream;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sprint/w/installer/SprintIdHome;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    sput-object v5, Lcom/sprint/w/installer/PackSwitcherLoader;->sOemDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 1041
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_38} :catch_a8

    goto :goto_4

    .line 1043
    .end local v1           #in:Ljava/io/FileInputStream;
    :catch_39
    move-exception v0

    .line 1044
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icon file not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 1049
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_54
    :try_start_54
    iget-object v5, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v5}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sprint/w/installer/SprintIdHome;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 1050
    .restart local v1       #in:Ljava/io/FileInputStream;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sprint/w/installer/SprintIdHome;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    sput-object v5, Lcom/sprint/w/installer/PackSwitcherLoader;->sOemDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 1051
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_72} :catch_73
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_72} :catch_c4

    goto :goto_4

    .line 1053
    .end local v1           #in:Ljava/io/FileInputStream;
    :catch_73
    move-exception v0

    .line 1054
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wallpaper file not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 1058
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_8e
    invoke-direct {p0}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->getOemPack()Lcom/sprint/w/installer/PackInfo;

    move-result-object v4

    .line 1059
    .local v4, pi:Lcom/sprint/w/installer/PackInfo;
    iget-object v5, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v5}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sprint/w/installer/SprintIdHome;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v4, Lcom/sprint/w/installer/PackInfo;->oemIconResource:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    sput-object v5, Lcom/sprint/w/installer/PackSwitcherLoader;->sOemDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_4

    .line 1045
    .end local v4           #pi:Lcom/sprint/w/installer/PackInfo;
    :catch_a8
    move-exception v0

    .line 1046
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_54

    .line 1055
    .end local v0           #e:Ljava/io/IOException;
    :catch_c4
    move-exception v0

    .line 1056
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_8e
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 848
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v21

    const-string v22, "LoadThread:"

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v22, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static/range {v22 .. v22}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v22

    #setter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static/range {v21 .. v22}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1002(Lcom/sprint/w/installer/PackSwitcherLoader;Lcom/sprint/w/installer/PackInfo;)Lcom/sprint/w/installer/PackInfo;

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v3

    .line 853
    .local v3, c:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackInfo;->loadAllPackDetails(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v15

    .line 856
    .local v15, packList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackInfo;>;"
    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->getHomePack()Lcom/sprint/w/installer/PackInfo;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->getOemPack()Lcom/sprint/w/installer/PackInfo;

    move-result-object v12

    .line 859
    .local v12, oemPack:Lcom/sprint/w/installer/PackInfo;
    if-eqz v12, :cond_69

    .line 860
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1000(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v21

    if-nez v21, :cond_69

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #setter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v0, v12}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1002(Lcom/sprint/w/installer/PackSwitcherLoader;Lcom/sprint/w/installer/PackInfo;)Lcom/sprint/w/installer/PackInfo;

    .line 868
    :cond_69
    invoke-static {v3}, Lcom/sprint/w/installer/DownloadService;->getReadyToInstallPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v19

    .line 877
    .local v19, sps:[Lcom/sprint/w/installer/psi/ServicePack;
    move-object/from16 v2, v19

    .local v2, arr$:[Lcom/sprint/w/installer/psi/ServicePack;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_71
    if-ge v7, v10, :cond_ac

    aget-object v18, v2, v7

    .line 878
    .local v18, sp:Lcom/sprint/w/installer/psi/ServicePack;
    new-instance v5, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v5}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 879
    .local v5, dlPack:Lcom/sprint/w/installer/PackInfo;
    invoke-virtual/range {v18 .. v18}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v5, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .line 880
    invoke-virtual/range {v18 .. v18}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v5, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 881
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v5, Lcom/sprint/w/installer/PackInfo;->installIntent:Ljava/lang/String;

    .line 882
    invoke-virtual/range {v18 .. v18}, Lcom/sprint/w/installer/psi/ServicePack;->isDefaultPack()Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/sprint/w/installer/PackInfo;->setDefaultPack(Z)V

    .line 883
    invoke-virtual/range {v18 .. v18}, Lcom/sprint/w/installer/psi/ServicePack;->isLocked()Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/sprint/w/installer/PackInfo;->setLocked(Z)V

    .line 884
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    add-int/lit8 v7, v7, 0x1

    goto :goto_71

    .line 887
    .end local v5           #dlPack:Lcom/sprint/w/installer/PackInfo;
    .end local v18           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_ac
    invoke-static {v3}, Lcom/sprint/w/installer/DownloadService;->getDownloadingPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v20

    .line 888
    .local v20, sps_download:[Lcom/sprint/w/installer/psi/ServicePack;
    move-object/from16 v2, v20

    array-length v10, v2

    const/4 v7, 0x0

    :goto_b4
    if-ge v7, v10, :cond_10d

    aget-object v18, v2, v7

    .line 889
    .restart local v18       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    new-instance v16, Lcom/sprint/w/installer/PackInfo;

    invoke-direct/range {v16 .. v16}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 890
    .local v16, pi:Lcom/sprint/w/installer/PackInfo;
    invoke-virtual/range {v18 .. v18}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .line 891
    invoke-virtual/range {v18 .. v18}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 892
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sprint/w/installer/PackInfo;->notReady:Z

    .line 893
    move-object/from16 v0, v18

    iget v0, v0, Lcom/sprint/w/installer/psi/ServicePack;->downloadPercent:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sprint/w/installer/PackInfo;->downloadPercent:I

    .line 894
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/psi/ServicePack;->detailsIntent:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sprint/w/installer/PackInfo;->detailsIntent:Ljava/lang/String;

    .line 895
    invoke-virtual/range {v18 .. v18}, Lcom/sprint/w/installer/psi/ServicePack;->isDefaultPack()Z

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackInfo;->setDefaultPack(Z)V

    .line 896
    invoke-virtual/range {v18 .. v18}, Lcom/sprint/w/installer/psi/ServicePack;->isLocked()Z

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackInfo;->setLocked(Z)V

    .line 897
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    add-int/lit8 v7, v7, 0x1

    goto :goto_b4

    .line 903
    .end local v16           #pi:Lcom/sprint/w/installer/PackInfo;
    .end local v18           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_10d
    const/16 v17, 0x0

    .line 905
    .local v17, selectPack:Lcom/sprint/w/installer/PackInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectCurrentPack:Z

    move/from16 v21, v0

    if-eqz v21, :cond_172

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v17

    .line 911
    :goto_125
    if-eqz v17, :cond_13b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPackId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_13b

    .line 912
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPackId:Ljava/lang/String;

    .line 915
    :cond_13b
    const/4 v11, 0x1

    .line 916
    .local v11, notfound:Z
    const/4 v4, -0x1

    .line 917
    .local v4, current:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_13e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_1b7

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPackId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_183

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPackId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sprint/w/installer/PackInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_183

    .line 919
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPosition:I

    .line 921
    const/4 v11, 0x0

    .line 917
    :cond_16f
    :goto_16f
    add-int/lit8 v6, v6, 0x1

    goto :goto_13e

    .line 908
    .end local v4           #current:I
    .end local v6           #i:I
    .end local v11           #notfound:Z
    :cond_172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;
    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1100(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/widget/CoverFlow;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sprint/w/installer/widget/CoverFlow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    .end local v17           #selectPack:Lcom/sprint/w/installer/PackInfo;
    check-cast v17, Lcom/sprint/w/installer/PackInfo;

    .restart local v17       #selectPack:Lcom/sprint/w/installer/PackInfo;
    goto :goto_125

    .line 922
    .restart local v4       #current:I
    .restart local v6       #i:I
    .restart local v11       #notfound:Z
    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1000(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v21

    if-eqz v21, :cond_16f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1000(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sprint/w/installer/PackInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16f

    .line 923
    move v4, v6

    goto :goto_16f

    .line 927
    :cond_1b7
    if-eqz v11, :cond_1bd

    .line 928
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPosition:I

    .line 932
    :cond_1bd
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->prepareHomeIcon()V

    .line 934
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getOemPack()Lcom/sprint/w/installer/PackInfo;

    move-result-object v21

    if-eqz v21, :cond_1c9

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->prepareOemIcon()V

    .line 939
    :cond_1c9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v13, packIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1d2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_24e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sprint/w/installer/PackInfo;

    .line 942
    .local v14, packInfo:Lcom/sprint/w/installer/PackInfo;
    iget v0, v14, Lcom/sprint/w/installer/PackInfo;->_id:I

    move/from16 v21, v0

    if-nez v21, :cond_1ec

    .line 943
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d2

    .line 948
    :cond_1ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v21

    iget v0, v14, Lcom/sprint/w/installer/PackInfo;->_id:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Lcom/sprint/w/installer/PackInfo;->loadPackSwitcherIcon(Landroid/content/Context;J)[B

    move-result-object v9

    .line 949
    .local v9, iconBytes:[B
    if-nez v9, :cond_21c

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v21

    iget v0, v14, Lcom/sprint/w/installer/PackInfo;->_id:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Lcom/sprint/w/installer/PackInfo;->loadPackIcon(Landroid/content/Context;J)[B

    move-result-object v9

    .line 955
    :cond_21c
    if-eqz v9, :cond_238

    .line 956
    const/16 v21, 0x0

    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 957
    .local v8, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    iget-object v0, v14, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v8}, Lcom/sprint/w/installer/PackSwitcherLoader;->putPackIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1d2

    .line 962
    .end local v8           #icon:Landroid/graphics/Bitmap;
    :cond_238
    iget-object v0, v14, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->getPackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 963
    .restart local v8       #icon:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_246

    .line 964
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d2

    .line 968
    :cond_246
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d2

    .line 971
    .end local v8           #icon:Landroid/graphics/Bitmap;
    .end local v9           #iconBytes:[B
    .end local v14           #packInfo:Lcom/sprint/w/installer/PackInfo;
    :cond_24e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    move-object/from16 v21, v0

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static/range {v21 .. v21}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v21

    new-instance v22, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v13}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/w/installer/SprintIdHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 979
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v21

    const-string v22, "LoadThread-Done:"

    invoke-virtual/range {v21 .. v22}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 980
    return-void
.end method

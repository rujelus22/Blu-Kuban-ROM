.class Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;
.super Ljava/lang/Object;
.source "Ui3dInitData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;


# direct methods
.method constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 110
    .local v5, t:J
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$100()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 111
    :try_start_9
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mR:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$200(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_47

    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetMapDP()Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->GetDefaultImagesCount()I

    move-result v7

    if-nez v7, :cond_47

    .line 113
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 115
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 116
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mR:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$200(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Landroid/content/res/Resources;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mResId:I
    invoke-static {v9}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$300(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)I

    move-result v9

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 118
    .local v3, mapBmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->GetMapDP()Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->SetDefaultBitmap(ILandroid/graphics/Bitmap;)V

    .line 121
    .end local v3           #mapBmp:Landroid/graphics/Bitmap;
    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_47
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    new-instance v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mPackageSubStr:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$500(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "meta_data"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mMetaDataPath:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$402(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mMetaDataPath:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$400(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "world_clock.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mXMLFileName:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$602(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    new-instance v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mPackageSubStr:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$500(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Float"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mFloatDataPath:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$702(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    new-instance v9, Ljava/lang/String;

    const-string v10, ""

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mSoundDataPath:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$802(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    iget-object v9, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mMetaDataPath:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$400(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->ExtractData(Ljava/lang/String;)Z
    invoke-static {v7, v9}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$900(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Z

    move-result v0

    .line 127
    .local v0, bRes:Z
    if-eqz v0, :cond_ee

    .line 128
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    iget-object v9, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mFloatDataPath:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$700(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->ExtractData(Ljava/lang/String;)Z
    invoke-static {v7, v9}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$900(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Z

    .line 131
    :cond_ee
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long v1, v9, v5

    .line 132
    .local v1, cT:J
    const-string v7, "UI3d_Init_Data"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ---- TIME : After Ui3dInitData::run(ExtractData()): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z
    invoke-static {v7}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$1000(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_130

    .line 137
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    iget-object v9, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mXMLFileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$600(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mFloatDataPath:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$700(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->nativePreload(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v7, v9, v10}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$1200(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$1102(I)I

    .line 139
    :cond_130
    monitor-exit v8
    :try_end_131
    .catchall {:try_start_9 .. :try_end_131} :catchall_156

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v5

    .line 142
    const-string v7, "UI3d_Init_Data"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ---- TIME : After Ui3dInitData::run(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 139
    .end local v0           #bRes:Z
    .end local v1           #cT:J
    :catchall_156
    move-exception v7

    :try_start_157
    monitor-exit v8
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_156

    throw v7
.end method

.class Lcom/sec/android/app/lcdtest/AccImageTest$3;
.super Ljava/lang/Object;
.source "AccImageTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/AccImageTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/AccImageTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/AccImageTest;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "filepath"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, buf:Ljava/io/BufferedReader;
    const-string v3, ""

    .line 144
    .local v3, result:Ljava/lang/String;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1fa0

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_26

    .line 145
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_19

    .line 146
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_44

    move-result-object v3

    .line 151
    :cond_19
    if-eqz v1, :cond_47

    .line 153
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_20

    move-object v0, v1

    .line 160
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1f
    :goto_1f
    return-object v3

    .line 154
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_20
    move-exception v2

    .line 155
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 156
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f

    .line 148
    .end local v2           #e:Ljava/io/IOException;
    :catch_26
    move-exception v2

    .line 149
    .local v2, e:Ljava/lang/Exception;
    :goto_27
    :try_start_27
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_35

    .line 151
    if-eqz v0, :cond_1f

    .line 153
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_1f

    .line 154
    :catch_30
    move-exception v2

    .line 155
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 151
    .end local v2           #e:Ljava/io/IOException;
    :catchall_35
    move-exception v4

    :goto_36
    if-eqz v0, :cond_3b

    .line 153
    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 156
    :cond_3b
    :goto_3b
    throw v4

    .line 154
    :catch_3c
    move-exception v2

    .line 155
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 151
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_41
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_36

    .line 148
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_44
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_27

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_47
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 106
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    const v10, 0x42652ee1

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 109
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->config:Lcom/sec/android/app/lcdtest/appConfig;
    invoke-static {v4}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$500(Lcom/sec/android/app/lcdtest/AccImageTest;)Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v4

    const-string v5, "PATH_SENSOR_ACCE_VALUE"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, sysfsPath:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v0, v4, [I

    .line 112
    .local v0, angle:[I
    if-eqz v3, :cond_175

    .line 113
    invoke-direct {p0, v3}, Lcom/sec/android/app/lcdtest/AccImageTest$3;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, rawData:Ljava/lang/String;
    if-eqz v1, :cond_176

    .line 116
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$602(Lcom/sec/android/app/lcdtest/AccImageTest;[Ljava/lang/String;)[Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 119
    .local v2, realg:F
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    mul-int/lit8 v4, v4, -0x1

    aput v4, v0, v7

    .line 120
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    mul-int/lit8 v4, v4, -0x1

    aput v4, v0, v8

    .line 121
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x5a

    aput v4, v0, v9

    .line 123
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACC Raw Data - x : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", z : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/lcdtest/AccImageTest;->currentACC:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$102(Lcom/sec/android/app/lcdtest/AccImageTest;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Angle - x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v7

    mul-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v8

    mul-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "z: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v9

    mul-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/lcdtest/AccImageTest;->currentANG:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$302(Lcom/sec/android/app/lcdtest/AccImageTest;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .end local v1           #rawData:Ljava/lang/String;
    .end local v2           #realg:F
    :cond_175
    :goto_175
    return-void

    .line 126
    .restart local v1       #rawData:Ljava/lang/String;
    :cond_176
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    aput-object v5, v4, v7

    .line 127
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    aput-object v5, v4, v8

    .line 128
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    aput-object v5, v4, v9

    .line 130
    aput v7, v0, v7

    .line 131
    aput v7, v0, v8

    .line 132
    aput v7, v0, v9

    .line 134
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACC Raw Data - x : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", z : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/lcdtest/AccImageTest;->currentACC:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$102(Lcom/sec/android/app/lcdtest/AccImageTest;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/AccImageTest$3;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Angle - x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v7

    mul-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v8

    mul-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "z: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v9

    mul-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/lcdtest/AccImageTest;->currentANG:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$302(Lcom/sec/android/app/lcdtest/AccImageTest;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_175
.end method

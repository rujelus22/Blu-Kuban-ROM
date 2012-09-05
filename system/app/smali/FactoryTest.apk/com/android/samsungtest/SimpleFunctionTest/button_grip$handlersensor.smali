.class Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;
.super Ljava/lang/Object;
.source "button_grip.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/button_grip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/button_grip;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/button_grip;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;Lcom/android/samsungtest/SimpleFunctionTest/button_grip$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->read_grip_read_cnt()V

    return-void
.end method

.method private changeGrip([F)V
    .registers 7
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_2c

    .line 157
    const-string v1, "GRIPSENSOR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "values["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 159
    :cond_2c
    aget v1, p1, v4

    float-to-int v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_57

    .line 160
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/button_grip;

    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->access$208(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)I

    .line 168
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/button_grip;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->txtgrip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->access$500(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GRIP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void

    .line 162
    :cond_57
    aget v1, p1, v4

    float-to-int v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_63

    .line 163
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/button_grip;

    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->access$308(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)I

    goto :goto_37

    .line 165
    :cond_63
    aget v1, p1, v4

    float-to-int v1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_37

    .line 166
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/button_grip;

    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->access$408(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)I

    goto :goto_37
.end method

.method private read_grip_read_cnt()V
    .registers 13

    .prologue
    .line 174
    const/16 v9, 0x64

    new-array v0, v9, [B

    .line 175
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 176
    .local v2, in:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 177
    .local v8, s_rnd:Ljava/lang/String;
    const/4 v6, 0x0

    .line 178
    .local v6, s_ch1:Ljava/lang/String;
    const/4 v7, 0x0

    .line 180
    .local v7, s_ch3:Ljava/lang/String;
    const/4 v4, 0x0

    .line 184
    .local v4, s:Ljava/lang/String;
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/gripsensor/switch/grip_read_cnt"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_15} :catch_8e

    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    move-object v2, v3

    .line 192
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_16
    :try_start_16
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-eqz v9, :cond_ac

    .line 193
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_bc

    .line 197
    .end local v4           #s:Ljava/lang/String;
    .local v5, s:Ljava/lang/String;
    const/4 v9, 0x4

    const/16 v10, 0x8

    :try_start_24
    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 198
    const/16 v9, 0xd

    const/16 v10, 0x11

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 199
    const/16 v9, 0x16

    const/16 v10, 0x1a

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 200
    iget-object v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/button_grip;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->txt_grip_read_cnt:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->access$600(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RND : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "CH1 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "CH3 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const-string v9, "SensorTest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read_grip_read_cnt : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_8c} :catch_d9

    move-object v4, v5

    .line 213
    .end local v5           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    :goto_8d
    return-void

    .line 186
    :catch_8e
    move-exception v1

    .line 187
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 188
    const-string v9, "read_grip_read_cnt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 205
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_ac
    :try_start_ac
    new-instance v5, Ljava/lang/String;

    const-string v9, "read_grip_read_cnt fail"

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b3} :catch_bc

    .line 206
    .end local v4           #s:Ljava/lang/String;
    .restart local v5       #s:Ljava/lang/String;
    :try_start_b3
    const-string v9, "SensorTest"

    const-string v10, "what\'s the problem !!!!!!!!!!!!!!!!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_ba} :catch_d9

    move-object v4, v5

    .end local v5           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    goto :goto_8d

    .line 208
    :catch_bc
    move-exception v1

    .line 209
    .local v1, e:Ljava/io/IOException;
    :goto_bd
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    const-string v9, "SensorTest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 208
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #s:Ljava/lang/String;
    .restart local v5       #s:Ljava/lang/String;
    :catch_d9
    move-exception v1

    move-object v4, v5

    .end local v5           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    goto :goto_bd
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 141
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 145
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 153
    :goto_9
    return-void

    .line 149
    :pswitch_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->changeGrip([F)V

    .line 150
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->read_grip_read_cnt()V

    goto :goto_9

    .line 145
    nop

    :pswitch_data_14
    .packed-switch 0x9
        :pswitch_a
    .end packed-switch
.end method

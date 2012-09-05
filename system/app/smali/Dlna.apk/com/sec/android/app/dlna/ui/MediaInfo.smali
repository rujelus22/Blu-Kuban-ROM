.class public Lcom/sec/android/app/dlna/ui/MediaInfo;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;
    }
.end annotation


# static fields
.field public static final DFORM:Ljava/text/DecimalFormat;

.field public static final G_BYTES:D

.field public static final K_BYTES:D

.field public static final M_BYTES:D

.field public static final T_BYTES:D


# instance fields
.field private OKbutton:Landroid/widget/Button;

.field private mList:Landroid/widget/LinearLayout;

.field private propertyAdapter:Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;

.field private propertyNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private propertyValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/high16 v2, 0x4090

    .line 58
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/dlna/ui/MediaInfo;->DFORM:Ljava/text/DecimalFormat;

    .line 62
    const-wide/high16 v0, 0x4010

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/dlna/ui/MediaInfo;->T_BYTES:D

    .line 64
    const-wide/high16 v0, 0x4008

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/dlna/ui/MediaInfo;->G_BYTES:D

    .line 66
    const-wide/high16 v0, 0x4000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/dlna/ui/MediaInfo;->M_BYTES:D

    .line 68
    const-wide/high16 v0, 0x3ff0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/dlna/ui/MediaInfo;->K_BYTES:D

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->OKbutton:Landroid/widget/Button;

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/MediaInfo;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/MediaInfo;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    return-object v0
.end method

.method private fillProperties(Ljava/lang/Object;)V
    .registers 14
    .parameter "item"

    .prologue
    const v9, 0x7f090065

    const v11, 0x7f090033

    const/4 v10, 0x1

    .line 142
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    .line 143
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    .line 145
    instance-of v7, p1, Lcom/samsung/api/DeviceItem;

    if-eqz v7, :cond_96

    move-object v1, p1

    .line 146
    check-cast v1, Lcom/samsung/api/DeviceItem;

    .line 147
    .local v1, device:Lcom/samsung/api/DeviceItem;
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f09001c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v7

    if-ne v7, v10, :cond_8c

    .line 149
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/dlna/ui/MediaInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_37
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f090031

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f090032

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f09000e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f09002e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getModelName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getModelNo()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getCompany()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v1           #device:Lcom/samsung/api/DeviceItem;
    :cond_8b
    :goto_8b
    return-void

    .line 151
    .restart local v1       #device:Lcom/samsung/api/DeviceItem;
    :cond_8c
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 163
    .end local v1           #device:Lcom/samsung/api/DeviceItem;
    :cond_96
    instance-of v7, p1, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;

    if-eqz v7, :cond_8b

    move-object v6, p1

    .line 164
    check-cast v6, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;

    .line 165
    .local v6, playlistItem:Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f090028

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->getDuration()Ljava/lang/String;

    move-result-object v7

    const-string v8, "00:00:00"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d3

    .line 169
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f090024

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->getDuration()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_d3
    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->checkType()I

    move-result v7

    if-ne v7, v10, :cond_181

    .line 174
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f090016

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_e5
    :goto_e5
    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, a:Ljava/lang/String;
    if-eqz v0, :cond_f3

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_196

    .line 182
    :cond_f3
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {p0, v9}, Lcom/sec/android/app/dlna/ui/MediaInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_fc
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f090025

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->getFileType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v7, "DLNA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->getFileSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->getFileSize()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_164

    .line 191
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f090029

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->getFileSize()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, fileSize:Ljava/lang/String;
    if-eqz v3, :cond_1a1

    :try_start_14b
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a1

    .line 196
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 198
    .local v4, file_size:J
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_164
    .catch Ljava/lang/NumberFormatException; {:try_start_14b .. :try_end_164} :catch_1ae

    .line 206
    .end local v3           #fileSize:Ljava/lang/String;
    .end local v4           #file_size:J
    :cond_164
    :goto_164
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f090040

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->isLocalDevice()Z

    move-result v7

    if-ne v7, v10, :cond_1b3

    .line 208
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/dlna/ui/MediaInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8b

    .line 175
    .end local v0           #a:Ljava/lang/String;
    :cond_181
    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->checkType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e5

    .line 177
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;

    const v8, 0x7f090015

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e5

    .line 184
    .restart local v0       #a:Ljava/lang/String;
    :cond_196
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_fc

    .line 200
    .restart local v3       #fileSize:Ljava/lang/String;
    :cond_1a1
    :try_start_1a1
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    const v8, 0x7f090065

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dlna/ui/MediaInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1ad
    .catch Ljava/lang/NumberFormatException; {:try_start_1a1 .. :try_end_1ad} :catch_1ae

    goto :goto_164

    .line 202
    :catch_1ae
    move-exception v2

    .line 203
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_164

    .line 210
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #fileSize:Ljava/lang/String;
    :cond_1b3
    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8b
.end method

.method private initializeUIForLandscape()V
    .registers 4

    .prologue
    const/16 v2, 0x400

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaInfo;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 124
    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/MediaInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->mList:Landroid/widget/LinearLayout;

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    .local v0, Param4:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 128
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 133
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void

    .line 130
    :cond_33
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    .line 131
    const/16 v1, 0x10e

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2d
.end method

.method public static transByteToUnit(D)Ljava/lang/String;
    .registers 10
    .parameter "lValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/high16 v6, 0x3ff0

    .line 74
    const-string v2, ""

    .line 75
    .local v2, strByte:Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gtz v4, :cond_c

    move-object v3, v2

    .line 93
    .end local v2           #strByte:Ljava/lang/String;
    .local v3, strByte:Ljava/lang/String;
    :goto_b
    return-object v3

    .line 79
    .end local v3           #strByte:Ljava/lang/String;
    .restart local v2       #strByte:Ljava/lang/String;
    :cond_c
    const-wide/16 v0, 0x0

    .line 84
    .local v0, dicisionValue:D
    sget-wide v4, Lcom/sec/android/app/dlna/ui/MediaInfo;->G_BYTES:D

    div-double v0, p0, v4

    cmpl-double v4, v0, v6

    if-ltz v4, :cond_31

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/dlna/ui/MediaInfo;->DFORM:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2f
    move-object v3, v2

    .line 93
    .end local v2           #strByte:Ljava/lang/String;
    .restart local v3       #strByte:Ljava/lang/String;
    goto :goto_b

    .line 86
    .end local v3           #strByte:Ljava/lang/String;
    .restart local v2       #strByte:Ljava/lang/String;
    :cond_31
    sget-wide v4, Lcom/sec/android/app/dlna/ui/MediaInfo;->M_BYTES:D

    div-double v0, p0, v4

    cmpl-double v4, v0, v6

    if-ltz v4, :cond_53

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/dlna/ui/MediaInfo;->DFORM:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 88
    :cond_53
    sget-wide v4, Lcom/sec/android/app/dlna/ui/MediaInfo;->K_BYTES:D

    div-double v0, p0, v4

    cmpl-double v4, v0, v6

    if-ltz v4, :cond_75

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/dlna/ui/MediaInfo;->DFORM:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 91
    :cond_75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/dlna/ui/MediaInfo;->DFORM:Ljava/text/DecimalFormat;

    invoke-virtual {v5, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2f
.end method


# virtual methods
.method public notifyActivityEvent(I)V
    .registers 2
    .parameter "code"

    .prologue
    .line 264
    packed-switch p1, :pswitch_data_c

    .line 269
    :goto_3
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->notifyActivityEvent(I)V

    .line 270
    return-void

    .line 266
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaInfo;->finish()V

    goto :goto_3

    .line 264
    nop

    :pswitch_data_c
    .packed-switch 0x2f4
        :pswitch_7
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaInfo;->initializeUIForLandscape()V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaInfo;->requestWindowFeature(I)Z

    .line 100
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaInfo;->setContentView(I)V

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/MediaInfo;->initializeUIForLandscape()V

    .line 103
    const v2, 0x7f07000a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->OKbutton:Landroid/widget/Button;

    .line 104
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/MediaInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 105
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/MediaInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "detail"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 108
    .local v0, item:Ljava/io/Serializable;
    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/ui/MediaInfo;->fillProperties(Ljava/lang/Object;)V

    .line 110
    new-instance v2, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;

    const v3, 0x7f030001

    invoke-direct {v2, p0, p0, v3}, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;-><init>(Lcom/sec/android/app/dlna/ui/MediaInfo;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyAdapter:Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyAdapter:Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaInfo;->OKbutton:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/dlna/ui/MediaInfo$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/MediaInfo$1;-><init>(Lcom/sec/android/app/dlna/ui/MediaInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

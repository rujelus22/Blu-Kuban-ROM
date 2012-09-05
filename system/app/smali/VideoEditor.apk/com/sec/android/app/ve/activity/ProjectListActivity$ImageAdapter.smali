.class public Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProjectListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field count:I

.field counter:I

.field i:I

.field private lCount:I

.field private mContext:Landroid/content/Context;

.field mGalleryItemBackground:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mLabelView:I

.field path:Ljava/lang/String;

.field private remView:Landroid/view/View;

.field strings:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "c"

    .prologue
    .line 2771
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 2768
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2760
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->count:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->counter:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->i:I

    .line 2762
    const/16 v0, 0x64

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->strings:[Ljava/lang/String;

    .line 2765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->remView:Landroid/view/View;

    .line 2769
    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->mContext:Landroid/content/Context;

    .line 2770
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public applyEffect(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "effect"
    .parameter "bitmap"

    .prologue
    .line 3086
    if-nez p2, :cond_4

    .line 3087
    const/4 v7, 0x0

    .line 3124
    :goto_3
    return-object v7

    .line 3089
    :cond_4
    const/4 v6, 0x0

    .line 3090
    .local v6, bitmap565:Landroid/graphics/Bitmap;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyefect before config -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3092
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_87

    .line 3094
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3095
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3096
    const/4 p2, 0x0

    .line 3101
    :goto_2e
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3104
    .local v7, bm:Landroid/graphics/Bitmap;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyefect after changing config -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3105
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    .line 3109
    .local v8, buf:[B
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 3111
    .local v9, pixelBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 3114
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    .line 3115
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 3116
    const/4 v5, 0x1

    move v4, p1

    .line 3114
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyEffectToVideoThumbnail([BIIII)[B

    move-result-object v10

    .line 3117
    .local v10, result:[B
    if-eqz v10, :cond_89

    .line 3118
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 3119
    invoke-virtual {v7, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto/16 :goto_3

    .line 3098
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .end local v8           #buf:[B
    .end local v9           #pixelBuffer:Ljava/nio/ByteBuffer;
    .end local v10           #result:[B
    :cond_87
    move-object v6, p2

    goto :goto_2e

    .line 3121
    .restart local v7       #bm:Landroid/graphics/Bitmap;
    .restart local v8       #buf:[B
    .restart local v9       #pixelBuffer:Ljava/nio/ByteBuffer;
    .restart local v10       #result:[B
    :cond_89
    const-string v0, "<<<<<<< retouch effect GOT NULL DATA FROM ENGINE >>>>>>>>"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public getBitmapFromEngine(Ljava/lang/String;FI)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "filePath"
    .parameter "time"
    .parameter "effect"

    .prologue
    .line 3133
    const/16 v2, 0x280

    .line 3134
    .local v2, width:I
    const/16 v3, 0x1e0

    .line 3135
    .local v3, height:I
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3136
    .local v6, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/high16 v4, 0x447a

    mul-float/2addr v4, p2

    float-to-int v4, v4

    const/16 v5, 0x280

    const/16 v8, 0x1e0

    invoke-virtual {v0, p1, v4, v5, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->VEGetFrameRGB565Buffer(Ljava/lang/String;III)[B

    move-result-object v1

    .line 3138
    .local v1, bytes:[B
    if-eqz v1, :cond_30

    .line 3139
    if-eqz p3, :cond_28

    .line 3140
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    .line 3141
    const/4 v5, 0x1

    move v4, p3

    .line 3140
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyEffectToVideoThumbnail([BIIII)[B

    move-result-object v1

    .line 3143
    :cond_28
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 3144
    .local v7, pixelBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3148
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #pixelBuffer:Ljava/nio/ByteBuffer;
    :goto_2f
    return-object v6

    .line 3147
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_30
    const-string v0, "Bytes from Engine null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3148
    const/4 v6, 0x0

    goto :goto_2f
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 2774
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->lCount:I

    .line 2775
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 2779
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 2782
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScale(ZI)F
    .registers 9
    .parameter "focused"
    .parameter "offset"

    .prologue
    .line 2789
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    const-wide/high16 v2, 0x4000

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 31
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2796
    const/4 v3, 0x0

    .line 2798
    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "My pos :"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 2800
    .local v20, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    if-nez p2, :cond_7c9

    .line 2801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v24, v0

    const v25, 0x7f030027

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 2802
    .local v11, layout:Landroid/widget/LinearLayout;
    const v24, 0x7f0b00a4

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    .line 2803
    .local v16, project_layout:Landroid/widget/FrameLayout;
    const v24, 0x7f0b00a5

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 2806
    .local v8, image:Landroid/widget/ImageView;
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Project list size::::"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    .line 2806
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_2a0

    .line 2810
    const/4 v8, 0x0

    .line 3008
    :goto_91
    const v24, 0x7f0b00a1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 3012
    .local v17, refl_image:Landroid/widget/ImageView;
    if-eqz v8, :cond_b3

    .line 3013
    if-eqz v3, :cond_b3

    .line 3014
    const/16 v24, 0x4a

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v3, v0, v1}, Lcom/sec/android/app/ve/util/Utils;->getReflectionImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3017
    :cond_b3
    const v24, 0x7f0b00a2

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 3018
    .local v23, textView:Landroid/widget/TextView;
    if-eqz v23, :cond_f4

    .line 3020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const/high16 v25, 0x7f07

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    .line 3024
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3023
    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3028
    :cond_f4
    const v24, 0x7f0b00a3

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3036
    .local v4, details:Landroid/widget/TextView;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v24, "last modified date::::"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectModifiedDate()Ljava/util/Date;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    int-to-long v9, v0

    .line 3038
    .local v9, lProjectTime:J
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v26

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectModifiedDate()Ljava/util/Date;

    move-result-object v24

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3040
    const-string v24, " / "

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v9, v10}, Lcom/sec/android/app/ve/util/Utils;->timeFormat(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3038
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    .line 3042
    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectFileName()Ljava/lang/String;

    move-result-object v22

    .line 3043
    .local v22, tempPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->filepath:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$20(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_201

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->but_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v24

    if-eqz v24, :cond_201

    .line 3044
    const-string v24, "LEd Zepllin"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3045
    const v24, 0x7f0b00a8

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 3046
    .local v19, selection:Landroid/widget/ImageView;
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3049
    .end local v19           #selection:Landroid/widget/ImageView;
    :cond_201
    move-object/from16 p2, v11

    .line 3057
    .end local v4           #details:Landroid/widget/TextView;
    .end local v8           #image:Landroid/widget/ImageView;
    .end local v9           #lProjectTime:J
    .end local v11           #layout:Landroid/widget/LinearLayout;
    .end local v16           #project_layout:Landroid/widget/FrameLayout;
    .end local v17           #refl_image:Landroid/widget/ImageView;
    .end local v22           #tempPath:Ljava/lang/String;
    .end local v23           #textView:Landroid/widget/TextView;
    :goto_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->getVisibility()I

    move-result v24

    if-nez v24, :cond_233

    .line 3058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$21(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I

    move-result v24

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_7d0

    .line 3059
    const v24, 0x7f0b00a8

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 3066
    :cond_233
    :goto_233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$22(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/MultipleDelete;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->getVisibility()I

    move-result v24

    if-nez v24, :cond_29f

    .line 3067
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "getView::::"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3068
    move/from16 v13, p1

    .line 3069
    .local v13, pos:I
    const v24, 0x7f0b00a5

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 3070
    .local v15, project:Landroid/widget/ImageView;
    const v24, 0x7f0b00a6

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$23(Landroid/widget/ImageView;)V

    .line 3071
    const v24, 0x7f0b00a7

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$24(Landroid/widget/ImageView;)V

    .line 3072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$25(Lcom/sec/android/app/ve/activity/ProjectListActivity;)[Z

    move-result-object v24

    aget-boolean v24, v24, v13

    if-eqz v24, :cond_7e2

    .line 3073
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$26()Landroid/widget/ImageView;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3080
    .end local v13           #pos:I
    .end local v15           #project:Landroid/widget/ImageView;
    :cond_29f
    :goto_29f
    return-object p2

    .line 2814
    .restart local v8       #image:Landroid/widget/ImageView;
    .restart local v11       #layout:Landroid/widget/LinearLayout;
    .restart local v16       #project_layout:Landroid/widget/FrameLayout;
    :cond_2a0
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v24, "PRoject Elements::::"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    .line 2815
    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2814
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    check-cast v20, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 2817
    .restart local v20       #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v24

    if-nez v24, :cond_2f7

    .line 2818
    const/4 v8, 0x0

    goto/16 :goto_91

    .line 2820
    :cond_2f7
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_579

    .line 2821
    const-string v24, "Image type"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    #calls: Lcom/sec/android/app/ve/activity/ProjectListActivity;->getElementFilePath(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$19(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    .line 2823
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v18

    .line 2824
    .local v18, retouchEdit:Lcom/samsung/app/video/editor/external/Edit;
    const/4 v7, 0x0

    .line 2825
    .local v7, effect:I
    if-eqz v18, :cond_345

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v24

    if-eqz v24, :cond_345

    .line 2826
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v7

    .line 2828
    :cond_345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_571

    .line 2829
    const-string v24, "path got for image"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectElmntPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4f3

    .line 2833
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    .line 2834
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectElmntTime()F

    move-result v25

    .line 2833
    cmpl-float v24, v24, v25

    if-nez v24, :cond_4f3

    .line 2835
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/app/video/editor/external/Element;->getEdit(I)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v14

    .line 2836
    .local v14, projEffect:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v14, :cond_465

    .line 2837
    const-string v24, "Effect Edit not null"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    .line 2839
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectBitmapEffect()I

    move-result v24

    .line 2838
    move/from16 v0, v25

    move/from16 v1, v24

    if-ne v0, v1, :cond_3ca

    .line 2839
    if-eqz v8, :cond_3ca

    .line 2841
    const-string v24, "gettting stored bitmap"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2842
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2843
    .local v12, obitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2844
    move-object v3, v12

    goto/16 :goto_91

    .line 2846
    .end local v12           #obitmap:Landroid/graphics/Bitmap;
    :cond_3ca
    const-string v24, "getting bitmap from engine...Effect changed"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2847
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/ve/util/Utils;->getImageBitmap(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2848
    .local v6, ebitmap:Landroid/graphics/Bitmap;
    if-eqz v18, :cond_3f7

    .line 2850
    :try_start_3eb
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->applyEffect(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_3f6
    .catch Ljava/lang/Exception; {:try_start_3eb .. :try_end_3f6} :catch_45d

    move-result-object v6

    .line 2855
    :cond_3f7
    :goto_3f7
    if-eqz v6, :cond_462

    .line 2856
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2857
    move-object v3, v6

    .line 2858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntPath(Ljava/lang/String;)V

    .line 2859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    .line 2860
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    .line 2859
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntTime(F)V

    .line 2861
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectBitmap(Landroid/graphics/Bitmap;)V

    .line 2862
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/app/video/editor/external/Element;->getEdit(I)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectBitmapEffect(I)V

    goto/16 :goto_91

    .line 2851
    :catch_45d
    move-exception v5

    .line 2852
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f7

    .line 2864
    .end local v5           #e:Ljava/lang/Exception;
    :cond_462
    const/4 v8, 0x0

    goto/16 :goto_91

    .line 2868
    .end local v6           #ebitmap:Landroid/graphics/Bitmap;
    :cond_465
    const-string v24, "Effect Edit null"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2871
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectBitmapEffect()I

    move-result v24

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_482

    .line 2872
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectBitmapEffect()I

    move-result v24

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_484

    :cond_482
    if-nez v8, :cond_4e4

    .line 2873
    :cond_484
    const-string v24, "Effect changed now...."

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2874
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/ve/util/Utils;->getImageBitmap(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2875
    if-eqz v3, :cond_4e1

    .line 2876
    const-string v24, "not setting iof bytes null"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2877
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntPath(Ljava/lang/String;)V

    .line 2879
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntTime(F)V

    .line 2880
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectBitmap(Landroid/graphics/Bitmap;)V

    .line 2881
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectBitmapEffect(I)V

    goto/16 :goto_91

    .line 2884
    :cond_4e1
    const/4 v8, 0x0

    goto/16 :goto_91

    .line 2887
    :cond_4e4
    const-string v24, "gettting stored bitmap"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2888
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2889
    .restart local v12       #obitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2890
    move-object v3, v12

    goto/16 :goto_91

    .line 2895
    .end local v12           #obitmap:Landroid/graphics/Bitmap;
    .end local v14           #projEffect:Lcom/samsung/app/video/editor/external/Edit;
    :cond_4f3
    const-string v24, "getting bitmap from DB...path/time changed"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2896
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/ve/util/Utils;->getImageBitmap(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2897
    .restart local v6       #ebitmap:Landroid/graphics/Bitmap;
    if-eqz v18, :cond_525

    .line 2898
    const-string v24, "retouch edit not null"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2899
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->applyEffect(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2901
    :cond_525
    if-eqz v6, :cond_56e

    .line 2902
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2903
    move-object v3, v6

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntPath(Ljava/lang/String;)V

    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    .line 2906
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    .line 2905
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntTime(F)V

    .line 2907
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_91

    .line 2909
    :cond_56e
    const/4 v8, 0x0

    goto/16 :goto_91

    .line 2913
    .end local v6           #ebitmap:Landroid/graphics/Bitmap;
    :cond_571
    const-string v24, "All corresponsding images of Elements in project deleted"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2914
    const/4 v8, 0x0

    goto/16 :goto_91

    .line 2920
    .end local v7           #effect:I
    .end local v18           #retouchEdit:Lcom/samsung/app/video/editor/external/Edit;
    :cond_579
    move/from16 v21, p1

    .line 2921
    .local v21, temp:I
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "poistion while getting path"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    #calls: Lcom/sec/android/app/ve/activity/ProjectListActivity;->getElementFilePath(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$19(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    .line 2923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v18

    .line 2924
    .restart local v18       #retouchEdit:Lcom/samsung/app/video/editor/external/Edit;
    const/4 v7, 0x0

    .line 2925
    .restart local v7       #effect:I
    if-eqz v18, :cond_5da

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v24

    if-eqz v24, :cond_5da

    .line 2926
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v7

    .line 2928
    :cond_5da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7c6

    .line 2929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectElmntPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_762

    .line 2930
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    .line 2931
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectElmntTime()F

    move-result v25

    .line 2930
    cmpl-float v24, v24, v25

    if-nez v24, :cond_762

    .line 2932
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    .line 2933
    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/app/video/editor/external/Element;->getEdit(I)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v14

    .line 2934
    .restart local v14       #projEffect:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v14, :cond_6c3

    .line 2935
    const-string v24, "Effect Edit not null"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2936
    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v24

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectBitmapEffect()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_642

    if-eqz v8, :cond_642

    .line 2938
    const-string v24, "gettting stored bitmap"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2939
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2940
    .restart local v12       #obitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2941
    move-object v3, v12

    goto/16 :goto_91

    .line 2943
    .end local v12           #obitmap:Landroid/graphics/Bitmap;
    :cond_642
    const-string v24, "getting bitmap from engine...Effect changed"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2944
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 2945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->getBitmapFromEngine(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2946
    .restart local v6       #ebitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_6c0

    .line 2947
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2948
    move-object v3, v6

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntPath(Ljava/lang/String;)V

    .line 2950
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntTime(F)V

    .line 2951
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectBitmap(Landroid/graphics/Bitmap;)V

    .line 2952
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/app/video/editor/external/Element;->getEdit(I)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectBitmapEffect(I)V

    goto/16 :goto_91

    .line 2954
    :cond_6c0
    const/4 v8, 0x0

    goto/16 :goto_91

    .line 2958
    .end local v6           #ebitmap:Landroid/graphics/Bitmap;
    :cond_6c3
    const-string v24, "Effect Edit null"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2961
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectBitmapEffect()I

    move-result v24

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_6e0

    .line 2962
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectBitmapEffect()I

    move-result v24

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6e2

    :cond_6e0
    if-nez v8, :cond_753

    .line 2963
    :cond_6e2
    const-string v24, "Effect changed now...."

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2964
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->getBitmapFromEngine(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2966
    if-eqz v3, :cond_750

    .line 2967
    const-string v24, "not setting iof bytes null"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntPath(Ljava/lang/String;)V

    .line 2970
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntTime(F)V

    .line 2971
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectBitmap(Landroid/graphics/Bitmap;)V

    .line 2972
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectBitmapEffect(I)V

    goto/16 :goto_91

    .line 2975
    :cond_750
    const/4 v8, 0x0

    goto/16 :goto_91

    .line 2978
    :cond_753
    const-string v24, "gettting stored bitmap"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2979
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2980
    .restart local v12       #obitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2981
    move-object v3, v12

    goto/16 :goto_91

    .line 2986
    .end local v12           #obitmap:Landroid/graphics/Bitmap;
    .end local v14           #projEffect:Lcom/samsung/app/video/editor/external/Edit;
    :cond_762
    const-string v24, "getting bitmap from engine...path/time changed"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2987
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 2988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->getBitmapFromEngine(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2989
    .restart local v6       #ebitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_7c3

    .line 2990
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2991
    move-object v3, v6

    .line 2992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntPath(Ljava/lang/String;)V

    .line 2993
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectElmntTime(F)V

    .line 2994
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_91

    .line 2996
    :cond_7c3
    const/4 v8, 0x0

    goto/16 :goto_91

    .line 3000
    .end local v6           #ebitmap:Landroid/graphics/Bitmap;
    :cond_7c6
    const/4 v8, 0x0

    goto/16 :goto_91

    .line 3053
    .end local v7           #effect:I
    .end local v8           #image:Landroid/widget/ImageView;
    .end local v11           #layout:Landroid/widget/LinearLayout;
    .end local v16           #project_layout:Landroid/widget/FrameLayout;
    .end local v18           #retouchEdit:Lcom/samsung/app/video/editor/external/Edit;
    .end local v21           #temp:I
    :cond_7c9
    const-string v24, "Bipz"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_203

    .line 3062
    :cond_7d0
    const v24, 0x7f0b00a8

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_233

    .line 3075
    .restart local v13       #pos:I
    .restart local v15       #project:Landroid/widget/ImageView;
    :cond_7e2
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$27()Landroid/widget/ImageView;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29f
.end method

.class public Lcom/google/research/handwriting/base/StrokeList;
.super Ljava/util/ArrayList;
.source "StrokeList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/base/StrokeList$Cut;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/research/handwriting/base/Stroke;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/research/handwriting/base/StrokeList;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/research/handwriting/base/StrokeList; = null

.field private static final FORMAT_STR:Ljava/lang/String; = "%.4e"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cuts:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/research/handwriting/base/StrokeList$Cut;",
            ">;"
        }
    .end annotation
.end field

.field private inputType:I

.field private postContext:Ljava/lang/String;

.field private preContext:Ljava/lang/String;

.field private writingGuideHeight:I

.field private writingGuideWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/research/handwriting/base/StrokeList;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/StrokeList;-><init>()V

    sput-object v0, Lcom/google/research/handwriting/base/StrokeList;->EMPTY:Lcom/google/research/handwriting/base/StrokeList;

    .line 165
    new-instance v0, Lcom/google/research/handwriting/base/StrokeList$1;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/StrokeList$1;-><init>()V

    sput-object v0, Lcom/google/research/handwriting/base/StrokeList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/handwriting/base/StrokeList;->inputType:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->preContext:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->postContext:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->cuts:Ljava/util/LinkedList;

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/handwriting/base/StrokeList;->inputType:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->preContext:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->postContext:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->cuts:Ljava/util/LinkedList;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/research/handwriting/base/StrokeList;-><init>()V

    .line 105
    sget-object v0, Lcom/google/research/handwriting/base/Stroke;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/google/research/handwriting/base/StrokeList;Z)V
    .registers 8
    .parameter "in"
    .parameter "deep"

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/research/handwriting/base/StrokeList;->inputType:I

    .line 34
    const-string v3, ""

    iput-object v3, p0, Lcom/google/research/handwriting/base/StrokeList;->preContext:Ljava/lang/String;

    .line 35
    const-string v3, ""

    iput-object v3, p0, Lcom/google/research/handwriting/base/StrokeList;->postContext:Ljava/lang/String;

    .line 134
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/google/research/handwriting/base/StrokeList;->cuts:Ljava/util/LinkedList;

    .line 83
    iget v3, p1, Lcom/google/research/handwriting/base/StrokeList;->writingGuideHeight:I

    iput v3, p0, Lcom/google/research/handwriting/base/StrokeList;->writingGuideHeight:I

    .line 84
    iget v3, p1, Lcom/google/research/handwriting/base/StrokeList;->writingGuideWidth:I

    iput v3, p0, Lcom/google/research/handwriting/base/StrokeList;->writingGuideWidth:I

    .line 85
    iget v3, p1, Lcom/google/research/handwriting/base/StrokeList;->inputType:I

    iput v3, p0, Lcom/google/research/handwriting/base/StrokeList;->inputType:I

    .line 86
    if-eqz p2, :cond_52

    .line 87
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/google/research/handwriting/base/StrokeList;->preContext:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/research/handwriting/base/StrokeList;->preContext:Ljava/lang/String;

    .line 88
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/google/research/handwriting/base/StrokeList;->postContext:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/research/handwriting/base/StrokeList;->postContext:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/handwriting/base/Stroke;

    .line 90
    .local v2, s:Lcom/google/research/handwriting/base/Stroke;
    new-instance v0, Lcom/google/research/handwriting/base/Stroke;

    invoke-direct {v0, v2}, Lcom/google/research/handwriting/base/Stroke;-><init>(Lcom/google/research/handwriting/base/Stroke;)V

    .line 91
    .local v0, copy:Lcom/google/research/handwriting/base/Stroke;
    invoke-virtual {p0, v0}, Lcom/google/research/handwriting/base/StrokeList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 94
    .end local v0           #copy:Lcom/google/research/handwriting/base/Stroke;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/google/research/handwriting/base/Stroke;
    :cond_52
    iget-object v3, p1, Lcom/google/research/handwriting/base/StrokeList;->preContext:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/research/handwriting/base/StrokeList;->preContext:Ljava/lang/String;

    .line 95
    iget-object v3, p1, Lcom/google/research/handwriting/base/StrokeList;->postContext:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/research/handwriting/base/StrokeList;->postContext:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/base/StrokeList;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_5d
    return-void
.end method

.method public static log2(D)D
    .registers 6
    .parameter "v"

    .prologue
    .line 217
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static roundToSignificantDigits(D)D
    .registers 7
    .parameter "v"

    .prologue
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1b

    .line 229
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%.4e"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    .line 231
    .end local p0
    :cond_1b
    return-wide p0
.end method


# virtual methods
.method public addCut(II)V
    .registers 5
    .parameter "stroke"
    .parameter "point"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->cuts:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/research/handwriting/base/StrokeList$Cut;

    invoke-direct {v1, p1, p2}, Lcom/google/research/handwriting/base/StrokeList$Cut;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public addCut(IIFLcom/google/research/handwriting/base/StrokeList$Cut$CutType;)V
    .registers 7
    .parameter "stroke"
    .parameter "point"
    .parameter "cost"
    .parameter "type"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->cuts:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/research/handwriting/base/StrokeList$Cut;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/research/handwriting/base/StrokeList$Cut;-><init>(IIFLcom/google/research/handwriting/base/StrokeList$Cut$CutType;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public asJsonArray()Lorg/json/JSONArray;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 237
    .local v7, result:Lorg/json/JSONArray;
    const/high16 v10, -0x4080

    .line 239
    .local v10, t0:F
    invoke-virtual {p0}, Lcom/google/research/handwriting/base/StrokeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/research/handwriting/base/Stroke;

    .line 240
    .local v8, s:Lcom/google/research/handwriting/base/Stroke;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 241
    .local v9, strokeJson:Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 242
    .local v4, jsonX:Lorg/json/JSONArray;
    invoke-virtual {v8}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 243
    .local v6, p:Lcom/google/research/handwriting/base/Stroke$Point;
    iget v11, v6, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Lcom/google/research/handwriting/base/StrokeList;->roundToSignificantDigits(D)D

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    goto :goto_25

    .line 245
    .end local v6           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_3c
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 247
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 248
    .local v5, jsonY:Lorg/json/JSONArray;
    invoke-virtual {v8}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 249
    .restart local v6       #p:Lcom/google/research/handwriting/base/Stroke$Point;
    iget v11, v6, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Lcom/google/research/handwriting/base/StrokeList;->roundToSignificantDigits(D)D

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    goto :goto_48

    .line 251
    .end local v6           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_5f
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 253
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 254
    .local v3, jsonT:Lorg/json/JSONArray;
    invoke-virtual {v8}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 255
    .restart local v6       #p:Lcom/google/research/handwriting/base/Stroke$Point;
    const/high16 v11, -0x4080

    cmpl-float v11, v10, v11

    if-nez v11, :cond_7f

    .line 256
    iget v10, v6, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    .line 258
    :cond_7f
    iget v11, v6, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    sub-float/2addr v11, v10

    float-to-double v11, v11

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    goto :goto_6b

    .line 260
    .end local v6           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_87
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 262
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 263
    .local v2, jsonP:Lorg/json/JSONArray;
    invoke-virtual {v8}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 264
    .restart local v6       #p:Lcom/google/research/handwriting/base/Stroke$Point;
    iget v11, v6, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Lcom/google/research/handwriting/base/StrokeList;->roundToSignificantDigits(D)D

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    goto :goto_93

    .line 266
    .end local v6           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_aa
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 268
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_b

    .line 270
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #jsonP:Lorg/json/JSONArray;
    .end local v3           #jsonT:Lorg/json/JSONArray;
    .end local v4           #jsonX:Lorg/json/JSONArray;
    .end local v5           #jsonY:Lorg/json/JSONArray;
    .end local v8           #s:Lcom/google/research/handwriting/base/Stroke;
    .end local v9           #strokeJson:Lorg/json/JSONArray;
    :cond_b2
    return-object v7
.end method

.method public cuts()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/research/handwriting/base/StrokeList$Cut;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->cuts:Ljava/util/LinkedList;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/google/research/handwriting/base/StrokeList;->inputType:I

    return v0
.end method

.method public getLast()Lcom/google/research/handwriting/base/Stroke;
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/research/handwriting/base/StrokeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/base/Stroke;

    return-object v0
.end method

.method public getPostContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->postContext:Ljava/lang/String;

    return-object v0
.end method

.method public getPreContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->preContext:Ljava/lang/String;

    return-object v0
.end method

.method public getWritingGuideHeight()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/research/handwriting/base/StrokeList;->writingGuideHeight:I

    return v0
.end method

.method public getWritingGuideWidth()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/google/research/handwriting/base/StrokeList;->writingGuideWidth:I

    return v0
.end method

.method public parseFromJsonArray(Lorg/json/JSONArray;)V
    .registers 16
    .parameter "jsonStrokeList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 180
    .local v7, numStrokes:I
    invoke-virtual {p0}, Lcom/google/research/handwriting/base/StrokeList;->clear()V

    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v7, :cond_88

    .line 182
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 183
    .local v3, jsonStroke:Lorg/json/JSONArray;
    new-instance v8, Lcom/google/research/handwriting/base/Stroke;

    invoke-direct {v8}, Lcom/google/research/handwriting/base/Stroke;-><init>()V

    .line 185
    .local v8, s:Lcom/google/research/handwriting/base/Stroke;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 186
    .local v5, jsonX:Lorg/json/JSONArray;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 187
    .local v6, jsonY:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 188
    .local v4, jsonT:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 189
    .local v2, jsonP:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_37

    .line 190
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 191
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_37

    .line 192
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 197
    :cond_37
    const/4 v1, 0x0

    .local v1, j:I
    :goto_38
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_82

    .line 198
    if-eqz v4, :cond_71

    .line 199
    if-eqz v2, :cond_5c

    .line 200
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    .line 197
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 203
    :cond_5c
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3f80

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    goto :goto_59

    .line 207
    :cond_71
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    double-to-float v10, v10

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    goto :goto_59

    .line 212
    :cond_82
    invoke-virtual {p0, v8}, Lcom/google/research/handwriting/base/StrokeList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 214
    .end local v1           #j:I
    .end local v2           #jsonP:Lorg/json/JSONArray;
    .end local v3           #jsonStroke:Lorg/json/JSONArray;
    .end local v4           #jsonT:Lorg/json/JSONArray;
    .end local v5           #jsonX:Lorg/json/JSONArray;
    .end local v6           #jsonY:Lorg/json/JSONArray;
    .end local v8           #s:Lcom/google/research/handwriting/base/Stroke;
    :cond_88
    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "preContext"
    .parameter "postContext"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/research/handwriting/base/StrokeList;->preContext:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/google/research/handwriting/base/StrokeList;->postContext:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setCuts(Ljava/util/LinkedList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/research/handwriting/base/StrokeList$Cut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, cuts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/research/handwriting/base/StrokeList$Cut;>;"
    iget-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->cuts:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/google/research/handwriting/base/StrokeList;->cuts:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 141
    return-void
.end method

.method public setInputType(I)V
    .registers 2
    .parameter "inputType"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/research/handwriting/base/StrokeList;->inputType:I

    .line 39
    return-void
.end method

.method public setWritingGuide(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/research/handwriting/base/StrokeList;->writingGuideWidth:I

    .line 47
    iput p2, p0, Lcom/google/research/handwriting/base/StrokeList;->writingGuideHeight:I

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 162
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 163
    return-void
.end method

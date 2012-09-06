.class final Lcom/google/zxing/client/android/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/client/android/a/b;->a:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private static a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 138
    const v1, 0x7fffffff

    .line 139
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 140
    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v4, v5

    .line 141
    const v5, 0x12c00

    if-lt v4, v5, :cond_c

    const v5, 0x5dc00

    if-gt v4, v5, :cond_c

    .line 142
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    .line 145
    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    .line 146
    iget v0, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v5

    iget v6, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v4

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 147
    if-nez v0, :cond_4d

    .line 148
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 156
    :goto_3d
    if-nez v0, :cond_4c

    .line 157
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 158
    new-instance v0, Landroid/graphics/Point;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 160
    :cond_4c
    return-object v0

    .line 151
    :cond_4d
    if-ge v0, v1, :cond_57

    .line 152
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    :goto_54
    move-object v2, v1

    move v1, v0

    .line 155
    goto :goto_c

    :cond_57
    move v0, v1

    move-object v1, v2

    goto :goto_54

    :cond_5a
    move-object v0, v2

    goto :goto_3d
.end method

.method private static varargs a(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 165
    const-string v0, "CameraConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supported values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v1, 0x0

    .line 167
    if-eqz p0, :cond_3d

    .line 168
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_1a
    if-ge v2, v3, :cond_3d

    aget-object v0, p1, v2

    .line 169
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 175
    :goto_24
    const-string v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Settable value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-object v0

    .line 168
    :cond_39
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a

    :cond_3d
    move-object v0, v1

    goto :goto_24
.end method


# virtual methods
.method final a()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/zxing/client/android/a/b;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method final a(Landroid/hardware/Camera;)V
    .registers 8
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/google/zxing/client/android/a/b;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 54
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 56
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 59
    if-ge v1, v0, :cond_60

    .line 60
    const-string v3, "CameraConfiguration"

    const-string v4, "Display reports portrait orientation; assuming this is incorrect"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_23
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/google/zxing/client/android/a/b;->b:Landroid/graphics/Point;

    .line 66
    const-string v0, "CameraConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Screen resolution: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/zxing/client/android/a/b;->b:Landroid/graphics/Point;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/google/zxing/client/android/a/b;->b:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/android/a/b;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/a/b;->c:Landroid/graphics/Point;

    .line 68
    const-string v0, "CameraConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera resolution: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/zxing/client/android/a/b;->c:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    :cond_60
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_23
.end method

.method final b()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/zxing/client/android/a/b;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method final b(Landroid/hardware/Camera;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 74
    if-nez v0, :cond_10

    .line 75
    const-string v0, "CameraConfiguration"

    const-string v1, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_f
    return-void

    .line 79
    :cond_10
    iget-object v1, p0, Lcom/google/zxing/client/android/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 81
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/zxing/client/android/a/b;->a(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 82
    :cond_28
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "auto"

    aput-object v3, v2, v4

    const-string v3, "macro"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/zxing/client/android/a/b;->a(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_40

    .line 86
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 89
    :cond_40
    iget-object v1, p0, Lcom/google/zxing/client/android/a/b;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/zxing/client/android/a/b;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_f
.end method

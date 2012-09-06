.class public Lcom/google/android/maps/driveabout/app/SearchActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Ln/Q;Ln/Q;)Ln/aa;
    .registers 5
    .parameter
    .parameter

    .prologue
    const v2, 0x461c4000

    .line 138
    invoke-virtual {p0}, Ln/Q;->e()D

    move-result-wide v0

    double-to-float v0, v0

    .line 139
    invoke-virtual {p0, p1}, Ln/Q;->c(Ln/Q;)F

    move-result v1

    div-float v0, v1, v0

    .line 142
    cmpg-float v1, v0, v2

    if-gtz v1, :cond_17

    .line 148
    :goto_12
    invoke-static {p0, p1}, Ln/aa;->a(Ln/Q;Ln/Q;)Ln/aa;

    move-result-object v0

    return-object v0

    .line 145
    :cond_17
    div-float v0, v2, v0

    .line 146
    invoke-virtual {p0, p1, v0}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object p1

    goto :goto_12
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 60
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 62
    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->finish()V

    .line 69
    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/aN;Ln/ab;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    .line 91
    const/high16 v1, -0x4080

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(F)Ln/ai;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_86

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v2

    if-nez v2, :cond_86

    .line 96
    new-instance v2, Ln/ai;

    invoke-virtual {v1}, Ln/ai;->d()Ln/U;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Ln/ai;->b()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1}, Ln/ai;->c()I

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Ln/ai;-><init>(Ln/U;II)V

    invoke-virtual {v2}, Ln/ai;->e()Ln/U;

    move-result-object v1

    .line 102
    :goto_2b
    if-eqz p2, :cond_37

    .line 103
    invoke-virtual {p2}, Ln/ab;->a()Ln/aa;

    move-result-object v0

    .line 126
    :cond_31
    :goto_31
    if-eqz v0, :cond_36

    .line 127
    invoke-static {p0, v1, v0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Ln/U;Ln/aa;)V

    .line 130
    :cond_36
    return-void

    .line 106
    :cond_37
    const v2, 0x461c4000

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/aN;->a(F)Ln/ai;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_45

    .line 109
    invoke-virtual {v2}, Ln/ai;->f()Ln/aa;

    move-result-object v0

    goto :goto_31

    .line 110
    :cond_45
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 111
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_80

    invoke-virtual {v2}, Lo/P;->c()Ln/s;

    move-result-object v3

    if-eqz v3, :cond_80

    .line 116
    invoke-virtual {v2}, Lo/P;->c()Ln/s;

    move-result-object v3

    invoke-virtual {v3}, Ln/s;->a()I

    move-result v3

    invoke-virtual {v2}, Lo/P;->c()Ln/s;

    move-result-object v2

    invoke-virtual {v2}, Ln/s;->b()I

    move-result v2

    invoke-static {v3, v2}, Ln/Q;->b(II)Ln/Q;

    move-result-object v2

    .line 119
    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Ln/Q;Ln/Q;)Ln/aa;

    move-result-object v0

    goto :goto_31

    .line 122
    :cond_80
    const/4 v2, 0x1

    invoke-static {v0, v2}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v0

    goto :goto_31

    :cond_86
    move-object v1, v0

    goto :goto_2b
.end method

.method private static a(Landroid/os/Bundle;Ln/U;Ln/aa;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-virtual {p2}, Ln/aa;->f()Ln/Q;

    move-result-object v0

    .line 157
    const-string v1, "centerLatitude"

    invoke-virtual {v0}, Ln/Q;->a()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v1, "centerLongitude"

    invoke-virtual {v0}, Ln/Q;->c()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    invoke-virtual {p2}, Ln/aa;->h()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Ln/Q;->b()D

    move-result-wide v3

    const-wide v5, 0x3f91df46a2529d39L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v0, v1, v3

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 162
    invoke-virtual {p2}, Ln/aa;->g()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3e3921fb54442d18L

    mul-double/2addr v1, v3

    const-wide v3, 0x404ca5dc1a63c1f8L

    mul-double/2addr v1, v3

    const-wide v3, 0x412e848000000000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 164
    const-string v2, "latitudeSpan"

    const/16 v3, 0x4642

    int-to-float v0, v0

    const v4, 0x3f8ccccd

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v0, "longitudeSpan"

    const/16 v2, 0x4642

    int-to-float v1, v1

    const v3, 0x3f8ccccd

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string v0, "skipSearchWizardOnBack"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    if-eqz p1, :cond_8b

    .line 170
    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Ln/U;)[B

    move-result-object v0

    .line 171
    if-eqz v0, :cond_8b

    .line 172
    const-string v1, "routePolyline"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 175
    :cond_8b
    return-void
.end method

.method static a(Ln/U;)[B
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v11, 0x3

    const/4 v0, 0x0

    .line 181
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 183
    const/4 v1, 0x1

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 185
    invoke-virtual {v2, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 186
    const v1, -0x3fbf5701

    invoke-virtual {v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 188
    const/4 v1, 0x4

    invoke-virtual {v3, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 193
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v4

    .line 194
    mul-int/lit8 v1, v4, 0x8

    new-array v5, v1, [B

    .line 195
    new-instance v6, Ln/Q;

    invoke-direct {v6}, Ln/Q;-><init>()V

    move v1, v0

    .line 197
    :goto_2b
    if-ge v0, v4, :cond_6f

    .line 198
    invoke-virtual {p0, v0, v6}, Ln/U;->a(ILn/Q;)V

    .line 199
    invoke-virtual {v6}, Ln/Q;->a()I

    move-result v7

    .line 200
    invoke-virtual {v6}, Ln/Q;->c()I

    move-result v8

    .line 201
    add-int/lit8 v9, v1, 0x1

    shr-int/lit8 v10, v7, 0x18

    int-to-byte v10, v10

    aput-byte v10, v5, v1

    .line 202
    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v10, v7, 0x10

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    .line 203
    add-int/lit8 v9, v1, 0x1

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    aput-byte v10, v5, v1

    .line 204
    add-int/lit8 v1, v9, 0x1

    int-to-byte v7, v7

    aput-byte v7, v5, v9

    .line 205
    add-int/lit8 v7, v1, 0x1

    shr-int/lit8 v9, v8, 0x18

    int-to-byte v9, v9

    aput-byte v9, v5, v1

    .line 206
    add-int/lit8 v1, v7, 0x1

    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    .line 207
    add-int/lit8 v7, v1, 0x1

    shr-int/lit8 v9, v8, 0x8

    int-to-byte v9, v9

    aput-byte v9, v5, v1

    .line 208
    add-int/lit8 v1, v7, 0x1

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 210
    :cond_6f
    const/4 v0, 0x6

    invoke-virtual {v3, v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 211
    invoke-virtual {v2, v11, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 214
    :try_start_76
    invoke-virtual {v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7b

    move-result-object v0

    .line 216
    :goto_7a
    return-object v0

    .line 215
    :catch_7b
    move-exception v0

    .line 216
    const/4 v0, 0x0

    goto :goto_7a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

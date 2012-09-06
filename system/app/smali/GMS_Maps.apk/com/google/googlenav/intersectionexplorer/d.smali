.class public Lcom/google/googlenav/intersectionexplorer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/intersectionexplorer/o;


# static fields
.field public static a:Z

.field public static final b:Lat/Y;

.field private static final d:Lcom/google/googlenav/intersectionexplorer/d;

.field private static e:Z

.field private static final f:[J

.field private static final g:[J

.field private static final h:[J

.field private static final i:[J

.field private static final j:[J

.field private static m:Landroid/speech/tts/TextToSpeech;


# instance fields
.field public c:Ljava/lang/String;

.field private k:Lat/u;

.field private l:Lcom/google/googlenav/ui/v;

.field private n:Landroid/location/LocationManager;

.field private o:Landroid/os/Vibrator;

.field private p:Lcom/google/android/maps/driveabout/vector/bU;

.field private final q:Lcom/google/googlenav/intersectionexplorer/k;

.field private r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

.field private s:Ln/Q;

.field private t:Ljava/util/Map;

.field private final u:Ljava/lang/Object;

.field private v:Lcom/google/googlenav/intersectionexplorer/j;

.field private w:Ljava/lang/String;

.field private x:Ln/Q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 59
    new-instance v0, Lcom/google/googlenav/intersectionexplorer/d;

    invoke-direct {v0}, Lcom/google/googlenav/intersectionexplorer/d;-><init>()V

    sput-object v0, Lcom/google/googlenav/intersectionexplorer/d;->d:Lcom/google/googlenav/intersectionexplorer/d;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/intersectionexplorer/d;->e:Z

    .line 72
    new-array v0, v1, [J

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/googlenav/intersectionexplorer/d;->f:[J

    .line 73
    new-array v0, v1, [J

    fill-array-data v0, :array_46

    sput-object v0, Lcom/google/googlenav/intersectionexplorer/d;->g:[J

    .line 74
    new-array v0, v1, [J

    fill-array-data v0, :array_52

    sput-object v0, Lcom/google/googlenav/intersectionexplorer/d;->h:[J

    .line 75
    new-array v0, v1, [J

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/google/googlenav/intersectionexplorer/d;->i:[J

    .line 76
    new-array v0, v1, [J

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/google/googlenav/intersectionexplorer/d;->j:[J

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/intersectionexplorer/d;->a:Z

    .line 88
    const/16 v0, 0x14

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/intersectionexplorer/d;->b:Lat/Y;

    return-void

    .line 72
    :array_3a
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 73
    :array_46
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 74
    :array_52
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 75
    :array_5e
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 76
    :array_6a
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/google/googlenav/intersectionexplorer/k;

    invoke-direct {v0}, Lcom/google/googlenav/intersectionexplorer/k;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->c:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->u:Ljava/lang/Object;

    .line 454
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/intersectionexplorer/d;)Lcom/google/googlenav/intersectionexplorer/k;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    return-object v0
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 176
    sget-boolean v0, Lcom/google/googlenav/intersectionexplorer/d;->e:Z

    if-eqz v0, :cond_9

    .line 177
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->d:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-direct {v0}, Lcom/google/googlenav/intersectionexplorer/d;->o()V

    .line 179
    :cond_9
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/v;Lat/u;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/d;->l:Lcom/google/googlenav/ui/v;

    .line 187
    iput-object p2, p0, Lcom/google/googlenav/intersectionexplorer/d;->k:Lat/u;

    .line 189
    invoke-direct {p0, p3}, Lcom/google/googlenav/intersectionexplorer/d;->b(Z)V

    .line 190
    return-void
.end method

.method public static a(Lcom/google/googlenav/ui/v;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 165
    sget-boolean v0, Lcom/google/googlenav/intersectionexplorer/d;->e:Z

    if-nez v0, :cond_e

    .line 166
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->d:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lcom/google/googlenav/ui/v;Lat/u;Z)V

    .line 170
    :goto_d
    return-void

    .line 168
    :cond_e
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->d:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-direct {v0}, Lcom/google/googlenav/intersectionexplorer/d;->n()V

    goto :goto_d
.end method

.method static synthetic b(Lcom/google/googlenav/intersectionexplorer/d;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->u:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 438
    const-string v0, "St,"

    const-string v1, "Street"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "St."

    const-string v2, "Street"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rd"

    const-string v2, "Road"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fwy"

    const-string v2, "Freeway"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pkwy"

    const-string v2, "Parkway"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Blvd"

    const-string v2, "Boulevard"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expy"

    const-string v2, "Expressway"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ave"

    const-string v2, "Avenue"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dr"

    const-string v2, "Drive"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ct"

    const-string v2, "Court"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 240
    if-nez p1, :cond_1a

    .line 241
    invoke-direct {p0}, Lcom/google/googlenav/intersectionexplorer/d;->s()V

    .line 246
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bU;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bU;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->p:Lcom/google/android/maps/driveabout/vector/bU;

    .line 247
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->p:Lcom/google/android/maps/driveabout/vector/bU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bU;->e()V

    .line 248
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->e()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->p:Lcom/google/android/maps/driveabout/vector/bU;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 252
    :cond_1a
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->o:Landroid/os/Vibrator;

    .line 253
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lcom/google/googlenav/intersectionexplorer/d;->m:Landroid/speech/tts/TextToSpeech;

    .line 255
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/o;)V

    .line 257
    invoke-direct {p0}, Lcom/google/googlenav/intersectionexplorer/d;->q()V

    .line 259
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/intersectionexplorer/d;->e:Z

    .line 260
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/intersectionexplorer/d;)Landroid/os/Vibrator;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->o:Landroid/os/Vibrator;

    return-object v0
.end method

.method public static c()Lcom/google/googlenav/intersectionexplorer/d;
    .registers 1

    .prologue
    .line 348
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->d:Lcom/google/googlenav/intersectionexplorer/d;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/intersectionexplorer/d;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->t:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/intersectionexplorer/d;)Lat/u;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->k:Lat/u;

    return-object v0
.end method

.method static synthetic i()[J
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->j:[J

    return-object v0
.end method

.method static synthetic j()[J
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->i:[J

    return-object v0
.end method

.method static synthetic k()[J
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->h:[J

    return-object v0
.end method

.method static synthetic l()[J
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->g:[J

    return-object v0
.end method

.method static synthetic m()[J
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->f:[J

    return-object v0
.end method

.method private n()V
    .registers 3

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/google/googlenav/intersectionexplorer/d;->s()V

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->setVisibility(I)V

    .line 201
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->f()Lcom/google/googlenav/ui/android/AndroidVectorView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->addView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/k;->b()Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->s:Ln/Q;

    .line 206
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->s:Ln/Q;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ln/Q;)V

    .line 209
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->p:Lcom/google/android/maps/driveabout/vector/bU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bU;->e()V

    .line 210
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->e()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->p:Lcom/google/android/maps/driveabout/vector/bU;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 211
    return-void

    .line 205
    :cond_3c
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->b()Ln/Q;

    move-result-object v0

    goto :goto_24
.end method

.method private o()V
    .registers 3

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/googlenav/intersectionexplorer/d;->t()V

    .line 220
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    if-eqz v0, :cond_1d

    .line 221
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->setVisibility(I)V

    .line 223
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->f()Lcom/google/googlenav/ui/android/AndroidVectorView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->removeView(Landroid/view/View;)V

    .line 227
    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->p:Lcom/google/android/maps/driveabout/vector/bU;

    if-eqz v0, :cond_2a

    .line 228
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->e()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->p:Lcom/google/android/maps/driveabout/vector/bU;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 230
    :cond_2a
    return-void
.end method

.method private p()Ln/Q;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->n:Landroid/location/LocationManager;

    if-nez v0, :cond_13

    .line 297
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->n:Landroid/location/LocationManager;

    .line 302
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->n:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 303
    if-eqz v3, :cond_71

    .line 304
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    .line 307
    :goto_29
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/d;->n:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 308
    if-eqz v4, :cond_6f

    .line 309
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v2

    .line 312
    :goto_3f
    iget-object v5, p0, Lcom/google/googlenav/intersectionexplorer/d;->l:Lcom/google/googlenav/ui/v;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v5

    .line 313
    if-eqz v5, :cond_50

    .line 314
    invoke-static {v5}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v0

    .line 323
    :cond_4f
    :goto_4f
    return-object v0

    .line 319
    :cond_50
    if-eqz v3, :cond_67

    if-eqz v4, :cond_67

    .line 320
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    cmp-long v1, v5, v3

    if-lez v1, :cond_65

    const/4 v1, 0x1

    .line 321
    :goto_61
    if-nez v1, :cond_4f

    move-object v0, v2

    goto :goto_4f

    .line 320
    :cond_65
    const/4 v1, 0x0

    goto :goto_61

    .line 323
    :cond_67
    if-nez v0, :cond_4f

    if-eqz v2, :cond_6d

    move-object v0, v2

    goto :goto_4f

    :cond_6d
    move-object v0, v1

    goto :goto_4f

    :cond_6f
    move-object v2, v1

    goto :goto_3f

    :cond_71
    move-object v0, v1

    goto :goto_29
.end method

.method private q()V
    .registers 11

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 331
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/google/googlenav/intersectionexplorer/a;

    sget-object v2, Lcom/google/googlenav/intersectionexplorer/a;->b:Lcom/google/googlenav/intersectionexplorer/a;

    aput-object v2, v1, v0

    sget-object v2, Lcom/google/googlenav/intersectionexplorer/a;->c:Lcom/google/googlenav/intersectionexplorer/a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/googlenav/intersectionexplorer/a;->f:Lcom/google/googlenav/intersectionexplorer/a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/googlenav/intersectionexplorer/a;->i:Lcom/google/googlenav/intersectionexplorer/a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/googlenav/intersectionexplorer/a;->h:Lcom/google/googlenav/intersectionexplorer/a;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Lcom/google/googlenav/intersectionexplorer/a;->g:Lcom/google/googlenav/intersectionexplorer/a;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/googlenav/intersectionexplorer/a;->d:Lcom/google/googlenav/intersectionexplorer/a;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/googlenav/intersectionexplorer/a;->a:Lcom/google/googlenav/intersectionexplorer/a;

    aput-object v3, v1, v2

    .line 336
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "north"

    aput-object v3, v2, v0

    const-string v3, "northeast"

    aput-object v3, v2, v4

    const-string v3, "east"

    aput-object v3, v2, v5

    const-string v3, "southeast"

    aput-object v3, v2, v6

    const-string v3, "south"

    aput-object v3, v2, v7

    const/4 v3, 0x5

    const-string v4, "southwest"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "west"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "northwest"

    aput-object v4, v2, v3

    .line 338
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlenav/intersectionexplorer/d;->t:Ljava/util/Map;

    .line 339
    :goto_59
    array-length v3, v2

    if-ge v0, v3, :cond_77

    .line 340
    iget-object v3, p0, Lcom/google/googlenav/intersectionexplorer/d;->t:Ljava/util/Map;

    aget-object v4, v1, v0

    new-instance v5, Lcom/google/googlenav/intersectionexplorer/h;

    const-wide v6, 0x400921fb54442d18L

    int-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4010

    div-double/2addr v6, v8

    aget-object v8, v2, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/google/googlenav/intersectionexplorer/h;-><init>(DLjava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 342
    :cond_77
    return-void
.end method

.method private static r()Lcom/google/android/maps/MapsActivity;
    .registers 1

    .prologue
    .line 640
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->i()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method private s()V
    .registers 3

    .prologue
    .line 731
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->l:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ap()Lcom/google/googlenav/ui/bJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bJ;->b()V

    .line 734
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->l:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaM/am;->b(Z)V

    .line 737
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->l:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->at()V

    .line 739
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->f()Lcom/google/googlenav/ui/android/AndroidVectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a()V

    .line 740
    return-void
.end method

.method private t()V
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->l:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ap()Lcom/google/googlenav/ui/bJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bJ;->b()V

    .line 748
    return-void
.end method


# virtual methods
.method public a(Lat/B;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 547
    if-nez p1, :cond_3

    .line 564
    :goto_2
    return-void

    .line 551
    :cond_3
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 552
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->c:Ljava/lang/String;

    .line 553
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_2a

    .line 554
    invoke-static {p1}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->s:Ln/Q;

    .line 555
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->s:Ln/Q;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ln/Q;)V

    .line 556
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->k:Lat/u;

    sget-object v1, Lcom/google/googlenav/intersectionexplorer/d;->b:Lat/Y;

    invoke-virtual {v0, p1, v1}, Lat/u;->d(Lat/B;Lat/Y;)V

    .line 558
    if-nez p2, :cond_2d

    .line 559
    const/16 v0, 0x203

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 553
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    .line 561
    :cond_2d
    const/16 v0, 0x204

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bU;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 582
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/d;->p:Lcom/google/android/maps/driveabout/vector/bU;

    .line 587
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    if-nez v0, :cond_2e

    .line 588
    new-instance v0, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/intersectionexplorer/i;

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/intersectionexplorer/i;-><init>(Lcom/google/googlenav/intersectionexplorer/d;Lcom/google/googlenav/intersectionexplorer/e;)V

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;-><init>(Landroid/content/Context;Lcom/google/googlenav/intersectionexplorer/b;)V

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    .line 589
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->f()Lcom/google/googlenav/ui/android/AndroidVectorView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->addView(Landroid/view/View;)V

    .line 592
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->b()Ln/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->s:Ln/Q;

    .line 593
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->s:Ln/Q;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ln/Q;)V

    .line 610
    :cond_2d
    :goto_2d
    return-void

    .line 594
    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    if-eqz v0, :cond_2d

    .line 598
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/GestureOverlay;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 599
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->f()Lcom/google/googlenav/ui/android/AndroidVectorView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->r:Lcom/google/googlenav/intersectionexplorer/GestureOverlay;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->addView(Landroid/view/View;)V

    .line 603
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->o:Landroid/os/Vibrator;

    .line 604
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lcom/google/googlenav/intersectionexplorer/d;->m:Landroid/speech/tts/TextToSpeech;

    .line 607
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/k;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/util/Set;)V

    .line 608
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/k;->b()Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/d;->b(Lcom/google/googlenav/intersectionexplorer/c;)V

    goto :goto_2d
.end method

.method public a(Lcom/google/googlenav/intersectionexplorer/c;)V
    .registers 7
    .parameter

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    .line 357
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/k;->b()Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    .line 358
    invoke-virtual {p1}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln/Q;->c(Ln/Q;)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0}, Ln/Q;->e()D

    move-result-wide v3

    div-double v0, v1, v3

    .line 362
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/intersectionexplorer/e;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/googlenav/intersectionexplorer/e;-><init>(Lcom/google/googlenav/intersectionexplorer/d;Lcom/google/googlenav/intersectionexplorer/c;D)V

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/d;->w:Ljava/lang/String;

    .line 418
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->m:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_14

    .line 419
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 420
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 427
    :cond_13
    :goto_13
    return-void

    .line 422
    :cond_14
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/d;->m:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Lcom/google/googlenav/intersectionexplorer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 423
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->v:Lcom/google/googlenav/intersectionexplorer/j;

    if-eqz v0, :cond_13

    .line 424
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->v:Lcom/google/googlenav/intersectionexplorer/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/intersectionexplorer/j;->a(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public a(Ljava/util/Set;)V
    .registers 3
    .parameter

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->p:Lcom/google/android/maps/driveabout/vector/bU;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bU;->a(Ljava/util/Set;)V

    .line 634
    return-void
.end method

.method public a(Z)V
    .registers 7
    .parameter

    .prologue
    .line 389
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    if-eqz p1, :cond_28

    const/16 v0, 0x1fe

    :try_start_7
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_b
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-virtual {v2}, Lcom/google/googlenav/intersectionexplorer/k;->a()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 394
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/d;->c:Ljava/lang/String;

    if-eqz v2, :cond_2f

    .line 395
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/intersectionexplorer/d;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    .line 409
    :goto_26
    monitor-exit v1

    .line 410
    return-void

    .line 390
    :cond_28
    const/16 v0, 0x1f5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 397
    :cond_2f
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-virtual {v4}, Lcom/google/googlenav/intersectionexplorer/k;->b()Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/intersectionexplorer/c;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    goto :goto_26

    .line 409
    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw v0

    .line 400
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/k;->e()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 405
    const-string v0, "Loading failed"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    goto :goto_26

    .line 407
    :cond_58
    const/16 v0, 0x1f8

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_47

    goto :goto_26
.end method

.method b()Ln/Q;
    .registers 7

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 271
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->x:Ln/Q;

    if-eqz v0, :cond_12

    .line 272
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->x:Ln/Q;

    .line 288
    :cond_11
    :goto_11
    return-object v0

    .line 277
    :cond_12
    invoke-direct {p0}, Lcom/google/googlenav/intersectionexplorer/d;->p()Ln/Q;

    move-result-object v0

    .line 278
    const/4 v1, 0x0

    .line 279
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 280
    if-eqz v2, :cond_2b

    .line 281
    const-string v1, "android.intent.extra.INIT_LATLON"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 283
    :cond_2b
    if-eqz v1, :cond_3c

    .line 284
    const/4 v0, 0x0

    aget v0, v1, v0

    int-to-double v2, v0

    div-double/2addr v2, v4

    const/4 v0, 0x1

    aget v0, v1, v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    goto :goto_11

    .line 285
    :cond_3c
    if-nez v0, :cond_11

    .line 288
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->k:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    invoke-static {v0}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v0

    goto :goto_11
.end method

.method public b(Lcom/google/googlenav/intersectionexplorer/c;)V
    .registers 5
    .parameter

    .prologue
    .line 614
    if-nez p1, :cond_3

    .line 628
    :goto_2
    return-void

    .line 618
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    .line 619
    invoke-static {v0}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v0

    .line 620
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/intersectionexplorer/f;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/intersectionexplorer/f;-><init>(Lcom/google/googlenav/intersectionexplorer/d;Lat/B;)V

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 627
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->p:Lcom/google/android/maps/driveabout/vector/bU;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/googlenav/intersectionexplorer/c;)V

    goto :goto_2
.end method

.method public d()V
    .registers 3

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->b()Ln/Q;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_28

    .line 530
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ln/Q;)V

    .line 531
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->k:Lat/u;

    invoke-static {v0}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v0

    invoke-virtual {v1, v0}, Lat/u;->b(Lat/B;)V

    .line 532
    const/16 v0, 0x1fd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    const/4 v0, 0x0

    :try_start_21
    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->c:Ljava/lang/String;

    .line 536
    monitor-exit v1

    .line 540
    :goto_24
    return-void

    .line 536
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw v0

    .line 538
    :cond_28
    const/16 v0, 0x1db

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public e()Lcom/google/android/maps/driveabout/vector/VectorMapView;
    .registers 2

    .prologue
    .line 647
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    .line 649
    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/googlenav/ui/android/AndroidVectorView;
    .registers 2

    .prologue
    .line 656
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    return-object v0
.end method

.method public g()Z
    .registers 4

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->k:Lat/u;

    if-eqz v0, :cond_22

    .line 667
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/d;->q:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/k;->b()Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    .line 669
    :goto_10
    invoke-static {v0}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v0

    .line 670
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/d;->k:Lat/u;

    sget-object v2, Lcom/google/googlenav/intersectionexplorer/d;->b:Lat/Y;

    invoke-virtual {v1, v0, v2}, Lat/u;->d(Lat/B;Lat/Y;)V

    .line 671
    const/4 v0, 0x1

    .line 673
    :goto_1c
    return v0

    .line 668
    :cond_1d
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/d;->b()Ln/Q;

    move-result-object v0

    goto :goto_10

    .line 673
    :cond_22
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public h()V
    .registers 3

    .prologue
    .line 754
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->r()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/intersectionexplorer/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/intersectionexplorer/g;-><init>(Lcom/google/googlenav/intersectionexplorer/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 761
    return-void
.end method

.class public Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;
.super Ljava/lang/Object;
.source "SecretWallpaperService.java"

# interfaces
.implements Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CSPRenderer"
.end annotation


# static fields
.field static alpha_star:[F

.field public static bGLES11:Z

.field private static bImagesetInitialized:Z

.field private static bIsEnginePaused:Z

.field private static bMemoryInitialized:Z

.field private static bSceneReady:Z

.field static b_star_draw:[Z

.field static cloud_light_duration:[I

.field static cloud_light_num:[I

.field static cloud_light_pos:[I

.field static cloud_light_start:[I

.field static dur_star:[I

.field static nMeteorInitCnt:I

.field static raindrop1_scale:[F

.field static raindrop1_start:[I

.field static raindrop1_x:[F

.field static raindrop1_y:[F

.field static raindrop2_scale:[F

.field static raindrop2_start:[I

.field static raindrop2_x:[F

.field static raindrop2_y:[F

.field private static final raindrop_id_1:[I

.field private static final raindrop_id_2:[I

.field static scale_snow1:[F

.field static scale_snow2:[F

.field static scale_snow3:[F

.field static start_star:[I

.field static thunder_duration:[I

.field static thunder_num:[I

.field static thunder_scale:[F

.field static thunder_start:[I

.field static thunder_x:[F

.field static thunder_y:[F

.field private static final wave_id:[I

.field static x_snow1:[F

.field static x_snow2:[F

.field static x_snow3:[F

.field static y_snow1:[F

.field static y_snow2:[F

.field static y_snow3:[F


# instance fields
.field alpha_a_meteor:F

.field private bClearOn:Z

.field private bRainOn:Z

.field private bSnowOn:Z

.field private bThunderOn:Z

.field private cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;

.field private cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field fAlpha:F

.field private fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private logo:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

.field private m1280x720:Z

.field private mCntMode:I

.field private mContext:Landroid/content/Context;

.field private mFrameCnt:I

.field mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private mOffset:F

.field private mOrientation:I

.field private final mScaleView:F

.field private mbImgLoaded:Z

.field private meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private mfLandscape:F

.field private moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field n_snow1:I

.field n_snow2:I

.field n_snow3:I

.field private nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private preOrientation:I

.field private rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field scale_a_meteor:F

.field size_star:[F

.field private sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

.field private snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private sunlight_cnt:F

.field private watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

.field private waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field private wave_back:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

.field x_a_cloud_A_1:F

.field x_a_cloud_A_2:F

.field x_a_cloud_A_3:F

.field x_a_cloud_B_1:F

.field x_a_cloud_B_2:F

.field x_a_cloud_B_3:F

.field x_a_cloud_B_4:F

.field x_a_cloud_B_5:F

.field x_a_cloud_B_6:F

.field x_a_cloud_B_7:F

.field x_a_meteor:F

.field x_star:[F

.field y_a_cloud_A_1:F

.field y_a_cloud_A_2:F

.field y_a_cloud_A_3:F

.field y_a_cloud_B_1:F

.field y_a_cloud_B_2:F

.field y_a_cloud_B_3:F

.field y_a_cloud_B_4:F

.field y_a_cloud_B_5:F

.field y_a_cloud_B_6:F

.field y_a_cloud_B_7:F

.field y_a_meteor:F

.field y_star:[F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xd

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1966
    sput-boolean v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bMemoryInitialized:Z

    .line 1968
    sput-boolean v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bImagesetInitialized:Z

    .line 1970
    sput-boolean v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bSceneReady:Z

    .line 1972
    sput-boolean v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bIsEnginePaused:Z

    .line 2074
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_68

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave_id:[I

    .line 2101
    new-array v0, v3, [I

    fill-array-data v0, :array_9c

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop_id_1:[I

    .line 2116
    new-array v0, v3, [I

    fill-array-data v0, :array_ba

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop_id_2:[I

    .line 2193
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    .line 2207
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    .line 2209
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->start_star:[I

    .line 2211
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->dur_star:[I

    .line 2219
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    .line 2221
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    .line 2223
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    .line 2225
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    .line 2227
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    .line 2229
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    .line 2231
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    .line 2233
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    .line 2235
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    .line 2237
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    .line 2239
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    .line 2241
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    .line 2243
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    .line 2245
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    .line 2247
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    .line 2249
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    .line 2251
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    .line 2253
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    .line 2255
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    .line 2257
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    .line 2259
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    .line 2261
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    .line 2263
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    .line 2265
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    .line 2267
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    .line 2269
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    .line 2271
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    .line 2273
    sput v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    .line 4571
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bGLES11:Z

    return-void

    .line 2074
    nop

    :array_68
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
    .end array-data

    .line 2101
    :array_9c
    .array-data 0x4
        0x54t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
    .end array-data

    .line 2116
    :array_ba
    .array-data 0x4
        0x61t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2277
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1974
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    .line 1976
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mbImgLoaded:Z

    .line 1978
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mScaleView:F

    .line 1986
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    .line 1988
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOrientation:I

    .line 2132
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    .line 2134
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    .line 2136
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    .line 2138
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    .line 2140
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    .line 2143
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 2145
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    .line 2147
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    .line 2149
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    .line 2151
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    .line 2153
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    .line 2155
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    .line 2157
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_4:F

    .line 2159
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_5:F

    .line 2161
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_6:F

    .line 2163
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_7:F

    .line 2165
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_cloud_A_1:F

    .line 2167
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_cloud_A_2:F

    .line 2169
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_cloud_A_3:F

    .line 2171
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_1:F

    .line 2173
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_2:F

    .line 2175
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_3:F

    .line 2177
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_4:F

    .line 2179
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_5:F

    .line 2181
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_6:F

    .line 2183
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_7:F

    .line 2185
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    .line 2187
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    .line 2189
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    .line 2191
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_a_meteor:F

    .line 2195
    new-array v0, v3, [F

    fill-array-data v0, :array_8a

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_star:[F

    .line 2199
    new-array v0, v3, [F

    fill-array-data v0, :array_9c

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_star:[F

    .line 2203
    new-array v0, v3, [F

    fill-array-data v0, :array_ae

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->size_star:[F

    .line 2213
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->n_snow1:I

    .line 2215
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->n_snow2:I

    .line 2217
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->n_snow3:I

    .line 4634
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->preOrientation:I

    .line 4636
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mCntMode:I

    .line 2278
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    .line 2279
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mbImgLoaded:Z

    .line 2280
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    .line 2282
    const-string v0, "SecretWallpaper"

    const-string v1, "Initialize Wallpaper: Init Images"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->generateImages(Landroid/content/Context;)V

    .line 2285
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->initMem()V

    .line 2286
    return-void

    .line 2195
    nop

    :array_8a
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0xd9t 0xbft
        0x9at 0x99t 0x99t 0x3ft
        0x0t 0x0t 0xc0t 0xbft
        0x0t 0x0t 0x90t 0xc0t
        0x33t 0x33t 0xc3t 0xc0t
        0x0t 0x0t 0xf0t 0xc0t
    .end array-data

    .line 2199
    :array_9c
    .array-data 0x4
        0xcdt 0xcct 0xact 0x40t
        0x0t 0x0t 0x90t 0x40t
        0xcdt 0xcct 0x4ct 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x66t 0x66t 0x96t 0x40t
        0x66t 0x66t 0xa6t 0x40t
        0x9at 0x99t 0x99t 0x40t
    .end array-data

    .line 2203
    :array_ae
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
    .end array-data
.end method

.method static synthetic access$1702(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1964
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    return p1
.end method

.method private deleteImages(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 2374
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    if-eqz v1, :cond_e

    .line 2375
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2376
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2378
    :cond_e
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    if-eqz v1, :cond_1b

    .line 2379
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2380
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    .line 2382
    :cond_1b
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    if-eqz v1, :cond_28

    .line 2383
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2384
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2387
    :cond_28
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_35

    .line 2388
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2389
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2391
    :cond_35
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_42

    .line 2392
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2393
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2395
    :cond_42
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_4f

    .line 2396
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2397
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2399
    :cond_4f
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_5c

    .line 2400
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2401
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2404
    :cond_5c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5d
    const/16 v1, 0x18

    if-ge v0, v1, :cond_77

    .line 2405
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    aget-object v1, v1, v0

    if-eqz v1, :cond_74

    .line 2406
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2407
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    aput-object v3, v1, v0

    .line 2404
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 2411
    :cond_77
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave_back:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_84

    .line 2412
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave_back:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2413
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave_back:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2416
    :cond_84
    const/4 v0, 0x0

    :goto_85
    const/16 v1, 0xd

    if-ge v0, v1, :cond_b2

    .line 2417
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_9c

    .line 2418
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2419
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aput-object v3, v1, v0

    .line 2421
    :cond_9c
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_af

    .line 2422
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2423
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aput-object v3, v1, v0

    .line 2416
    :cond_af
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 2426
    :cond_b2
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2427
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2429
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_c3

    .line 2430
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2431
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2438
    :cond_c3
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    if-eqz v1, :cond_d0

    .line 2439
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2440
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2442
    :cond_d0
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    if-eqz v1, :cond_dd

    .line 2443
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2444
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2447
    :cond_dd
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    if-eqz v1, :cond_ea

    .line 2448
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2449
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2452
    :cond_ea
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_f7

    .line 2453
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2454
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2456
    :cond_f7
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_104

    .line 2457
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2458
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2460
    :cond_104
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_111

    .line 2461
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2462
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2464
    :cond_111
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_11e

    .line 2465
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2466
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2469
    :cond_11e
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_12b

    .line 2470
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2471
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2473
    :cond_12b
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_138

    .line 2474
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2475
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2477
    :cond_138
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_145

    .line 2478
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2479
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2482
    :cond_145
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_152

    .line 2483
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2484
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2486
    :cond_152
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_15f

    .line 2487
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2488
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2490
    :cond_15f
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_16c

    .line 2491
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2492
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2494
    :cond_16c
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_179

    .line 2495
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2496
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2499
    :cond_179
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_186

    .line 2500
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2501
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2504
    :cond_186
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_193

    .line 2505
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2506
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2508
    :cond_193
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    if-eqz v1, :cond_1a0

    .line 2509
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2510
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    .line 2514
    :cond_1a0
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;

    if-eqz v1, :cond_1ad

    .line 2515
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2516
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;

    .line 2522
    :cond_1ad
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_1ba

    .line 2523
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2524
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2526
    :cond_1ba
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_1c7

    .line 2527
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2528
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2530
    :cond_1c7
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_1d4

    .line 2531
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2532
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2534
    :cond_1d4
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    if-eqz v1, :cond_1e1

    .line 2535
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2536
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2539
    :cond_1e1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2541
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bImagesetInitialized:Z

    .line 2542
    return-void
.end method

.method private deleteMem()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2332
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    .line 2333
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    .line 2334
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->start_star:[I

    .line 2335
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->dur_star:[I

    .line 2337
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    .line 2338
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    .line 2339
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    .line 2341
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    .line 2342
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    .line 2343
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    .line 2345
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    .line 2346
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    .line 2347
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    .line 2349
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    .line 2350
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    .line 2351
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    .line 2352
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    .line 2353
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    .line 2354
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    .line 2356
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    .line 2357
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    .line 2358
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    .line 2359
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    .line 2361
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    .line 2362
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    .line 2363
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    .line 2364
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    .line 2366
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    .line 2367
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    .line 2368
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    .line 2369
    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    .line 2370
    return-void
.end method

.method private drawObjects(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 18
    .parameter

    .prologue
    .line 3236
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isPreview()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 3237
    const/high16 v1, 0x3fa0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    .line 3241
    :cond_d
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3243
    const v1, -0x40666666

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x40accccd

    const/high16 v3, -0x3e10

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3244
    const v1, 0x4089999a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x406ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3248
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_9a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9a

    .line 3250
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3252
    const v1, 0x400ccccd

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40e0

    const v3, -0x3e10cccd

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3253
    const v1, 0x40133333

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x40133333

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3257
    :cond_9a
    const/high16 v8, -0x3fc0

    .line 3258
    const/high16 v9, 0x40b0

    .line 3261
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_c2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_c2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D8_ICE_COLD:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1a6

    .line 3264
    :cond_c2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-nez v1, :cond_6e8

    .line 3266
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1a6

    .line 3268
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3269
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3271
    const/high16 v1, 0x3fc0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    add-float/2addr v1, v8

    const/high16 v2, -0x3e20

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v9, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3273
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v1, v1

    const v2, 0x3ee66666

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3279
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3281
    const/high16 v1, 0x3fc0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    add-float/2addr v1, v8

    const/high16 v2, -0x3e20

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v9, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3283
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v1, v1

    const v2, 0x3e666666

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3289
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3291
    const/high16 v1, 0x3fc0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    add-float/2addr v1, v8

    const/high16 v2, -0x3e20

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v9, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3293
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v1, v1

    const v2, -0x4119999a

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3398
    :cond_1a6
    :goto_1a6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1be

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D8_ICE_COLD:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_9d4

    .line 3401
    :cond_1be
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-nez v1, :cond_439

    .line 3404
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_956

    .line 3405
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x402a

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    .line 3410
    :goto_1df
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x168

    if-ge v1, v2, :cond_96b

    .line 3411
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4026

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    .line 3416
    :goto_1fa
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_980

    .line 3417
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4022

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    .line 3422
    :goto_215
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x384

    if-ge v1, v2, :cond_995

    .line 3423
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4000

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    .line 3428
    :goto_230
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x3ac

    if-ge v1, v2, :cond_9aa

    .line 3429
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4020

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    .line 3434
    :goto_24b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x384

    if-ge v1, v2, :cond_9bf

    .line 3435
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4018

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    .line 3441
    :goto_266
    const v1, 0x3f19999a

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3442
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3444
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40c0

    const/high16 v3, -0x3e28

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3445
    const v1, 0x3fa66666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3fa66666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3449
    const v1, 0x3f19999a

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3450
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3452
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    const/high16 v3, -0x3e28

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3453
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3457
    const v1, 0x3f333333

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3458
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3460
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x40733333

    const/high16 v3, -0x3e30

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3461
    const v1, 0x3fa66666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3fa66666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3465
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3466
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3468
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x40733333

    const/high16 v3, -0x3e30

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3469
    const v1, 0x3f99999a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3f99999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3473
    const v1, 0x3e99999a

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3474
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3476
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, -0x41b33333

    const/high16 v3, -0x3e30

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3477
    const v1, 0x3fcccccd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3fcccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3481
    const v1, 0x3f4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3482
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3484
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x40966666

    const/high16 v3, -0x3e28

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3485
    const v1, 0x3f8ccccd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3f8ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3488
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mbManyClouds:Z
    invoke-static {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3700(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_439

    .line 3818
    :cond_439
    :goto_439
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3819
    const/high16 v1, -0x4100

    const/high16 v2, 0x3fa0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, -0x3f39999a

    const/high16 v3, -0x3e50

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3820
    const v1, 0x3fcccccd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3f19999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3821
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave_back:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3824
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3829
    const v1, -0x3f433333

    const/high16 v2, 0x3fa0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    const/high16 v4, 0x40a0

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, -0x3f79999a

    const/high16 v3, -0x3e54

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3832
    const v1, 0x3f933333

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3ec28f5c

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3834
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v7, v1, 0xc8

    .line 3839
    const/16 v1, 0x40

    if-ge v7, v1, :cond_129c

    .line 3841
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    div-int/lit8 v2, v7, 0x4

    add-int/lit8 v2, v2, 0x4

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3877
    :goto_4c5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4f9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-nez v1, :cond_4f9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4f9

    .line 3883
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x3f80

    add-float/2addr v2, v1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x4348

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1397

    .line 3884
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    .line 3885
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    .line 3911
    :cond_4f9
    :goto_4f9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1446

    .line 3913
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_54a

    .line 3915
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3916
    const/4 v1, 0x0

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, -0x3faccccd

    const/high16 v3, -0x3e58

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3917
    const v1, 0x40666666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4030

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3918
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v3, 0x3f4ccccd

    const v4, 0x3f4ccccd

    const v5, 0x3f4ccccd

    const v6, 0x3f4ccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3980
    :cond_54a
    :goto_54a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_594

    .line 3981
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3982
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3e60

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3984
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_164e

    .line 3985
    const v1, 0x3f266666

    const v2, 0x3f866666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3991
    :goto_578
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1667

    .line 3992
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v3, 0x3f666666

    const v4, 0x3f666666

    const v5, 0x3f666666

    const v6, 0x3f333333

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3999
    :cond_594
    :goto_594
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_5b8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_5b8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_17ed

    .line 4004
    :cond_5b8
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4005
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3e5c

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4006
    const/high16 v1, 0x3fc0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3fc0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4008
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_21ce

    .line 4023
    :goto_5dc
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4024
    const/4 v1, 0x0

    const/high16 v2, 0x4170

    const/high16 v3, -0x3e38

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4027
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_60e

    .line 4028
    const/high16 v1, 0x4000

    const/high16 v2, 0x4000

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4032
    :cond_60e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_626

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_17ed

    .line 4036
    :cond_626
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4037
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3e60

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4039
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_16b7

    .line 4040
    const v1, 0x3f333333

    const v2, 0x3f8ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4045
    :goto_648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4047
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_668

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_1714

    .line 4050
    :cond_668
    const/4 v1, 0x1

    :goto_669
    const/16 v2, 0x8

    if-ge v1, v2, :cond_16cf

    .line 4052
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x4072c00000000000L

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4049

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 4053
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x4072c00000000000L

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4049

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 4055
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4020

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4010

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4056
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4058
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4020

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4010

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4059
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4061
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4062
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4050
    add-int/lit8 v1, v1, 0x1

    goto :goto_669

    .line 3301
    :cond_6e8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_739

    .line 3302
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3303
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3305
    const v1, 0x404ccccd

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40e0

    const/high16 v3, -0x3e1c

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3310
    const v1, 0x3e99999a

    const v2, 0x3e99999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3314
    :cond_739
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0xc8

    if-eqz v1, :cond_748

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7cc

    .line 3316
    :cond_748
    const/4 v1, 0x0

    :goto_749
    const/4 v2, 0x7

    if-ge v1, v2, :cond_787

    .line 3318
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fc99999a0000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_781

    .line 3319
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 3323
    :goto_75e
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->start_star:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3324
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 3325
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->dur_star:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x403e

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3316
    add-int/lit8 v1, v1, 0x1

    goto :goto_749

    .line 3321
    :cond_781
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    goto :goto_75e

    .line 3328
    :cond_787
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    .line 3356
    :cond_78c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1a6

    .line 3357
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0xc8

    if-eqz v1, :cond_7a7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8cc

    .line 3359
    :cond_7a7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_88d

    .line 3361
    const/high16 v1, 0x4110

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    .line 3362
    const/high16 v1, 0x4120

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    .line 3363
    const v1, 0x3ecccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    .line 3364
    const/4 v1, 0x0

    sput v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    .line 3365
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_a_meteor:F

    goto/16 :goto_1a6

    .line 3332
    :cond_7cc
    const/4 v1, 0x0

    move v7, v1

    :goto_7ce
    const/4 v1, 0x7

    if-ge v7, v1, :cond_78c

    .line 3334
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_85d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0xc8

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->start_star:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_85d

    .line 3336
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0xc8

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->start_star:[I

    aget v2, v2, v7

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->dur_star:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_862

    .line 3337
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v1, v1, v7

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_80c

    .line 3338
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fa47ae147ae147bL

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v7

    .line 3344
    :cond_80c
    :goto_80c
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_star:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_star:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e20

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3348
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->size_star:[F

    aget v2, v2, v7

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->size_star:[F

    aget v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v3, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v4, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v5, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v6, v2, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3332
    :cond_85d
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_7ce

    .line 3339
    :cond_862
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0xc8

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->start_star:[I

    aget v2, v2, v7

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->dur_star:[I

    aget v3, v3, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_80c

    .line 3340
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v1, v1, v7

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_80c

    .line 3341
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fa47ae147ae147bL

    sub-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v7

    goto :goto_80c

    .line 3367
    :cond_88d
    sget v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    const/16 v2, 0xc7

    if-le v1, v2, :cond_1a6

    .line 3368
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4018

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4014

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    .line 3369
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4020

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4020

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    .line 3370
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x3fc999999999999aL

    mul-double/2addr v1, v3

    double-to-float v1, v1

    const v2, 0x3e4ccccd

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    .line 3371
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_a_meteor:F

    goto/16 :goto_1a6

    .line 3376
    :cond_8cc
    sget v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_8d8

    .line 3377
    sget v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    .line 3379
    :cond_8d8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    float-to-double v1, v1

    const-wide v3, 0x3fdccccccccccccdL

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    .line 3380
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    float-to-double v1, v1

    const-wide v3, 0x3fd3333333333333L

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    .line 3381
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    const v2, 0x3f7ae148

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    .line 3382
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_a_meteor:F

    const v2, 0x3f666666

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_a_meteor:F

    .line 3383
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3385
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    const/high16 v3, -0x3e20

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3389
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1a6

    .line 3407
    :cond_956
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x403b

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    goto/16 :goto_1df

    .line 3413
    :cond_96b
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x403d

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    goto/16 :goto_1fa

    .line 3419
    :cond_980
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x403f

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    goto/16 :goto_215

    .line 3425
    :cond_995
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4045

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    goto/16 :goto_230

    .line 3431
    :cond_9aa
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4048

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    goto/16 :goto_24b

    .line 3437
    :cond_9bf
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4047

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    goto/16 :goto_266

    .line 3493
    :cond_9d4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_a28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_a28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_a28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_a28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_a28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_a28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_439

    .line 3501
    :cond_a28
    const/4 v1, 0x0

    .line 3502
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v2

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_a65

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v2

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_a65

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v2

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_a65

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v2

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_a65

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v2

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_a66

    .line 3508
    :cond_a65
    const/4 v1, 0x1

    .line 3513
    :cond_a66
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v3, 0x168

    if-ge v2, v3, :cond_f4d

    .line 3514
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x402c

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    .line 3519
    :goto_a81
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v3, 0x44c

    if-ge v2, v3, :cond_f62

    .line 3520
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x401c

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    .line 3525
    :goto_a9c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v3, 0x190

    if-ge v2, v3, :cond_f7a

    .line 3526
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4024

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    .line 3531
    :goto_ab7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_f8f

    .line 3532
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x400c

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    .line 3537
    :goto_ad2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v3, 0x352

    if-ge v2, v3, :cond_fa7

    .line 3538
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4004

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    .line 3543
    :goto_aed
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v3, 0x28a

    if-ge v2, v3, :cond_fbf

    .line 3544
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4010

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    .line 3549
    :goto_b08
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v3, 0x320

    if-ge v2, v3, :cond_fd4

    .line 3550
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4014

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_4:F

    .line 3555
    :goto_b23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_fec

    .line 3556
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x402e

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_5:F

    .line 3561
    :goto_b3e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v3, 0x6e

    if-ge v2, v3, :cond_1001

    .line 3562
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_6:F

    .line 3567
    :goto_b59
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_1016

    .line 3568
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4014

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_7:F

    .line 3573
    :goto_b74
    const/4 v2, 0x0

    .line 3574
    if-eqz v1, :cond_21cb

    .line 3575
    const v1, 0x3e4ccccd

    move v7, v1

    .line 3578
    :goto_b7b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_102e

    .line 3579
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3583
    :goto_b88
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3585
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40b0

    const/high16 v3, -0x3e28

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3586
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x400ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v3, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v4, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v5, v2, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3590
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_1037

    .line 3591
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3594
    :goto_bdf
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3596
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x4099999a

    const v3, -0x3e25999a

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3597
    const v1, 0x3fe66666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3fe66666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v3, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v4, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v5, v2, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3601
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_1040

    .line 3602
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3605
    :goto_c38
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3607
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    const/high16 v3, -0x3e24

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3608
    const v1, 0x3fb33333

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3fb33333

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v3, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v4, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v5, v2, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3612
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_1049

    .line 3613
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3616
    :goto_c90
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3618
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x404ccccd

    const v3, -0x3e24cccd

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3619
    const v1, 0x3fb33333

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3fcccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v3, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v4, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v5, v2, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3623
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_1052

    .line 3624
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3627
    :goto_ce9
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3629
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x40c66666

    const v3, -0x3e28cccd

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3630
    const v1, 0x402ccccd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4020

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3631
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v3, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v4, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v5, v2, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3634
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_105b

    .line 3635
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3638
    :goto_d42
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3640
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x40e66666

    const v3, -0x3e273333

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3641
    const v1, 0x3fd9999a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3fd9999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v3, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v4, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v5, v2, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3645
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_1064

    .line 3646
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3649
    :goto_d9c
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3651
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_4:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x3e4ccccd

    const v3, -0x3e233333

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3652
    const v1, 0x3fcccccd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3fcccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v3, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v4, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v5, v2, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3656
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_106d

    .line 3657
    const v1, 0x3f4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3660
    :goto_df6
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3662
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_5:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x3e99999a

    const v3, -0x3e226666

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3663
    const v1, 0x3ff33333

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3ff33333

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3664
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v3, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v4, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v5, v2, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3667
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_1076

    .line 3668
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3671
    :goto_e50
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3673
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_6:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, -0x41b33333

    const v3, -0x3e21999a

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3674
    const v1, 0x400ccccd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x400ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3675
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v3, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v4, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v5, v2, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3678
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_107f

    .line 3679
    const v1, 0x3f4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3682
    :goto_eaa
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3684
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_7:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x3ecccccd

    const v3, -0x3e20cccd

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3685
    const v1, 0x3fe66666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3fe66666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3686
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v3, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v4, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    sub-float v5, v2, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3689
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_439

    .line 3691
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_10de

    .line 3693
    :cond_f12
    const/4 v1, 0x0

    :goto_f13
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1088

    .line 3694
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x4078600000000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3695
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3696
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4022

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3697
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3693
    add-int/lit8 v1, v1, 0x1

    goto :goto_f13

    .line 3516
    :cond_f4d
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x403a

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    goto/16 :goto_a81

    .line 3522
    :cond_f62
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4047800000000000L

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    goto/16 :goto_a9c

    .line 3528
    :cond_f7a
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x403e

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    goto/16 :goto_ab7

    .line 3534
    :cond_f8f
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4042400000000000L

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    goto/16 :goto_ad2

    .line 3540
    :cond_fa7
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4045400000000000L

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    goto/16 :goto_aed

    .line 3546
    :cond_fbf
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4042

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    goto/16 :goto_b08

    .line 3552
    :cond_fd4
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4041800000000000L

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_4:F

    goto/16 :goto_b23

    .line 3558
    :cond_fec
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4039

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_5:F

    goto/16 :goto_b3e

    .line 3564
    :cond_1001
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_6:F

    goto/16 :goto_b59

    .line 3570
    :cond_1016
    const-wide v2, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4046800000000000L

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_7:F

    goto/16 :goto_b74

    .line 3581
    :cond_102e
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_b88

    .line 3593
    :cond_1037
    const v1, 0x3f4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_bdf

    .line 3604
    :cond_1040
    const v1, 0x3f4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_c38

    .line 3615
    :cond_1049
    const v1, 0x3f333333

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_c90

    .line 3626
    :cond_1052
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_ce9

    .line 3637
    :cond_105b
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_d42

    .line 3648
    :cond_1064
    const v1, 0x3ecccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_d9c

    .line 3659
    :cond_106d
    const v1, 0x3ecccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_df6

    .line 3670
    :cond_1076
    const v1, 0x3f333333

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_e50

    .line 3681
    :cond_107f
    const v1, 0x3f19999a

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_eaa

    .line 3700
    :cond_1088
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_439

    .line 3701
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    .line 3702
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput v3, v1, v2

    .line 3703
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    .line 3704
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 3706
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    const/4 v2, 0x1

    const/16 v3, 0xf

    aput v3, v1, v2

    .line 3707
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    const/4 v2, 0x1

    const/16 v3, 0xf

    aput v3, v1, v2

    .line 3708
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    const/4 v2, 0x1

    const/4 v3, 0x6

    aput v3, v1, v2

    .line 3709
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 3711
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    const/4 v2, 0x2

    const/16 v3, 0x14

    aput v3, v1, v2

    .line 3712
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    const/4 v2, 0x2

    const/16 v3, 0x14

    aput v3, v1, v2

    .line 3713
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    const/4 v2, 0x2

    const/4 v3, 0x7

    aput v3, v1, v2

    .line 3714
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    aput v3, v1, v2

    goto/16 :goto_439

    .line 3719
    :cond_10de
    const/4 v1, 0x0

    move v7, v1

    :goto_10e0
    const/16 v1, 0x14

    if-ge v7, v1, :cond_439

    .line 3721
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_117b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    aget v2, v2, v7

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_117b

    .line 3724
    const/4 v3, 0x0

    .line 3725
    const/4 v2, 0x0

    .line 3726
    const/4 v1, 0x0

    .line 3728
    sget-object v4, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_21d8

    .line 3779
    :goto_110b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v4, v4, 0x190

    int-to-double v4, v4

    sget-object v6, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    aget v6, v6, v7

    int-to-double v10, v6

    sget-object v6, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    aget v6, v6, v7

    int-to-double v12, v6

    const-wide/high16 v14, 0x3fe0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    cmpg-double v4, v4, v10

    if-gez v4, :cond_11e2

    .line 3780
    const v4, 0x3f19999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3ecccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3785
    :goto_1135
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3787
    const/high16 v4, 0x3fc0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, -0x3e30

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3789
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3791
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    aget v1, v1, v7

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1237

    .line 3793
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    if-nez v1, :cond_11f3

    .line 3794
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3719
    :cond_117b
    :goto_117b
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_10e0

    .line 3730
    :pswitch_1180
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    .line 3731
    const/high16 v2, 0x40b0

    .line 3732
    const v1, 0x400ccccd

    .line 3733
    goto :goto_110b

    .line 3735
    :pswitch_118a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    .line 3736
    const/high16 v2, 0x40c0

    .line 3737
    const/high16 v1, 0x3fc0

    .line 3738
    goto/16 :goto_110b

    .line 3740
    :pswitch_1194
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    .line 3741
    const/high16 v2, 0x4060

    .line 3742
    const v1, 0x3f99999a

    .line 3743
    goto/16 :goto_110b

    .line 3745
    :pswitch_119f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    .line 3746
    const/high16 v2, 0x40d0

    .line 3747
    const/high16 v1, 0x4000

    .line 3748
    goto/16 :goto_110b

    .line 3750
    :pswitch_11a9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    .line 3751
    const/high16 v2, 0x4100

    .line 3752
    const v1, 0x3f99999a

    .line 3753
    goto/16 :goto_110b

    .line 3755
    :pswitch_11b4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    .line 3756
    const v2, 0x40b9999a

    .line 3757
    const/high16 v1, 0x3f80

    .line 3758
    goto/16 :goto_110b

    .line 3760
    :pswitch_11bf
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_4:F

    .line 3761
    const v2, 0x3fe66666

    .line 3762
    const v1, 0x3fcccccd

    .line 3763
    goto/16 :goto_110b

    .line 3765
    :pswitch_11cb
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_5:F

    .line 3766
    const v2, 0x3f4ccccd

    .line 3767
    const v1, 0x400ccccd

    .line 3768
    goto/16 :goto_110b

    .line 3770
    :pswitch_11d7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_6:F

    .line 3771
    const/high16 v2, 0x3f00

    .line 3772
    const v1, 0x3f99999a

    .line 3773
    goto/16 :goto_110b

    .line 3782
    :cond_11e2
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3ecccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_1135

    .line 3795
    :cond_11f3
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1215

    .line 3796
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_117b

    .line 3797
    :cond_1215
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_117b

    .line 3798
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_117b

    .line 3803
    :cond_1237
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    if-nez v1, :cond_1258

    .line 3804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_117b

    .line 3805
    :cond_1258
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_127a

    .line 3806
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_117b

    .line 3807
    :cond_127a
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_117b

    .line 3808
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_117b

    .line 3843
    :cond_129c
    const/16 v1, 0x4c

    if-ge v7, v1, :cond_12d5

    .line 3845
    add-int/lit8 v1, v7, -0x40

    int-to-float v1, v1

    const/high16 v2, 0x4140

    div-float v10, v1, v2

    .line 3846
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    div-int/lit8 v2, v7, 0x4

    add-int/lit8 v2, v2, 0x4

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    add-int/lit8 v2, v7, -0x40

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x8

    aget-object v1, v1, v2

    move-object/from16 v2, p1

    move v3, v10

    move v4, v10

    move v5, v10

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_4c5

    .line 3850
    :cond_12d5
    const/16 v1, 0x68

    if-ge v7, v1, :cond_12f4

    .line 3852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    add-int/lit8 v2, v7, -0x40

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x8

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_4c5

    .line 3854
    :cond_12f4
    const/16 v1, 0x7c

    if-ge v7, v1, :cond_132d

    .line 3856
    add-int/lit8 v1, v7, -0x68

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float v10, v1, v2

    .line 3857
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    add-int/lit8 v2, v7, -0x40

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x8

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    add-int/lit8 v2, v7, -0x68

    div-int/lit8 v2, v2, 0x4

    aget-object v1, v1, v2

    move-object/from16 v2, p1

    move v3, v10

    move v4, v10

    move v5, v10

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_4c5

    .line 3861
    :cond_132d
    const/16 v1, 0xb8

    if-ge v7, v1, :cond_134a

    .line 3863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    add-int/lit8 v2, v7, -0x68

    div-int/lit8 v2, v2, 0x4

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_4c5

    .line 3865
    :cond_134a
    const/16 v1, 0xc4

    if-ge v7, v1, :cond_1381

    .line 3867
    add-int/lit16 v1, v7, -0xb8

    int-to-float v1, v1

    const/high16 v2, 0x4140

    div-float v10, v1, v2

    .line 3869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    add-int/lit8 v2, v7, -0x68

    div-int/lit8 v2, v2, 0x4

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3870
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    add-int/lit16 v2, v7, -0xb8

    div-int/lit8 v2, v2, 0x4

    aget-object v1, v1, v2

    move-object/from16 v2, p1

    move v3, v10

    move v4, v10

    move v5, v10

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_4c5

    .line 3873
    :cond_1381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_4c5

    .line 3887
    :cond_1397
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x4348

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4f9

    .line 3889
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3890
    const v1, 0x3f19999a

    add-float/2addr v1, v8

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    const v3, 0x3e19999a

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3fe0

    sub-float v2, v9, v2

    const/high16 v3, -0x3e5c

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3893
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1426

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x4320

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1426

    .line 3894
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x4320

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v3, v1

    .line 3901
    :goto_13e2
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    float-to-double v4, v2

    const-wide v6, 0x3f70624dd2f1a9fcL

    mul-double/2addr v4, v6

    double-to-float v2, v4

    add-float/2addr v1, v2

    .line 3903
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v1

    const v4, 0x3f19999a

    mul-float/2addr v2, v4

    const v4, 0x3f19999a

    mul-float/2addr v1, v4

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3905
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const v2, 0x3e19999a

    mul-float/2addr v1, v2

    const/high16 v2, 0x41a0

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3906
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move-object/from16 v2, p1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_4f9

    .line 3895
    :cond_1426
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x4348

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1444

    .line 3896
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v3, 0x4320

    sub-float/2addr v2, v3

    const/high16 v3, 0x4220

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v3, v1

    goto :goto_13e2

    .line 3898
    :cond_1444
    const/4 v3, 0x0

    goto :goto_13e2

    .line 3922
    :cond_1446
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_146a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_146a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D8_ICE_COLD:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_153e

    .line 3926
    :cond_146a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-nez v1, :cond_14b0

    .line 3927
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3928
    const/high16 v1, -0x4040

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, -0x3f80

    const/high16 v3, -0x3e58

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3929
    const v1, 0x40666666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4030

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v3, 0x3f4ccccd

    const v4, 0x3f4ccccd

    const v5, 0x3f4ccccd

    const v6, 0x3f4ccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_54a

    .line 3932
    :cond_14b0
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3933
    const/4 v1, 0x0

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, -0x3f80

    const/high16 v3, -0x3e58

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3934
    const v1, 0x40666666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4030

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3935
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v3, 0x3f4ccccd

    const v4, 0x3f4ccccd

    const v5, 0x3f4ccccd

    const v6, 0x3f4ccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3937
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3938
    const/4 v1, 0x0

    const/high16 v2, -0x4100

    const v3, -0x3e5d999a

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3940
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1528

    .line 3941
    const v1, 0x3f333333

    const v2, 0x3f866666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3946
    :goto_1511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v3, 0x3e4ccccd

    const v4, 0x3e4ccccd

    const v5, 0x3e4ccccd

    const v6, 0x3e4ccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_54a

    .line 3943
    :cond_1528
    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3944
    const/high16 v1, 0x3f80

    const/high16 v2, 0x3fe0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto :goto_1511

    .line 3949
    :cond_153e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_157a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_157a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_157a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_157a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_54a

    .line 3955
    :cond_157a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-nez v1, :cond_15c0

    .line 3956
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3957
    const/high16 v1, -0x4040

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, -0x3f80

    const/high16 v3, -0x3e58

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3958
    const v1, 0x40666666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4030

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3959
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v3, 0x3f4ccccd

    const v4, 0x3f4ccccd

    const v5, 0x3f4ccccd

    const v6, 0x3f4ccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_54a

    .line 3961
    :cond_15c0
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3962
    const/4 v1, 0x0

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, -0x3f80

    const/high16 v3, -0x3e58

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3963
    const v1, 0x40666666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4030

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3964
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v3, 0x3f4ccccd

    const v4, 0x3f4ccccd

    const v5, 0x3f4ccccd

    const v6, 0x3f4ccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3966
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3967
    const/4 v1, 0x0

    const/high16 v2, -0x4100

    const v3, -0x3e5d999a

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3969
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1638

    .line 3970
    const v1, 0x3f333333

    const v2, 0x3f866666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3975
    :goto_1621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v3, 0x3e4ccccd

    const v4, 0x3e4ccccd

    const v5, 0x3e4ccccd

    const v6, 0x3e4ccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_54a

    .line 3972
    :cond_1638
    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3973
    const/high16 v1, 0x3f80

    const/high16 v2, 0x3fe0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto :goto_1621

    .line 3987
    :cond_164e
    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3988
    const v1, 0x3f99999a

    const v2, 0x3fe66666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto/16 :goto_578

    .line 3994
    :cond_1667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v3, 0x3ecccccd

    const v4, 0x3ecccccd

    const v5, 0x3ecccccd

    const v6, 0x3ecccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_594

    .line 4010
    :pswitch_167e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_5dc

    .line 4013
    :pswitch_1691
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_5dc

    .line 4016
    :pswitch_16a4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_5dc

    .line 4042
    :cond_16b7
    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 4043
    const v1, 0x3f99999a

    const/high16 v2, 0x4000

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto/16 :goto_648

    .line 4065
    :cond_16cf
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    add-int/lit8 v3, v3, 0x14

    aput v3, v1, v2

    .line 4066
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    add-int/lit8 v3, v3, 0x37

    aput v3, v1, v2

    .line 4068
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    const/4 v2, 0x2

    const/high16 v3, -0x4040

    aput v3, v1, v2

    .line 4069
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    const/4 v2, 0x2

    const/high16 v3, -0x4080

    aput v3, v1, v2

    .line 4071
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    const/4 v2, 0x2

    const/high16 v3, 0x4040

    aput v3, v1, v2

    .line 4072
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    const/4 v2, 0x2

    const/high16 v3, -0x4100

    aput v3, v1, v2

    .line 4074
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 4075
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 4077
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    .line 4080
    :cond_1714
    const/4 v1, 0x0

    move v7, v1

    :goto_1716
    const/16 v1, 0x8

    if-ge v7, v1, :cond_17ed

    .line 4082
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_1781

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, 0x27

    if-ge v1, v2, :cond_1781

    .line 4085
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4087
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    aget v1, v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e64

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4088
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    aget v1, v1, v7

    const v2, 0x3e99999a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    aget v2, v2, v7

    const v3, 0x3f99999a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4090
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v2, v2, 0x190

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    aget v3, v3, v7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4094
    :cond_1781
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_17e8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, 0x27

    if-ge v1, v2, :cond_17e8

    .line 4096
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4098
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    aget v1, v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e64

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4099
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    aget v1, v1, v7

    const v2, 0x3e99999a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    aget v2, v2, v7

    const v3, 0x4019999a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v2, v2, 0x190

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    aget v3, v3, v7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4080
    :cond_17e8
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1716

    .line 4109
    :cond_17ed
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1805

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1839

    .line 4112
    :cond_1805
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4114
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, -0x3e5d999a

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4115
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_189c

    .line 4116
    const v1, 0x3f333333

    const v2, 0x3f866666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4121
    :goto_1828
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4125
    :cond_1839
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1851

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_19ad

    .line 4129
    :cond_1851
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a2e

    .line 4131
    const/4 v1, 0x0

    :goto_1859
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->n_snow1:I

    if-ge v1, v2, :cond_18cb

    .line 4132
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_18b4

    .line 4133
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4038

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4140

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4138
    :goto_1878
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4030

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4100

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4140
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    rem-int/lit8 v2, v2, 0x2

    .line 4141
    if-nez v2, :cond_18c4

    .line 4142
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 4131
    :goto_1899
    add-int/lit8 v1, v1, 0x1

    goto :goto_1859

    .line 4118
    :cond_189c
    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 4119
    const v1, 0x3f8ccccd

    const/high16 v2, 0x3fe0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto/16 :goto_1828

    .line 4135
    :cond_18b4
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x404c

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x41e0

    sub-float/2addr v3, v4

    aput v3, v2, v1

    goto :goto_1878

    .line 4144
    :cond_18c4
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    const/high16 v3, 0x3f00

    aput v3, v2, v1

    goto :goto_1899

    .line 4148
    :cond_18cb
    const/4 v1, 0x0

    :goto_18cc
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->n_snow2:I

    if-ge v1, v2, :cond_1934

    .line 4149
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_190f

    .line 4150
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4038

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4140

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4155
    :goto_18eb
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4030

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4100

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4157
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    rem-int/lit8 v2, v2, 0x3

    .line 4158
    if-nez v2, :cond_191f

    .line 4159
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 4148
    :cond_190c
    :goto_190c
    add-int/lit8 v1, v1, 0x1

    goto :goto_18cc

    .line 4152
    :cond_190f
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x404c

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x41e0

    sub-float/2addr v3, v4

    aput v3, v2, v1

    goto :goto_18eb

    .line 4160
    :cond_191f
    const/4 v3, 0x1

    if-ne v2, v3, :cond_192a

    .line 4161
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const v3, 0x3f333333

    aput v3, v2, v1

    goto :goto_190c

    .line 4162
    :cond_192a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_190c

    .line 4163
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const/high16 v3, 0x3f00

    aput v3, v2, v1

    goto :goto_190c

    .line 4167
    :cond_1934
    const/4 v1, 0x0

    :goto_1935
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->n_snow3:I

    if-ge v1, v2, :cond_19a8

    .line 4168
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1978

    .line 4169
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4038

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4140

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4174
    :goto_1954
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4030

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4100

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4176
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    rem-int/lit8 v2, v2, 0x4

    .line 4177
    if-nez v2, :cond_1988

    .line 4178
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 4167
    :cond_1975
    :goto_1975
    add-int/lit8 v1, v1, 0x1

    goto :goto_1935

    .line 4171
    :cond_1978
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x404c

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x41e0

    sub-float/2addr v3, v4

    aput v3, v2, v1

    goto :goto_1954

    .line 4179
    :cond_1988
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1992

    .line 4180
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const/high16 v3, 0x3f00

    aput v3, v2, v1

    goto :goto_1975

    .line 4181
    :cond_1992
    const/4 v3, 0x2

    if-ne v2, v3, :cond_199d

    .line 4182
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const v3, 0x3e99999a

    aput v3, v2, v1

    goto :goto_1975

    .line 4183
    :cond_199d
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1975

    .line 4184
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const v3, 0x3e4ccccd

    aput v3, v2, v1

    goto :goto_1975

    .line 4187
    :cond_19a8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    .line 4340
    :cond_19ad
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1f61

    .line 4343
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_19c8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_1fcf

    .line 4346
    :cond_19c8
    const/4 v1, 0x0

    :goto_19c9
    const/16 v2, 0x28

    if-ge v1, v2, :cond_1e96

    .line 4347
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4079

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 4348
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x402e

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 4349
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    double-to-int v3, v3

    rem-int/lit8 v3, v3, 0x3

    aput v3, v2, v1

    .line 4350
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4352
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    aget v2, v2, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1e76

    .line 4353
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4030

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4020

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4354
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4020

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4346
    :goto_1a2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19c9

    .line 4191
    :cond_1a2e
    const/4 v1, 0x0

    move v7, v1

    :goto_1a30
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->n_snow1:I

    if-ge v7, v1, :cond_1b87

    .line 4193
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    aget v1, v1, v7

    const/high16 v2, -0x3f00

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b25

    .line 4194
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1b0c

    .line 4195
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4038

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x4140

    sub-float/2addr v2, v3

    aput v2, v1, v7

    .line 4200
    :goto_1a59
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    const/high16 v2, 0x4110

    aput v2, v1, v7

    .line 4202
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    .line 4203
    if-nez v1, :cond_1b1d

    .line 4204
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v7

    .line 4212
    :goto_1a71
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4214
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1b31

    .line 4215
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e50

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4222
    :goto_1aa2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v1, v1

    const v2, 0x3e666666

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 4224
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mbManySnows:Z
    invoke-static {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3800(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v1

    if-nez v1, :cond_1b55

    .line 4225
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v1, v1, v7

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4231
    :goto_1ad2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1b6d

    .line 4232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const/high16 v3, 0x4000

    div-float v3, v2, v3

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const/high16 v5, 0x4000

    div-float v5, v2, v5

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4191
    :goto_1b07
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1a30

    .line 4197
    :cond_1b0c
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404c

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x41e0

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_1a59

    .line 4206
    :cond_1b1d
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    const/high16 v2, 0x3f00

    aput v2, v1, v7

    goto/16 :goto_1a71

    .line 4210
    :cond_1b25
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    aget v2, v1, v7

    const v3, 0x3d23d70a

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_1a71

    .line 4218
    :cond_1b31
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e60

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_1aa2

    .line 4228
    :cond_1b55
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v1, v1, v7

    const v2, 0x3da3d70a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const v3, 0x3da3d70a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto/16 :goto_1ad2

    .line 4235
    :cond_1b6d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v3, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v4, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v5, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v6, v2, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_1b07

    .line 4240
    :cond_1b87
    const/4 v1, 0x0

    move v7, v1

    :goto_1b89
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->n_snow2:I

    if-ge v7, v1, :cond_1d2b

    .line 4242
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    aget v1, v1, v7

    const/high16 v2, -0x3f00

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1c84

    .line 4243
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1c5c

    .line 4244
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4038

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x4140

    sub-float/2addr v2, v3

    aput v2, v1, v7

    .line 4249
    :goto_1bb2
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    const/high16 v2, 0x4110

    aput v2, v1, v7

    .line 4251
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0x3

    .line 4252
    if-nez v1, :cond_1c6d

    .line 4253
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v7

    .line 4263
    :cond_1bca
    :goto_1bca
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4265
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1c90

    .line 4266
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e4c

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4268
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v1, v1, v7

    const v2, 0x3ca3d70a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const v3, 0x3ca3d70a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const/high16 v3, 0x4000

    div-float v3, v2, v3

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const/high16 v5, 0x4000

    div-float v5, v2, v5

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4281
    :goto_1c3a
    and-int/lit16 v1, v7, 0x111

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c57

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mbManySnows:Z
    invoke-static {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3800(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c57

    .line 4282
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4284
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1ce3

    .line 4240
    :cond_1c57
    :goto_1c57
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1b89

    .line 4246
    :cond_1c5c
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404c

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x41e0

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_1bb2

    .line 4254
    :cond_1c6d
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c79

    .line 4255
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const v2, 0x3f333333

    aput v2, v1, v7

    goto/16 :goto_1bca

    .line 4256
    :cond_1c79
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1bca

    .line 4257
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const/high16 v2, 0x3f00

    aput v2, v1, v7

    goto/16 :goto_1bca

    .line 4261
    :cond_1c84
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    aget v2, v1, v7

    const v3, 0x3ca3d70a

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_1bca

    .line 4273
    :cond_1c90
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e60

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4275
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v1, v1, v7

    const v2, 0x3ca3d70a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const v3, 0x3ca3d70a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v3, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v4, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v5, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v6, v2, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1c3a

    .line 4286
    :cond_1ce3
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    aget v2, v2, v7

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    const/high16 v3, -0x3e58

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4288
    const v1, 0x3eb33333

    const v2, 0x3eb33333

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v3, 0x3f4ccccd

    const v4, 0x3f4ccccd

    const v5, 0x3f4ccccd

    const v6, 0x3f4ccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1c57

    .line 4294
    :cond_1d2b
    const/4 v1, 0x0

    move v7, v1

    :goto_1d2d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->n_snow3:I

    if-ge v7, v1, :cond_19ad

    .line 4296
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    aget v1, v1, v7

    const/high16 v2, -0x3f00

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1e17

    .line 4297
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1de3

    .line 4298
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4038

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x4140

    sub-float/2addr v2, v3

    aput v2, v1, v7

    .line 4302
    :goto_1d56
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    const/high16 v2, 0x4110

    aput v2, v1, v7

    .line 4304
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0x4

    .line 4305
    if-nez v1, :cond_1df4

    .line 4306
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v7

    .line 4318
    :cond_1d6e
    :goto_1d6e
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4320
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1e23

    .line 4321
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e4c

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4323
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v1, v1, v7

    const v2, 0x3c23d70a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const v3, 0x3c23d70a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const/high16 v3, 0x4000

    div-float v3, v2, v3

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const/high16 v5, 0x4000

    div-float v5, v2, v5

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4294
    :goto_1dde
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1d2d

    .line 4300
    :cond_1de3
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404c

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x41e0

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_1d56

    .line 4307
    :cond_1df4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1dff

    .line 4308
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const/high16 v2, 0x3f00

    aput v2, v1, v7

    goto/16 :goto_1d6e

    .line 4309
    :cond_1dff
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e0b

    .line 4310
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const v2, 0x3e99999a

    aput v2, v1, v7

    goto/16 :goto_1d6e

    .line 4311
    :cond_1e0b
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d6e

    .line 4312
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const v2, 0x3e4ccccd

    aput v2, v1, v7

    goto/16 :goto_1d6e

    .line 4316
    :cond_1e17
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    aget v2, v1, v7

    const v3, 0x3c23d70a

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_1d6e

    .line 4328
    :cond_1e23
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e60

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4330
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v1, v1, v7

    const v2, 0x3c23d70a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const v3, 0x3c23d70a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v3, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v4, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v5, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v6, v2, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1dde

    .line 4356
    :cond_1e76
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4030

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4020

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4357
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4008

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    goto/16 :goto_1a2b

    .line 4361
    :cond_1e96
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f5c

    .line 4363
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v3, v3, 0x190

    add-int/lit8 v3, v3, 0x5

    aput v3, v1, v2

    .line 4364
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput v3, v1, v2

    .line 4365
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 4366
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    const/4 v2, 0x0

    const v3, 0x3fcccccd

    aput v3, v1, v2

    .line 4367
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    aput v3, v1, v2

    .line 4368
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    const/4 v2, 0x0

    const/high16 v3, 0x4100

    aput v3, v1, v2

    .line 4370
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v3, v3, 0x190

    add-int/lit8 v3, v3, 0xf

    aput v3, v1, v2

    .line 4371
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    const/4 v2, 0x1

    const/16 v3, 0x8

    aput v3, v1, v2

    .line 4372
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 4373
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    const/4 v2, 0x1

    const v3, 0x3f99999a

    aput v3, v1, v2

    .line 4374
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    const/4 v2, 0x1

    const/high16 v3, -0x3fc0

    aput v3, v1, v2

    .line 4375
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    const/4 v2, 0x1

    const/high16 v3, 0x4100

    aput v3, v1, v2

    .line 4377
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v3, v3, 0x190

    add-int/lit8 v3, v3, 0xa

    aput v3, v1, v2

    .line 4378
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    const/4 v2, 0x2

    const/16 v3, 0x8

    aput v3, v1, v2

    .line 4379
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 4380
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    const/4 v2, 0x2

    const v3, 0x3fa66666

    aput v3, v1, v2

    .line 4381
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    const/4 v2, 0x2

    const/high16 v3, 0x4040

    aput v3, v1, v2

    .line 4382
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    const/4 v2, 0x2

    const/high16 v3, 0x4110

    aput v3, v1, v2

    .line 4384
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v3, v3, 0x190

    add-int/lit8 v3, v3, 0x8

    aput v3, v1, v2

    .line 4385
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    const/4 v2, 0x3

    const/16 v3, 0x9

    aput v3, v1, v2

    .line 4386
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    const/4 v2, 0x3

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 4387
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    const/4 v2, 0x3

    const/high16 v3, 0x4000

    aput v3, v1, v2

    .line 4388
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    const/4 v2, 0x3

    const/high16 v3, 0x4120

    aput v3, v1, v2

    .line 4389
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    const/4 v2, 0x3

    const/high16 v3, 0x4120

    aput v3, v1, v2

    .line 4393
    :cond_1f5c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    .line 4462
    :cond_1f61
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4463
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    if-nez v1, :cond_21ad

    .line 4464
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_219f

    .line 4466
    const/high16 v1, -0x4040

    const/high16 v2, 0x4090

    const/high16 v3, -0x3ea0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4475
    :goto_1f7c
    const/high16 v1, 0x3e80

    const/high16 v2, 0x3e80

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4478
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isPreview()Z

    move-result v1

    if-nez v1, :cond_1fc8

    .line 4479
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mIsAccuweatherDaemon:Z
    invoke-static {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$000(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1fc8

    .line 4481
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4482
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    if-nez v1, :cond_21bc

    .line 4483
    const v1, 0x3fc28f5c

    const v2, 0x408b3333

    const/high16 v3, -0x3ea0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4487
    :goto_1fbc
    const v1, 0x3e19999a

    const v2, 0x3de147ae

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4492
    :cond_1fc8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setSceneDrawStatus(Z)V

    .line 4493
    return-void

    .line 4397
    :cond_1fcf
    const/4 v1, 0x0

    move v7, v1

    :goto_1fd1
    const/16 v1, 0x28

    if-ge v7, v1, :cond_1f61

    .line 4399
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_2054

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_2054

    .line 4402
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_20e2

    .line 4403
    const v1, 0x3f4ccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 4408
    :goto_200e
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4410
    const/high16 v1, -0x4100

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, -0x3e68

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4412
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_20f5

    .line 4413
    const/high16 v1, 0x3fc0

    const v2, 0x3f99999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4418
    :goto_203b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4421
    :cond_2054
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_20dd

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v2, v2, v7

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_20dd

    .line 4424
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    int-to-double v1, v1

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v3, v3, v7

    int-to-double v3, v3

    sget-object v5, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    aget v5, v5, v7

    int-to-double v5, v5

    const-wide/high16 v8, 0x3fe0

    mul-double/2addr v5, v8

    add-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_211d

    .line 4425
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    aget v1, v1, v7

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe8

    cmpl-double v1, v1, v3

    if-lez v1, :cond_210c

    .line 4426
    const v1, 0x3f4ccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 4436
    :goto_20a6
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4438
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e30

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4440
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    aget v1, v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    aget v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4443
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_21ee

    .line 4397
    :cond_20dd
    :goto_20dd
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1fd1

    .line 4405
    :cond_20e2
    const v1, 0x3e4ccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_200e

    .line 4415
    :cond_20f5
    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 4416
    const/high16 v1, 0x3fc0

    const/high16 v2, 0x4020

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto/16 :goto_203b

    .line 4428
    :cond_210c
    const/high16 v1, 0x3f00

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto :goto_20a6

    .line 4430
    :cond_211d
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    aget v1, v1, v7

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe8

    cmpl-double v1, v1, v3

    if-lez v1, :cond_213b

    .line 4431
    const v1, 0x3e99999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_20a6

    .line 4433
    :cond_213b
    const v1, 0x3dcccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_20a6

    .line 4445
    :pswitch_214e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_20dd

    .line 4448
    :pswitch_2169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_20dd

    .line 4451
    :pswitch_2184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_20dd

    .line 4469
    :cond_219f
    const/high16 v1, -0x4040

    const v2, 0x409ccccd

    const/high16 v3, -0x3ea0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_1f7c

    .line 4473
    :cond_21ad
    const v1, -0x4059999a

    const v2, 0x409ccccd

    const/high16 v3, -0x3ea0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_1f7c

    .line 4485
    :cond_21bc
    const v1, 0x3fd9999a

    const v2, 0x408b3333

    const/high16 v3, -0x3ea0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_1fbc

    :cond_21cb
    move v7, v2

    goto/16 :goto_b7b

    .line 4008
    :pswitch_data_21ce
    .packed-switch 0x0
        :pswitch_167e
        :pswitch_1691
        :pswitch_16a4
    .end packed-switch

    .line 3728
    :pswitch_data_21d8
    .packed-switch 0x0
        :pswitch_1180
        :pswitch_118a
        :pswitch_1194
        :pswitch_119f
        :pswitch_11a9
        :pswitch_11b4
        :pswitch_11bf
        :pswitch_11cb
        :pswitch_11d7
    .end packed-switch

    .line 4443
    :pswitch_data_21ee
    .packed-switch 0x0
        :pswitch_214e
        :pswitch_2169
        :pswitch_2184
    .end packed-switch
.end method

.method private generateImages(Landroid/content/Context;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x18

    const/4 v0, 0x0

    const/16 v6, 0xd

    .line 2547
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v2, "sky"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2548
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    const-string v2, "sky_stars"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    .line 2550
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v2, "cloud1"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2551
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v2, "cloud2"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2553
    new-array v1, v7, [Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    move v1, v0

    .line 2554
    :goto_2e
    if-ge v1, v7, :cond_4f

    .line 2555
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    new-instance v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wave_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 2554
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 2558
    :cond_4f
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "wave_back"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave_back:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2560
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    const-string v2, "logo"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    .line 2562
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;

    const-string v2, "cityname"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;

    .line 2566
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v2, "wavecover"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2568
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "sun1"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2569
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "sun2"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2570
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "sun3"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2571
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "sun4"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2572
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "star"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2573
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "meteor"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2574
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "moon"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2575
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "rain1"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2576
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "rain2"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2577
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "rain3"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2579
    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v2, "fog"

    invoke-direct {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2582
    new-array v1, v6, [Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2583
    new-array v1, v6, [Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    iput-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2584
    :goto_de
    if-ge v0, v6, :cond_11b

    .line 2585
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    new-instance v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raindrop1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 2586
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    new-instance v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raindrop2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 2584
    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    .line 2589
    :cond_11b
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "waterdrop"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2590
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v1, "cloudcover"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2591
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "frost"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2592
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "snow1"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2593
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "snow2"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2594
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "snow3"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2595
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "snow4"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2597
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "nightcover"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2599
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "skyflash"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2600
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "lightning1"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2601
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "lightning2"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2602
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const-string v1, "lightning3"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    .line 2604
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v1, "cloud_light_a01"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2605
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v1, "cloud_light_a02"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2606
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v1, "cloud_light_a03"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2607
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v1, "cloud_light_b01"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2608
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v1, "cloud_light_b02"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2609
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const-string v1, "cloud_light_b04"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    .line 2611
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bImagesetInitialized:Z

    .line 2613
    return-void
.end method

.method private initMem()V
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x14

    const/4 v3, 0x7

    const/16 v2, 0x28

    const/16 v1, 0x8

    .line 2290
    new-array v0, v3, [Z

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    .line 2291
    new-array v0, v3, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    .line 2292
    new-array v0, v3, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->start_star:[I

    .line 2293
    new-array v0, v3, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->dur_star:[I

    .line 2295
    new-array v0, v5, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    .line 2296
    new-array v0, v5, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    .line 2297
    new-array v0, v5, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    .line 2299
    const/16 v0, 0x96

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    .line 2300
    const/16 v0, 0x96

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    .line 2301
    const/16 v0, 0x96

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    .line 2303
    const/16 v0, 0x190

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    .line 2304
    const/16 v0, 0x190

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    .line 2305
    const/16 v0, 0x190

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    .line 2307
    new-array v0, v2, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    .line 2308
    new-array v0, v2, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    .line 2309
    new-array v0, v2, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    .line 2310
    new-array v0, v2, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    .line 2311
    new-array v0, v2, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    .line 2312
    new-array v0, v2, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    .line 2314
    new-array v0, v4, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    .line 2315
    new-array v0, v4, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    .line 2316
    new-array v0, v4, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    .line 2317
    new-array v0, v4, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    .line 2319
    new-array v0, v1, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    .line 2320
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    .line 2321
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    .line 2322
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    .line 2324
    new-array v0, v1, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    .line 2325
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    .line 2326
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    .line 2327
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    .line 2329
    return-void
.end method

.method private isImagesetInitialied()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3133
    sget-boolean v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bImagesetInitialized:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    .line 3136
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isMemInitialied()Z
    .registers 2

    .prologue
    .line 3140
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bMemoryInitialized:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    if-eqz v0, :cond_a

    .line 3141
    const/4 v0, 0x1

    .line 3143
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private loadImages(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f020014

    const v10, 0x7f020007

    const/16 v9, 0xd

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2624
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bIsEnginePaused:Z

    if-ne v0, v8, :cond_13

    .line 3089
    :goto_12
    return-void

    .line 2628
    :cond_13
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    invoke-virtual {p0, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setImageSetLoading(Z)V

    .line 2632
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_229

    .line 2634
    if-nez p4, :cond_134

    .line 2636
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020001

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2637
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020013

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2638
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020019

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2640
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020002

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2641
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020003

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2642
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020004

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2643
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020005

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2646
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2647
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2648
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2649
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2650
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2651
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2652
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2653
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    move v0, v4

    .line 2654
    :goto_9f
    if-ge v0, v9, :cond_b6

    .line 2655
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2656
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2654
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 2658
    :cond_b6
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2659
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2660
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2661
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2662
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2663
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2664
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2665
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2666
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2667
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2668
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2669
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2670
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2671
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2672
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2673
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2674
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2675
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2676
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2732
    :goto_115
    iput-boolean v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    .line 3058
    :cond_117
    :goto_117
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_786

    move v0, v4

    .line 3059
    :goto_122
    const/16 v1, 0x18

    if-ge v0, v1, :cond_786

    .line 3060
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    aget-object v1, v1, v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave_id:[I

    aget v2, v2, v0

    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3059
    add-int/lit8 v0, v0, 0x1

    goto :goto_122

    .line 2678
    :cond_134
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020020

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2679
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    const v1, 0x7f020021

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2681
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020013

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2682
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020019

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2684
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v10, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2686
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020022

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2687
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02001f

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2689
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2300()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2690
    if-gez v0, :cond_1c5

    move v1, v4

    .line 2695
    :goto_172
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2900()[I

    move-result-object v2

    aget v3, v2, v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3000()[Z

    move-result-object v2

    aget-boolean v5, v2, v1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZZ)V

    .line 2699
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2700
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2701
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2702
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2703
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2704
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2705
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2706
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    move v0, v4

    .line 2707
    :goto_1ae
    if-ge v0, v9, :cond_1cd

    .line 2708
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2709
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ae

    .line 2692
    :cond_1c5
    const/16 v1, 0x1a

    if-le v0, v1, :cond_813

    .line 2693
    const/16 v0, 0x1a

    move v1, v0

    goto :goto_172

    .line 2711
    :cond_1cd
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2712
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2713
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2714
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2715
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2716
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2717
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2718
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2719
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2720
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2721
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2722
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2723
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2724
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2725
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2726
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2727
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2728
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto/16 :goto_115

    .line 2734
    :cond_229
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_241

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_241

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D8_ICE_COLD:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_3a7

    .line 2737
    :cond_241
    if-nez p4, :cond_2c5

    .line 2738
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02000b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2740
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2741
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02001a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2743
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2744
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020008

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2746
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_2bf

    .line 2747
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020028

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2752
    :goto_275
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2753
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2754
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2795
    :goto_284
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2796
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2797
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2798
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2800
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2801
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2802
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    move v0, v4

    .line 2803
    :goto_2a8
    if-ge v0, v9, :cond_34b

    .line 2804
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2805
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2803
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a8

    .line 2749
    :cond_2bf
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto :goto_275

    .line 2758
    :cond_2c5
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020020

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2760
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2761
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02001a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2763
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_30f

    .line 2764
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2765
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2766
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2781
    :goto_2f1
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v10, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2782
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const/high16 v1, 0x7f02

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2783
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_344

    .line 2784
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020029

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_284

    .line 2768
    :cond_30f
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2300()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2769
    if-gez v0, :cond_33c

    move v1, v4

    .line 2774
    :goto_318
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2900()[I

    move-result-object v2

    aget v3, v2, v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3000()[Z

    move-result-object v2

    aget-boolean v5, v2, v1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZZ)V

    .line 2777
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020022

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2778
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02001f

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto :goto_2f1

    .line 2771
    :cond_33c
    const/16 v1, 0x1a

    if-le v0, v1, :cond_810

    .line 2772
    const/16 v0, 0x1a

    move v1, v0

    goto :goto_318

    .line 2786
    :cond_344
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto/16 :goto_284

    .line 2807
    :cond_34b
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2808
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2809
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2810
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2811
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2812
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2813
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2814
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2815
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2816
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2817
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2818
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2819
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2820
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2821
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2822
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2823
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2824
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto/16 :goto_117

    .line 2827
    :cond_3a7
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_4a9

    .line 2832
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v3, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2833
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02001a

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2835
    if-nez p4, :cond_417

    .line 2836
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020011

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2837
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020009

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2838
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2845
    :goto_3d3
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020012

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2846
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02000c

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2848
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02000e

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2849
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02000f

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2850
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020010

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    move v0, v4

    .line 2852
    :goto_3fc
    if-ge v0, v9, :cond_42d

    .line 2853
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop_id_1:[I

    aget v2, v2, v0

    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2854
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop_id_2:[I

    aget v2, v2, v0

    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2852
    add-int/lit8 v0, v0, 0x1

    goto :goto_3fc

    .line 2840
    :cond_417
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020020

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2841
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v10, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2842
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02003a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto :goto_3d3

    .line 2858
    :cond_42d
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2861
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2862
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2863
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2864
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2865
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2866
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2867
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2868
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2869
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2870
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2871
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2872
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2873
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2874
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2875
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2876
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2877
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2878
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2879
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2880
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2881
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2882
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2883
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2885
    iput-boolean v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    goto/16 :goto_117

    .line 2888
    :cond_4a9
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_4b9

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_60f

    .line 2894
    :cond_4b9
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v3, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2895
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02001a

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2897
    if-nez p4, :cond_519

    .line 2898
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020011

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2899
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02000a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2900
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2907
    :goto_4dd
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_5d4

    .line 2909
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02000e

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2910
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02000f

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2911
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020010

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    move v0, v4

    .line 2913
    :goto_4fe
    if-ge v0, v9, :cond_52f

    .line 2914
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop_id_1:[I

    aget v2, v2, v0

    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2915
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop_id_2:[I

    aget v2, v2, v0

    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2913
    add-int/lit8 v0, v0, 0x1

    goto :goto_4fe

    .line 2902
    :cond_519
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020020

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2903
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v10, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2904
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02003a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto :goto_4dd

    .line 2918
    :cond_52f
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020012

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2919
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02000c

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2921
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02000d

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2940
    :goto_547
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020024

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2941
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020025

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2942
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020026

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2943
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020027

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2946
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2947
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2948
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2949
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2950
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2951
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2952
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2954
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2955
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2956
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2957
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2958
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2959
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2960
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2961
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2962
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2963
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2964
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2965
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2968
    iput-boolean v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    .line 2969
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_117

    .line 2970
    iput-boolean v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    goto/16 :goto_117

    .line 2925
    :cond_5d4
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2926
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2927
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    move v0, v4

    .line 2929
    :goto_5e4
    if-ge v0, v9, :cond_5fb

    .line 2930
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2931
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2929
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e4

    .line 2934
    :cond_5fb
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2935
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2937
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020023

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_547

    .line 2975
    :cond_60f
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_61f

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_117

    .line 2981
    :cond_61f
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_729

    .line 2982
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020015

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2983
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02001b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2989
    :goto_637
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_738

    .line 2990
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020016

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2991
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020017

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2992
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020018

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2993
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02001c

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2994
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02001d

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2995
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02001e

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2997
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02000e

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2998
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02000f

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2999
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f020010

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3001
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02002e

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3017
    :goto_68f
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloudcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02000c

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3019
    if-nez p4, :cond_76c

    .line 3020
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02002d

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3021
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020009

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3022
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3029
    :goto_6ae
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02002a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3030
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02002b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3031
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02002c

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3034
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3035
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3036
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3037
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3038
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3039
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3040
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3041
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3042
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3043
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3044
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3045
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3046
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3047
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3048
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    move v0, v4

    .line 3051
    :goto_712
    if-ge v0, v9, :cond_782

    .line 3052
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3053
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3051
    add-int/lit8 v0, v0, 0x1

    goto :goto_712

    .line 2985
    :cond_729
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2986
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f02001a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_637

    .line 3003
    :cond_738
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3004
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3005
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3006
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3007
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3008
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3010
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3011
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3012
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3014
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto/16 :goto_68f

    .line 3024
    :cond_76c
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    const v1, 0x7f020020

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3025
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->watercover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v10, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3026
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const/high16 v1, 0x7f02

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_6ae

    .line 3055
    :cond_782
    iput-boolean v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    goto/16 :goto_117

    .line 3064
    :cond_786
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave_back:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_796

    .line 3065
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->wave_back:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;

    const v1, 0x7f02003b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3068
    :cond_796
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_7a6

    .line 3069
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;

    const v1, 0x7f020031

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3073
    :cond_7a6
    invoke-virtual {p0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->loadCityName(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3077
    invoke-virtual {p0, p3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setLoadedImageset(I)V

    .line 3078
    invoke-virtual {p0, p4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setLoadedImagesetDayNight(Z)V

    .line 3079
    invoke-virtual {p0, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setImageSetLoading(Z)V

    .line 3081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3082
    const-string v2, "SecretWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    .line 3085
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 3087
    const-string v4, "SecretWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Java: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_810
    move v1, v0

    goto/16 :goto_318

    :cond_813
    move v1, v0

    goto/16 :goto_172
.end method


# virtual methods
.method public getLoadedImageset()I
    .registers 2

    .prologue
    .line 3117
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mLoadedImageset:I
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3300(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)I

    move-result v0

    return v0
.end method

.method public getLoadedImagesetDayNight()Z
    .registers 2

    .prologue
    .line 3125
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mLoadedImagesetDayNight:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3400(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v0

    return v0
.end method

.method public getSceneDrawStatus()Z
    .registers 2

    .prologue
    .line 4576
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bSceneReady:Z

    return v0
.end method

.method public isEnginePaused()Z
    .registers 2

    .prologue
    .line 4588
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bIsEnginePaused:Z

    return v0
.end method

.method public isImageSetLoading()Z
    .registers 2

    .prologue
    .line 3129
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mbImageSetLoading:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3200(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v0

    return v0
.end method

.method public isPreview()Z
    .registers 2

    .prologue
    .line 4730
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mbIsPreview:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2200(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v0

    return v0
.end method

.method public loadCityName(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xeb

    .line 3092
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mIsAccuweatherDaemon:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$000(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    .line 3094
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadImage-CITY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x400

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;-><init>(Landroid/content/Context;II)V

    .line 3096
    const/16 v1, 0xa0

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->setTextColor(I)V

    .line 3097
    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->setTextSize(F)V

    .line 3098
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView$eFontStyle;->FONT_STYLE_DROIDSANS_BOLD:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView$eFontStyle;

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->setTextFont(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView$eFontStyle;)V

    .line 3099
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->setTextGravity(I)V

    .line 3102
    const/16 v1, 0x320

    const/16 v2, 0x1e

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2700()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/InfoTextView;->GetBitmapWithText(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3102(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3104
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3100()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/RectOneToSixteen;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 3106
    :cond_62
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3147
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bIsEnginePaused:Z

    if-ne v0, v4, :cond_7

    .line 3232
    :cond_6
    :goto_6
    return-void

    .line 3153
    :cond_7
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mbImgLoaded:Z

    if-nez v0, :cond_4e

    .line 3154
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mbImgLoaded:Z

    .line 3196
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isImageSetLoading()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 3199
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 3200
    const/16 v0, 0x303

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 3205
    :try_start_1d
    invoke-direct {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->drawObjects(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 3206
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_10e

    .line 3213
    :goto_23
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v1, 0x640

    if-le v0, v1, :cond_114

    .line 3214
    iput v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    .line 3220
    :cond_2b
    :goto_2b
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 3226
    const-wide/16 v0, 0x14

    :try_start_45
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_6

    .line 3227
    :catch_49
    move-exception v0

    .line 3228
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 3157
    :cond_4e
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isPreview()Z

    move-result v0

    if-ne v0, v4, :cond_59

    .line 3159
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->setPreviewWeather()V

    .line 3163
    :cond_59
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3500()Z

    move-result v0

    if-ne v0, v4, :cond_ef

    .line 3164
    const-string v0, "SecretWallpaper"

    const-string v1, "onDrawFrame: LIVE !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isImageSetLoading()Z

    move-result v0

    if-nez v0, :cond_ef

    .line 3168
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded imageset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / Cur weather: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->checkIsDayOrNight()Z
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1400(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->loadImages(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3172
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CUR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    move-result-object v2

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   LOAD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    const-wide/16 v0, 0x64

    :try_start_dd
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_101

    .line 3181
    :goto_e0
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v0

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v1

    if-ne v0, v1, :cond_106

    .line 3182
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v0, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->setImageSetChange(Z)V

    .line 3189
    :cond_ef
    :goto_ef
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3600()Z

    move-result v0

    if-ne v0, v4, :cond_d

    .line 3190
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->loadCityName(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3192
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v0, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->setCityNameChange(Z)V

    goto/16 :goto_d

    .line 3178
    :catch_101
    move-exception v0

    .line 3179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e0

    .line 3184
    :cond_106
    const-string v0, "SecretWallpaper"

    const-string v1, "Loaded imageset & Current Weather are different"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    .line 3207
    :catch_10e
    move-exception v0

    .line 3208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_23

    .line 3216
    :cond_114
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    goto/16 :goto_2b
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x500

    const/16 v5, 0x2d0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4510
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOrientation:I

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->preOrientation:I

    .line 4511
    const-string v0, "zeroshuttle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4512
    if-ne p2, v6, :cond_28

    if-eq p3, v5, :cond_2c

    :cond_28
    if-ne p2, v5, :cond_3a

    if-ne p3, v6, :cond_3a

    .line 4513
    :cond_2c
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    .line 4518
    :goto_2e
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-nez v0, :cond_3d

    .line 4519
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GL11Ext not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4515
    :cond_3a
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    goto :goto_2e

    .line 4522
    :cond_3d
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isPreview()Z

    move-result v0

    if-ne v0, v4, :cond_47

    .line 4523
    const/high16 v0, 0x3fa0

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    .line 4527
    :cond_47
    if-ge p2, p3, :cond_ac

    .line 4528
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    .line 4534
    :goto_4d
    invoke-interface {p1, v3, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 4535
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 4536
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4537
    const/high16 v0, 0x4234

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    const v2, 0x3dcccccd

    const/high16 v3, 0x4220

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4538
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 4539
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4542
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGED mbSurfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->getSurfaceCreated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \nOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1300()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_b5

    .line 4548
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    .line 4567
    :cond_ab
    :goto_ab
    return-void

    .line 4530
    :cond_ac
    const v0, 0x3ff9999a

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    .line 4531
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F

    goto :goto_4d

    .line 4549
    :cond_b5
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_ab

    .line 4551
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_ab

    .line 4553
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_ab

    .line 4555
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e8

    .line 4556
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    goto :goto_ab

    .line 4557
    :cond_e8
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_f7

    .line 4558
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    goto :goto_ab

    .line 4559
    :cond_f7
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_106

    .line 4560
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    goto :goto_ab

    .line 4561
    :cond_106
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D8_ICE_COLD:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_ab

    .line 4563
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_ab

    .line 4564
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    .line 4565
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    goto :goto_ab
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 4593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setSceneDrawStatus(Z)V

    .line 4595
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4597
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4599
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOrientation:I

    .line 4601
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->preOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 4604
    sput-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bGLES11:Z

    .line 4607
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 4608
    const/16 v0, 0x2801

    const/high16 v1, 0x4618

    invoke-interface {p1, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 4609
    const/16 v0, 0x2800

    const v1, 0x46180400

    invoke-interface {p1, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 4610
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 4611
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 4612
    const/high16 v0, 0x41f0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 4613
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 4614
    const/16 v0, 0x203

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 4615
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 4616
    const/16 v0, 0xc53

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 4618
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATED ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1300()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 4622
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isPreview()Z

    move-result v0

    if-ne v0, v5, :cond_ae

    .line 4623
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1802(I)I

    .line 4626
    :cond_ae
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isMemInitialied()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 4627
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->initMem()V

    .line 4628
    :cond_b7
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isImagesetInitialied()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 4629
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$700(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->generateImages(Landroid/content/Context;)V

    .line 4631
    :cond_c6
    invoke-static {v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->setSurfaceCreated(Z)V

    .line 4632
    return-void
.end method

.method public onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4734
    const-string v0, "SecretWallpaper"

    const-string v1, "DESTROYED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    invoke-virtual {p0, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setSceneDrawStatus(Z)V

    .line 4736
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->setSurfaceCreated(Z)V

    .line 4737
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter

    .prologue
    .line 4641
    .line 4723
    return-void
.end method

.method public release()V
    .registers 8

    .prologue
    .line 4496
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isImagesetInitialied()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4497
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->deleteImages(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 4498
    :cond_b
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->isMemInitialied()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4499
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->deleteMem()V

    .line 4501
    :cond_14
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4502
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    .line 4503
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 4505
    const-string v4, "SecretWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Java: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4506
    return-void
.end method

.method public setEnginePause(Z)V
    .registers 2
    .parameter "bFlag"

    .prologue
    .line 4584
    sput-boolean p1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bIsEnginePaused:Z

    .line 4585
    return-void
.end method

.method public setImageSetLoading(Z)V
    .registers 3
    .parameter "bLoading"

    .prologue
    .line 3109
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mbImageSetLoading:Z
    invoke-static {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3202(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Z)Z

    .line 3110
    return-void
.end method

.method public setIsPreview(Z)V
    .registers 3
    .parameter "bPreview"

    .prologue
    .line 4726
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mbIsPreview:Z
    invoke-static {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2202(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Z)Z

    .line 4727
    return-void
.end method

.method public setLoadedImageset(I)V
    .registers 3
    .parameter "nWeather"

    .prologue
    .line 3113
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mLoadedImageset:I
    invoke-static {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3302(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;I)I

    .line 3114
    return-void
.end method

.method public setLoadedImagesetDayNight(Z)V
    .registers 3
    .parameter "bNight"

    .prologue
    .line 3121
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mLoadedImagesetDayNight:Z
    invoke-static {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$3402(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Z)Z

    .line 3122
    return-void
.end method

.method public setSceneDrawStatus(Z)V
    .registers 2
    .parameter "bFlag"

    .prologue
    .line 4580
    sput-boolean p1, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->bSceneReady:Z

    .line 4581
    return-void
.end method

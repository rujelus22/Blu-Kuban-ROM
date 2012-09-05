.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;
.super Ljava/lang/Object;
.source "SecretWallpaperService.java"

# interfaces
.implements Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CSPRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;
    }
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

.field private cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;

.field private cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

.field private cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

.field private cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

.field private cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

.field private cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

.field private cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

.field private cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

.field private cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

.field private day_night:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field fAlpha:F

.field private fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

.field private land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

.field private lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

.field private lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private logo:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

.field private m1280x720:Z

.field private mCntMode:I

.field private mContext:Landroid/content/Context;

.field private mFrameCnt:I

.field mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private mOffset:F

.field private final mScaleView:F

.field private mbImgLoaded:Z

.field private meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private mfLandscape:F

.field private moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field n_snow1:I

.field n_snow2:I

.field n_snow3:I

.field private next:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private preOrientation:I

.field private prev:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

.field private raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

.field scale_a_meteor:F

.field size_star:[F

.field private sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private sunlight_cnt:F

.field final typeA:Z

.field final typeB:Z

.field private waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

.field windmill_alpha:[F

.field private windmill_center_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private windmill_center_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field windmill_distance:[I

.field windmill_flip:[Z

.field private windmill_pillar_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private windmill_pillar_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private windmill_pillar_flip_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private windmill_pillar_flip_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field windmill_pillar_offset_x:[F

.field windmill_pillar_offset_y:[F

.field windmill_pos_x:[F

.field windmill_pos_y:[F

.field windmill_pos_z:[F

.field windmill_scale_x:[F

.field windmill_scale_y:[F

.field windmill_type:[Z

.field private windmill_wing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field private windmill_wing_blur:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

.field windmill_wing_offset:[F

.field x_a_cloud_A_1:F

.field x_a_cloud_A_2:F

.field x_a_cloud_A_3:F

.field x_a_cloud_A_4:F

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

.field y_a_cloud_A_4:F

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
    const/16 v3, 0x19

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1939
    sput-boolean v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bMemoryInitialized:Z

    .line 1940
    sput-boolean v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bImagesetInitialized:Z

    .line 1942
    sput-boolean v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bSceneReady:Z

    .line 1943
    sput-boolean v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bIsEnginePaused:Z

    .line 2028
    new-array v0, v3, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop_id_1:[I

    .line 2035
    new-array v0, v3, [I

    fill-array-data v0, :array_94

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop_id_2:[I

    .line 2080
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    .line 2093
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    .line 2094
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->start_star:[I

    .line 2095
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->dur_star:[I

    .line 2101
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    .line 2102
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    .line 2103
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    .line 2105
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    .line 2106
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    .line 2107
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    .line 2109
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    .line 2110
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    .line 2111
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    .line 2113
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    .line 2114
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    .line 2115
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    .line 2116
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    .line 2117
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    .line 2118
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    .line 2120
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    .line 2121
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    .line 2122
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    .line 2123
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    .line 2125
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    .line 2126
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    .line 2127
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    .line 2128
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    .line 2130
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    .line 2131
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    .line 2132
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    .line 2133
    sput-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    .line 2135
    sput v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    .line 4770
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bGLES11:Z

    return-void

    .line 2028
    :array_5e
    .array-data 0x4
        0x4at 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 2035
    :array_94
    .array-data 0x4
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x6ft 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x72t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    const/16 v2, 0xd

    const/4 v1, 0x0

    .line 2233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1945
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    .line 1947
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mbImgLoaded:Z

    .line 1948
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mScaleView:F

    .line 1954
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    .line 2042
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    .line 2043
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    .line 2044
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    .line 2045
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    .line 2046
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    .line 2049
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 2051
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    .line 2052
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    .line 2053
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    .line 2054
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_4:F

    .line 2055
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    .line 2056
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    .line 2057
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    .line 2058
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_4:F

    .line 2059
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_5:F

    .line 2060
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_6:F

    .line 2061
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_7:F

    .line 2063
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_A_1:F

    .line 2064
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_A_2:F

    .line 2065
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_A_3:F

    .line 2066
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_A_4:F

    .line 2067
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_1:F

    .line 2068
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_2:F

    .line 2069
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_3:F

    .line 2070
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_4:F

    .line 2071
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_5:F

    .line 2072
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_6:F

    .line 2073
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_cloud_B_7:F

    .line 2075
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    .line 2076
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    .line 2077
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    .line 2078
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_a_meteor:F

    .line 2081
    new-array v0, v4, [F

    fill-array-data v0, :array_f0

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_star:[F

    .line 2085
    new-array v0, v4, [F

    fill-array-data v0, :array_102

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_star:[F

    .line 2089
    new-array v0, v4, [F

    fill-array-data v0, :array_114

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->size_star:[F

    .line 2097
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->n_snow1:I

    .line 2098
    const/16 v0, 0x46

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->n_snow2:I

    .line 2099
    const/16 v0, 0x96

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->n_snow3:I

    .line 2138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->typeA:Z

    .line 2139
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->typeB:Z

    .line 2147
    new-array v0, v2, [F

    fill-array-data v0, :array_126

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_x:[F

    .line 2153
    new-array v0, v2, [F

    fill-array-data v0, :array_144

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_y:[F

    .line 2159
    new-array v0, v2, [F

    fill-array-data v0, :array_162

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_z:[F

    .line 2165
    new-array v0, v2, [F

    fill-array-data v0, :array_180

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_scale_x:[F

    .line 2171
    new-array v0, v2, [F

    fill-array-data v0, :array_19e

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_scale_y:[F

    .line 2177
    new-array v0, v2, [I

    fill-array-data v0, :array_1bc

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_distance:[I

    .line 2183
    new-array v0, v2, [Z

    fill-array-data v0, :array_1da

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_type:[Z

    .line 2190
    new-array v0, v2, [Z

    fill-array-data v0, :array_1e6

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_flip:[Z

    .line 2197
    new-array v0, v2, [F

    fill-array-data v0, :array_1f2

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_offset_x:[F

    .line 2204
    new-array v0, v2, [F

    fill-array-data v0, :array_210

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_offset_y:[F

    .line 2211
    new-array v0, v2, [F

    fill-array-data v0, :array_22e

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_offset:[F

    .line 2218
    new-array v0, v2, [F

    fill-array-data v0, :array_24c

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_alpha:[F

    .line 2225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    .line 4835
    iput v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->preOrientation:I

    .line 4836
    iput v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mCntMode:I

    .line 2234
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    .line 2235
    iput-boolean v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mbImgLoaded:Z

    .line 2236
    iput v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    .line 2238
    const-string v0, "SecretWallpaper"

    const-string v1, "Initialize Wallpaper: Init Images"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->generateImages(Landroid/content/Context;)V

    .line 2241
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->initMem()V

    .line 2242
    const-string v0, "SecretWallpaper"

    const-string v1, "Initialize Wallpaper: Init Memory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    return-void

    .line 2081
    nop

    :array_f0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0xd9t 0xbft
        0x9at 0x99t 0x99t 0x3ft
        0x0t 0x0t 0xc0t 0xbft
        0x0t 0x0t 0x90t 0xc0t
        0x33t 0x33t 0xc3t 0xc0t
        0x0t 0x0t 0xf0t 0xc0t
    .end array-data

    .line 2085
    :array_102
    .array-data 0x4
        0xcdt 0xcct 0xact 0x40t
        0x0t 0x0t 0x90t 0x40t
        0xcdt 0xcct 0x4ct 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x66t 0x66t 0x96t 0x40t
        0x66t 0x66t 0xa6t 0x40t
        0x9at 0x99t 0x99t 0x40t
    .end array-data

    .line 2089
    :array_114
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
    .end array-data

    .line 2147
    :array_126
    .array-data 0x4
        0x0t 0x0t 0xd0t 0xc0t
        0x0t 0x0t 0x60t 0xc0t
        0xcdt 0xcct 0x4ct 0xbft
        0x0t 0x0t 0x8t 0x41t
        0x66t 0x66t 0x26t 0x41t
        0xcdt 0xcct 0xfct 0xc0t
        0xcdt 0xcct 0x8ct 0xc0t
        0xcdt 0xcct 0x4ct 0xbet
        0x0t 0x0t 0x38t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x38t 0xc1t
        0x0t 0x0t 0xc0t 0xc0t
        0x0t 0x0t 0x40t 0xc0t
    .end array-data

    .line 2153
    :array_144
    .array-data 0x4
        0x33t 0x33t 0x33t 0xc0t
        0x66t 0x66t 0xa6t 0xbft
        0xcdt 0xcct 0xct 0x40t
        0x9at 0x99t 0x99t 0x3et
        0xcdt 0xcct 0x8ct 0xbft
        0xcdt 0xcct 0x2ct 0xc0t
        0x0t 0x0t 0x30t 0xc0t
        0x0t 0x0t 0x30t 0xc0t
        0x0t 0x0t 0x20t 0xc0t
        0x33t 0x33t 0x33t 0xc0t
        0x0t 0x0t 0x60t 0xc0t
        0x33t 0x33t 0x53t 0xc0t
        0xcdt 0xcct 0x4ct 0xc0t
    .end array-data

    .line 2159
    :array_162
    .array-data 0x4
        0x0t 0x0t 0xb8t 0xc1t
        0x0t 0x0t 0xb8t 0xc1t
        0x0t 0x0t 0xb8t 0xc1t
        0x0t 0x0t 0xb8t 0xc1t
        0x0t 0x0t 0xb8t 0xc1t
        0x66t 0x66t 0xc0t 0xc1t
        0x66t 0x66t 0xc0t 0xc1t
        0x66t 0x66t 0xc0t 0xc1t
        0x9at 0x99t 0xbft 0xc1t
        0x9at 0x99t 0xbft 0xc1t
        0x0t 0x0t 0xc8t 0xc1t
        0x0t 0x0t 0xc8t 0xc1t
        0x0t 0x0t 0xc8t 0xc1t
    .end array-data

    .line 2165
    :array_180
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3et
        0x33t 0x33t 0xb3t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x19t 0x3et
        0x8ft 0xc2t 0xf5t 0x3dt
        0x8ft 0xc2t 0xf5t 0x3dt
        0x9at 0x99t 0x19t 0x3et
        0xect 0x51t 0xb8t 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
    .end array-data

    .line 2171
    :array_19e
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3et
        0x33t 0x33t 0xb3t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x19t 0x3et
        0x8ft 0xc2t 0xf5t 0x3dt
        0x8ft 0xc2t 0xf5t 0x3dt
        0x9at 0x99t 0x19t 0x3et
        0xect 0x51t 0xb8t 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
    .end array-data

    .line 2177
    :array_1bc
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 2183
    :array_1da
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 2190
    nop

    :array_1e6
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 2197
    nop

    :array_1f2
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0xbdt
        0xcdt 0xcct 0xcct 0xbdt
        0x9at 0x99t 0x19t 0xbet
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0x4ct 0x3dt
        0xat 0xd7t 0xa3t 0xbct
        0xat 0xd7t 0xa3t 0xbct
        0xcdt 0xcct 0x4ct 0xbdt
        0xat 0xd7t 0xa3t 0x3ct
        0xat 0xd7t 0xa3t 0x3ct
        0xcdt 0xcct 0x4ct 0xbdt
        0xcdt 0xcct 0x4ct 0xbdt
        0xcdt 0xcct 0x4ct 0xbdt
    .end array-data

    .line 2204
    :array_210
    .array-data 0x4
        0x66t 0x66t 0xc6t 0xbft
        0xcdt 0xcct 0x2ct 0xc0t
        0xcdt 0xcct 0xbct 0xc0t
        0x9at 0x99t 0x79t 0xc0t
        0xe1t 0x7at 0x14t 0xc0t
        0x3dt 0xat 0x97t 0xbft
        0x66t 0x66t 0x66t 0xbft
        0x66t 0x66t 0x66t 0xbft
        0x33t 0x33t 0x93t 0xbft
        0x33t 0x33t 0x33t 0xbft
        0x9at 0x99t 0x19t 0xbft
        0x9at 0x99t 0x19t 0xbft
        0x9at 0x99t 0x19t 0xbft
    .end array-data

    .line 2211
    :array_22e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xf0t 0x41t
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0xb4t 0x42t
        0x0t 0x0t 0xf0t 0x42t
        0x0t 0x0t 0xf0t 0x41t
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0xb4t 0x42t
        0x0t 0x0t 0xf0t 0x42t
        0x0t 0x0t 0x16t 0x43t
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0xb4t 0x42t
        0x0t 0x0t 0xf0t 0x42t
    .end array-data

    .line 2218
    :array_24c
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method static synthetic access$1700(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 1937
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1937
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    return p1
.end method

.method static synthetic access$4000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 1937
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_blur:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    return-object v0
.end method

.method private deleteImages(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 2355
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_e

    .line 2356
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2357
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2359
    :cond_e
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_1b

    .line 2360
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2361
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2364
    :cond_1b
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_28

    .line 2365
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2366
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2368
    :cond_28
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_35

    .line 2369
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2370
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2372
    :cond_35
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_42

    .line 2373
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2374
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2376
    :cond_42
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_4f

    .line 2377
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2378
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2381
    :cond_4f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_50
    const/16 v1, 0x19

    if-ge v0, v1, :cond_7d

    .line 2382
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_67

    .line 2383
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2384
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aput-object v3, v1, v0

    .line 2386
    :cond_67
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_7a

    .line 2387
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2388
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aput-object v3, v1, v0

    .line 2381
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 2391
    :cond_7d
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2392
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2394
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_8e

    .line 2395
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2396
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2399
    :cond_8e
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    if-eqz v1, :cond_9b

    .line 2400
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2401
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2403
    :cond_9b
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    if-eqz v1, :cond_a8

    .line 2404
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2405
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2408
    :cond_a8
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_b5

    .line 2409
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2410
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2412
    :cond_b5
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_c2

    .line 2413
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2414
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2416
    :cond_c2
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_cf

    .line 2417
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2418
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2420
    :cond_cf
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_dc

    .line 2421
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2422
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2425
    :cond_dc
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_e9

    .line 2426
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2427
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2429
    :cond_e9
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_f6

    .line 2430
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2431
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2433
    :cond_f6
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_103

    .line 2434
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2435
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2438
    :cond_103
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_110

    .line 2439
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2440
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2442
    :cond_110
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_11d

    .line 2443
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2444
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2446
    :cond_11d
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_12a

    .line 2447
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2448
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2450
    :cond_12a
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_137

    .line 2451
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2452
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2455
    :cond_137
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_144

    .line 2456
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2457
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2460
    :cond_144
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_151

    .line 2461
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2462
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2464
    :cond_151
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    if-eqz v1, :cond_15e

    .line 2465
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2466
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    .line 2469
    :cond_15e
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;

    if-eqz v1, :cond_16b

    .line 2470
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2471
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;

    .line 2479
    :cond_16b
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_178

    .line 2480
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2481
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2483
    :cond_178
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_185

    .line 2484
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2485
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2487
    :cond_185
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_192

    .line 2488
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2489
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2491
    :cond_192
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_19f

    .line 2492
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2493
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2498
    :cond_19f
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_1ac

    .line 2499
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2500
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2502
    :cond_1ac
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_blur:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_1b9

    .line 2503
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_blur:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2504
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_blur:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2506
    :cond_1b9
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_1c6

    .line 2507
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2508
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2510
    :cond_1c6
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_1d3

    .line 2511
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2512
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2514
    :cond_1d3
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_1e0

    .line 2515
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2516
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2518
    :cond_1e0
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_1ed

    .line 2519
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2520
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2522
    :cond_1ed
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_1fa

    .line 2523
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2524
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2526
    :cond_1fa
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v1, :cond_207

    .line 2527
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2528
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2530
    :cond_207
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    if-eqz v1, :cond_214

    .line 2531
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2532
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    .line 2534
    :cond_214
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    if-eqz v1, :cond_221

    .line 2535
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2536
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    .line 2538
    :cond_221
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    if-eqz v1, :cond_22e

    .line 2539
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2540
    iput-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    .line 2560
    :cond_22e
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2562
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bImagesetInitialized:Z

    .line 2563
    return-void
.end method

.method private deleteMem()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2307
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/16 v1, 0xd

    if-ge v0, v1, :cond_14

    .line 2308
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->destroy()V

    .line 2309
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aput-object v2, v1, v0

    .line 2307
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2311
    :cond_14
    iput-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    .line 2313
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    .line 2314
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    .line 2315
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->start_star:[I

    .line 2316
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->dur_star:[I

    .line 2318
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    .line 2319
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    .line 2320
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    .line 2322
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    .line 2323
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    .line 2324
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    .line 2326
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    .line 2327
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    .line 2328
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    .line 2330
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    .line 2331
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    .line 2332
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    .line 2333
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    .line 2334
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    .line 2335
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    .line 2337
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    .line 2338
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    .line 2339
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    .line 2340
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    .line 2342
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    .line 2343
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    .line 2344
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    .line 2345
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    .line 2347
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    .line 2348
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    .line 2349
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    .line 2350
    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    .line 2351
    return-void
.end method

.method private drawObjects(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 18
    .parameter

    .prologue
    .line 3499
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isPreview()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 3500
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    .line 3504
    :cond_d
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3506
    const/high16 v1, -0x4040

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, -0x3feccccd

    const/high16 v3, -0x3e10

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3507
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3511
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9b

    .line 3512
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_9b

    .line 3514
    :cond_8a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3518
    :cond_9b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_eb

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_eb

    .line 3519
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3521
    const v1, 0x3fa66666

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40e0

    const v3, -0x3e10cccd

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3522
    const v1, 0x3fe66666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3ee66666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3526
    :cond_eb
    const/high16 v8, 0x4040

    .line 3527
    const/high16 v9, 0x40c0

    .line 3530
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_107

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D8_ICE_COLD:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1eb

    .line 3533
    :cond_107
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-nez v1, :cond_52a

    .line 3535
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1eb

    .line 3537
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3538
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3540
    const/high16 v1, 0x3fc0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    add-float/2addr v1, v8

    const/high16 v2, -0x3e20

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v9, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3541
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v1, v1

    const v2, 0x3f0a3d71

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3546
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3548
    const/high16 v1, 0x3fc0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    add-float/2addr v1, v8

    const/high16 v2, -0x3e20

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v9, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3549
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v1, v1

    const v2, 0x3eb851ec

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3551
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3554
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3556
    const/high16 v1, 0x3fc0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    add-float/2addr v1, v8

    const/high16 v2, -0x3e20

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v9, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3557
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v1, v1

    const v2, -0x40f5c28f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3666
    :cond_1eb
    :goto_1eb
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_842

    .line 3668
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-nez v1, :cond_4d3

    .line 3671
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_7a3

    .line 3672
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4032

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    .line 3677
    :goto_218
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x212

    if-ge v1, v2, :cond_7b8

    .line 3678
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4026

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    .line 3683
    :goto_233
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_7d0

    .line 3684
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4022

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    .line 3689
    :goto_24e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x352

    if-ge v1, v2, :cond_7e8

    .line 3690
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4000

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    .line 3695
    :goto_269
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_7fd

    .line 3696
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4014

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    .line 3701
    :goto_284
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x438

    if-ge v1, v2, :cond_815

    .line 3702
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4020

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    .line 3707
    :goto_29f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x5aa

    if-ge v1, v2, :cond_82a

    .line 3708
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x402a

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_4:F

    .line 3714
    :goto_2ba
    const v1, 0x3ecccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3715
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3717
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x4090

    const/high16 v3, -0x3e28

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3718
    const/high16 v1, 0x4040

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3722
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3723
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3725
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, -0x3fc0

    const/high16 v3, -0x3e28

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3726
    const v1, 0x4089999a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x4089999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3730
    const v1, 0x3e99999a

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3731
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3733
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x40733333

    const/high16 v3, -0x3e30

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3734
    const v1, 0x402ccccd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x402ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3735
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3738
    const/high16 v1, 0x3f40

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3739
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3741
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, -0x3fb33333

    const/high16 v3, -0x3e30

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3742
    const/high16 v1, 0x4040

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3743
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3746
    const v1, 0x3f733333

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3747
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3749
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_4:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x4080

    const/high16 v3, -0x3e28

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3750
    const v1, 0x4089999a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x4089999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3754
    const v1, 0x3f4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3755
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3757
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x4080

    const/high16 v3, -0x3e28

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3758
    const v1, 0x4019999a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x4019999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3759
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3762
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3763
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3765
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x40733333

    const/high16 v3, -0x3e30

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3766
    const/high16 v1, 0x4020

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4020

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3769
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManyClouds:Z
    invoke-static {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$4900(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4d3

    .line 4088
    :cond_4d3
    :goto_4d3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    if-eqz v1, :cond_10a1

    .line 4090
    const/4 v1, 0x0

    :goto_4da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    array-length v2, v2

    if-ge v1, v2, :cond_10a8

    .line 4091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1081

    .line 4093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->access$5000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_527

    .line 4094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_1078

    .line 4097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v3, v3

    const v4, -0x40666666

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_offset:[F

    aget v4, v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->setFanAngle(F)V

    .line 4099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->drawWindMill(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 4090
    :cond_527
    :goto_527
    add-int/lit8 v1, v1, 0x1

    goto :goto_4da

    .line 3564
    :cond_52a
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3565
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3566
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    if-nez v1, :cond_5bd

    .line 3567
    const v1, 0x404ccccd

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40e0

    const/high16 v3, -0x3e1c

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3572
    :goto_550
    const v1, 0x3e99999a

    const v2, 0x3e99999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3576
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0xc8

    if-eqz v1, :cond_584

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5dc

    .line 3591
    :cond_584
    const/4 v1, 0x0

    :goto_585
    const/4 v2, 0x7

    if-ge v1, v2, :cond_69d

    .line 3593
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fc99999a0000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5d6

    .line 3594
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 3598
    :goto_59a
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->start_star:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3599
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 3600
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->dur_star:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x403e

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3591
    add-int/lit8 v1, v1, 0x1

    goto :goto_585

    .line 3569
    :cond_5bd
    const v1, 0x40333333

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40e0

    const/high16 v3, -0x3e1c

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_550

    .line 3596
    :cond_5d6
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    goto :goto_59a

    .line 3606
    :cond_5dc
    const/4 v1, 0x0

    move v7, v1

    :goto_5de
    const/4 v1, 0x7

    if-ge v7, v1, :cond_69d

    .line 3608
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_66d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0xc8

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->start_star:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_66d

    .line 3610
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0xc8

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->start_star:[I

    aget v2, v2, v7

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->dur_star:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_672

    .line 3611
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v1, v1, v7

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_61c

    .line 3612
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fa47ae147ae147bL

    add-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v7

    .line 3618
    :cond_61c
    :goto_61c
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_star:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_star:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e20

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3621
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->size_star:[F

    aget v2, v2, v7

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->size_star:[F

    aget v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3622
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v3, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v4, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v5, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v6, v2, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3606
    :cond_66d
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_5de

    .line 3613
    :cond_672
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0xc8

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->start_star:[I

    aget v2, v2, v7

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->dur_star:[I

    aget v3, v3, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_61c

    .line 3614
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v1, v1, v7

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_61c

    .line 3615
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fa47ae147ae147bL

    sub-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v7

    goto :goto_61c

    .line 3628
    :cond_69d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0xc8

    if-eqz v1, :cond_6ac

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_714

    .line 3630
    :cond_6ac
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6d6

    .line 3632
    const/high16 v1, 0x4110

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    .line 3633
    const/high16 v1, 0x4120

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    .line 3634
    const v1, 0x3ecccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    .line 3635
    const/4 v1, 0x0

    sput v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    .line 3636
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_a_meteor:F

    .line 3645
    :cond_6cf
    :goto_6cf
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    goto/16 :goto_1eb

    .line 3638
    :cond_6d6
    sget v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    const/16 v2, 0xc7

    if-le v1, v2, :cond_6cf

    .line 3639
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4018

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4014

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    .line 3640
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4020

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4020

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    .line 3641
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x3fc999999999999aL

    mul-double/2addr v1, v3

    double-to-float v1, v1

    const v2, 0x3e4ccccd

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    .line 3642
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_a_meteor:F

    goto :goto_6cf

    .line 3649
    :cond_714
    sget v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_720

    .line 3650
    sget v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nMeteorInitCnt:I

    .line 3652
    :cond_720
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    float-to-double v1, v1

    const-wide v3, 0x3fdccccccccccccdL

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    .line 3653
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    float-to-double v1, v1

    const-wide v3, 0x3fd3333333333333L

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    .line 3654
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    const v2, 0x3f7ae148

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    .line 3655
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_a_meteor:F

    const v2, 0x3f666666

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_a_meteor:F

    .line 3656
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3658
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_meteor:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_a_meteor:F

    const/high16 v3, -0x3e20

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3659
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_a_meteor:F

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3660
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1eb

    .line 3674
    :cond_7a3
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4040

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    goto/16 :goto_218

    .line 3680
    :cond_7b8
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x4043800000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    goto/16 :goto_233

    .line 3686
    :cond_7d0
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x4044800000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    goto/16 :goto_24e

    .line 3692
    :cond_7e8
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x404a

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    goto/16 :goto_269

    .line 3698
    :cond_7fd
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x404b800000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    goto/16 :goto_284

    .line 3704
    :cond_815
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x404d

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    goto/16 :goto_29f

    .line 3710
    :cond_82a
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x404f800000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_4:F

    goto/16 :goto_2ba

    .line 3774
    :cond_842
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D8_ICE_COLD:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_8a2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4d3

    .line 3780
    :cond_8a2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x168

    if-ge v1, v2, :cond_d27

    .line 3781
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4038

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    .line 3786
    :goto_8bd
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x44c

    if-ge v1, v2, :cond_d3c

    .line 3787
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4010

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    .line 3792
    :goto_8d8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_d51

    .line 3793
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4024

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    .line 3798
    :goto_8f3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_d66

    .line 3799
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4016

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    .line 3804
    :goto_90e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x352

    if-ge v1, v2, :cond_d7e

    .line 3805
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4004

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    .line 3810
    :goto_929
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x28a

    if-ge v1, v2, :cond_d96

    .line 3811
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x401e

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    .line 3816
    :goto_944
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x320

    if-ge v1, v2, :cond_dae

    .line 3817
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4014

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_4:F

    .line 3822
    :goto_95f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_dc6

    .line 3823
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x402e

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_5:F

    .line 3828
    :goto_97a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x6e

    if-ge v1, v2, :cond_dde

    .line 3829
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x403e

    sub-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_6:F

    .line 3833
    :goto_995
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_df3

    .line 3834
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4014

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_7:F

    .line 3840
    :goto_9b0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_e0b

    .line 3841
    const/high16 v1, 0x3e80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3844
    :goto_9bc
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3846
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40b0

    const/high16 v3, -0x3e28

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3848
    const/high16 v1, 0x4080

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x408ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3852
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_e14

    .line 3853
    const v1, 0x3e4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3856
    :goto_a0d
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3858
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x4099999a

    const v3, -0x3e25999a

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3860
    const v1, 0x40666666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x40666666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3864
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_e1d

    .line 3865
    const v1, 0x3e4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3868
    :goto_a61
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3870
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    const/high16 v3, -0x3e24

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3872
    const v1, 0x40333333

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x40333333

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3876
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_e26

    .line 3877
    const/high16 v1, 0x3e80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3880
    :goto_ab2
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3882
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x404ccccd

    const v3, -0x3e24cccd

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3884
    const v1, 0x40333333

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x404ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3888
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_e2e

    .line 3889
    const/high16 v1, 0x3e80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3892
    :goto_b05
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3894
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x40c66666

    const v3, -0x3e28cccd

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3896
    const v1, 0x408ccccd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3897
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3900
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_e37

    .line 3901
    const/high16 v1, 0x3e80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3904
    :goto_b57
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3906
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x40e66666

    const v3, -0x3e273333

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3908
    const v1, 0x4059999a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x4059999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3909
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3912
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_e40

    .line 3913
    const v1, 0x3e4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3916
    :goto_bab
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3918
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_4:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x3e4ccccd

    const v3, -0x3e233333

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3920
    const v1, 0x404ccccd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x404ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3924
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_e49

    .line 3925
    const/high16 v1, 0x3e80

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3928
    :goto_bfe
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3930
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_5:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x3e99999a

    const v3, -0x3e226666

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3932
    const v1, 0x40733333

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x40733333

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3936
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_e52

    .line 3937
    const v1, 0x3e4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3940
    :goto_c52
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3942
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_6:F

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, -0x41b33333

    const v3, -0x3e21999a

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3944
    const v1, 0x408ccccd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x408ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3945
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3948
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-eqz v1, :cond_e5b

    .line 3949
    const v1, 0x3e19999a

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 3952
    :goto_ca6
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3956
    const/high16 v1, 0x4100

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4100

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3957
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3960
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4d3

    .line 3962
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_cec

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_eba

    .line 3964
    :cond_cec
    const/4 v1, 0x0

    :goto_ced
    const/16 v2, 0x14

    if-ge v1, v2, :cond_e64

    .line 3965
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x4078600000000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3966
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3967
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4022

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3968
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 3964
    add-int/lit8 v1, v1, 0x1

    goto :goto_ced

    .line 3783
    :cond_d27
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x403a

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    goto/16 :goto_8bd

    .line 3789
    :cond_d3c
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x404b

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    goto/16 :goto_8d8

    .line 3795
    :cond_d51
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4044

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    goto/16 :goto_8f3

    .line 3801
    :cond_d66
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x4046400000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    goto/16 :goto_90e

    .line 3807
    :cond_d7e
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x404a400000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    goto/16 :goto_929

    .line 3813
    :cond_d96
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x4045400000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    goto/16 :goto_944

    .line 3819
    :cond_dae
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x4046800000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_4:F

    goto/16 :goto_95f

    .line 3825
    :cond_dc6
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x4041800000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_5:F

    goto/16 :goto_97a

    .line 3831
    :cond_dde
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4034

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_6:F

    goto/16 :goto_995

    .line 3836
    :cond_df3
    const-wide v1, -0x4066666666666666L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x4046800000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_7:F

    goto/16 :goto_9b0

    .line 3843
    :cond_e0b
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_9bc

    .line 3855
    :cond_e14
    const v1, 0x3e4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_a0d

    .line 3867
    :cond_e1d
    const v1, 0x3e4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_a61

    .line 3879
    :cond_e26
    const/high16 v1, 0x3f00

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_ab2

    .line 3891
    :cond_e2e
    const v1, 0x3f666666

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_b05

    .line 3903
    :cond_e37
    const v1, 0x3e99999a

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_b57

    .line 3915
    :cond_e40
    const v1, 0x3ecccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_bab

    .line 3927
    :cond_e49
    const v1, 0x3ecccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_bfe

    .line 3939
    :cond_e52
    const v1, 0x3e4ccccd

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_c52

    .line 3951
    :cond_e5b
    const v1, 0x3ef0a3d7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_ca6

    .line 3971
    :cond_e64
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4d3

    .line 3972
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    .line 3973
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput v3, v1, v2

    .line 3974
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    .line 3975
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 3977
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    const/4 v2, 0x1

    const/16 v3, 0xf

    aput v3, v1, v2

    .line 3978
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    const/4 v2, 0x1

    const/16 v3, 0xf

    aput v3, v1, v2

    .line 3979
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    const/4 v2, 0x1

    const/4 v3, 0x6

    aput v3, v1, v2

    .line 3980
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 3982
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    const/4 v2, 0x2

    const/16 v3, 0x14

    aput v3, v1, v2

    .line 3983
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    const/4 v2, 0x2

    const/16 v3, 0x14

    aput v3, v1, v2

    .line 3984
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    const/4 v2, 0x2

    const/4 v3, 0x7

    aput v3, v1, v2

    .line 3985
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    aput v3, v1, v2

    goto/16 :goto_4d3

    .line 3990
    :cond_eba
    const/4 v1, 0x0

    move v7, v1

    :goto_ebc
    const/16 v1, 0x14

    if-ge v7, v1, :cond_4d3

    .line 3992
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_f57

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    aget v2, v2, v7

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_f57

    .line 3994
    const/4 v3, 0x0

    .line 3995
    const/4 v2, 0x0

    .line 3996
    const/4 v1, 0x0

    .line 3998
    sget-object v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_1f8c

    .line 4049
    :goto_ee7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v4, v4, 0x190

    int-to-double v4, v4

    sget-object v6, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    aget v6, v6, v7

    int-to-double v10, v6

    sget-object v6, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    aget v6, v6, v7

    int-to-double v12, v6

    const-wide/high16 v14, 0x3fe0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    cmpg-double v4, v4, v10

    if-gez v4, :cond_fbe

    .line 4050
    const v4, 0x3f19999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3ecccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 4055
    :goto_f11
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4057
    const/high16 v4, 0x3fc0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, -0x3e30

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4058
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4060
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    aget v1, v1, v7

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1013

    .line 4062
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    if-nez v1, :cond_fcf

    .line 4063
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3990
    :cond_f57
    :goto_f57
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_ebc

    .line 4000
    :pswitch_f5c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_1:F

    .line 4001
    const/high16 v2, 0x40b0

    .line 4002
    const v1, 0x400ccccd

    .line 4003
    goto :goto_ee7

    .line 4005
    :pswitch_f66
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_2:F

    .line 4006
    const/high16 v2, 0x40c0

    .line 4007
    const/high16 v1, 0x3fc0

    .line 4008
    goto/16 :goto_ee7

    .line 4010
    :pswitch_f70
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_A_3:F

    .line 4011
    const/high16 v2, 0x4060

    .line 4012
    const v1, 0x3f99999a

    .line 4013
    goto/16 :goto_ee7

    .line 4015
    :pswitch_f7b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_1:F

    .line 4016
    const/high16 v2, 0x40d0

    .line 4017
    const/high16 v1, 0x4000

    .line 4018
    goto/16 :goto_ee7

    .line 4020
    :pswitch_f85
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_2:F

    .line 4021
    const/high16 v2, 0x4100

    .line 4022
    const v1, 0x3f99999a

    .line 4023
    goto/16 :goto_ee7

    .line 4025
    :pswitch_f90
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_3:F

    .line 4026
    const v2, 0x40b9999a

    .line 4027
    const/high16 v1, 0x3f80

    .line 4028
    goto/16 :goto_ee7

    .line 4030
    :pswitch_f9b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_4:F

    .line 4031
    const v2, 0x3fe66666

    .line 4032
    const v1, 0x3fcccccd

    .line 4033
    goto/16 :goto_ee7

    .line 4035
    :pswitch_fa7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_5:F

    .line 4036
    const v2, 0x3f4ccccd

    .line 4037
    const v1, 0x400ccccd

    .line 4038
    goto/16 :goto_ee7

    .line 4040
    :pswitch_fb3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_a_cloud_B_6:F

    .line 4041
    const/high16 v2, 0x3f00

    .line 4042
    const v1, 0x3f99999a

    .line 4043
    goto/16 :goto_ee7

    .line 4052
    :cond_fbe
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3ecccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_f11

    .line 4064
    :cond_fcf
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ff1

    .line 4065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_f57

    .line 4066
    :cond_ff1
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f57

    .line 4067
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_f57

    .line 4072
    :cond_1013
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    if-nez v1, :cond_1034

    .line 4073
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_f57

    .line 4074
    :cond_1034
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1056

    .line 4075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_f57

    .line 4076
    :cond_1056
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    aget v1, v1, v7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f57

    .line 4077
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_f57

    .line 4102
    :cond_1078
    const-string v2, "SecretWallpaper"

    const-string v3, "windmill not created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_527

    .line 4107
    :cond_1081
    const-string v2, "SecretWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windmillSet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_527

    .line 4112
    :cond_10a1
    const-string v1, "SecretWallpaper"

    const-string v2, "windmillSet null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    :cond_10a8
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4118
    const/high16 v1, -0x4040

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, -0x3f59999a

    const/high16 v3, -0x3e40

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4119
    const v1, 0x40666666

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3fe66666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    if-eqz v1, :cond_1165

    .line 4124
    const/4 v1, 0x0

    :goto_10ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    array-length v2, v2

    if-ge v1, v2, :cond_116c

    .line 4125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1146

    .line 4127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->access$5000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_113b

    .line 4128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_113e

    .line 4131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v3, v3

    const v4, -0x40666666

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_offset:[F

    aget v4, v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->setFanAngle(F)V

    .line 4133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->drawWindMill(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 4124
    :cond_113b
    :goto_113b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10ee

    .line 4136
    :cond_113e
    const-string v2, "SecretWallpaper"

    const-string v3, "windmill not created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113b

    .line 4140
    :cond_1146
    const-string v2, "SecretWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windmillSet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113b

    .line 4145
    :cond_1165
    const-string v1, "SecretWallpaper"

    const-string v2, "windmillSet null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    :cond_116c
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4150
    const/high16 v1, 0x3fc0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    const v3, 0x3f99999a

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    const v2, -0x3f333333

    const/high16 v3, -0x3e48

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4152
    const/high16 v1, 0x4060

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x404ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    if-eqz v1, :cond_1225

    .line 4157
    const/4 v1, 0x0

    :goto_11af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    array-length v2, v2

    if-ge v1, v2, :cond_122c

    .line 4158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1206

    .line 4160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->access$5000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;)I

    move-result v2

    if-nez v2, :cond_11fb

    .line 4161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_11fe

    .line 4164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v3, v3

    const v4, -0x40666666

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_offset:[F

    aget v4, v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->setFanAngle(F)V

    .line 4166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->drawWindMill(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 4157
    :cond_11fb
    :goto_11fb
    add-int/lit8 v1, v1, 0x1

    goto :goto_11af

    .line 4169
    :cond_11fe
    const-string v2, "SecretWallpaper"

    const-string v3, "windmill not created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11fb

    .line 4173
    :cond_1206
    const-string v2, "SecretWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windmillSet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11fb

    .line 4178
    :cond_1225
    const-string v1, "SecretWallpaper"

    const-string v2, "windmillSet null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    :cond_122c
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4183
    const/high16 v1, 0x3fc0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    const v3, 0x3f99999a

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    const v2, -0x3f766666

    const/high16 v3, -0x3e48

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4184
    const/high16 v1, 0x4060

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4190
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_129b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImagesetDayNight()Z

    move-result v1

    if-nez v1, :cond_129b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_129b

    .line 4195
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x3f80

    add-float/2addr v2, v1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x4348

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1409

    .line 4196
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    .line 4197
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    .line 4222
    :cond_129b
    :goto_129b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_12e6

    .line 4223
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4225
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3e60

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4227
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14b8

    .line 4228
    const v1, 0x3f333333

    const v2, 0x3f866666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4234
    :goto_12c9
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkIsDayOrNight()Z
    invoke-static {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1400(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v1

    if-eqz v1, :cond_14d1

    .line 4235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v3, 0x3f666666

    const v4, 0x3f666666

    const v5, 0x3f666666

    const v6, 0x3f333333

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4242
    :cond_12e6
    :goto_12e6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_130a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_130a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1658

    .line 4245
    :cond_130a
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4247
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3e5c

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4249
    const/high16 v1, 0x3f40

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    const v2, 0x3ff33333

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4251
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_1fa2

    .line 4264
    :goto_132f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1347

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1658

    .line 4267
    :cond_1347
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4270
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x3e60

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4271
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1521

    .line 4272
    const v1, 0x3f333333

    const v2, 0x3f8ccccd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4277
    :goto_1369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4279
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1389

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_157f

    .line 4282
    :cond_1389
    const/4 v1, 0x1

    :goto_138a
    const/16 v2, 0x8

    if-ge v1, v2, :cond_153a

    .line 4284
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x4072c00000000000L

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4049

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 4285
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x4072c00000000000L

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4049

    add-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 4287
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4020

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4010

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4288
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4290
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4020

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4010

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4291
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4293
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4294
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4282
    add-int/lit8 v1, v1, 0x1

    goto :goto_138a

    .line 4199
    :cond_1409
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x4348

    cmpg-float v1, v1, v2

    if-gez v1, :cond_129b

    .line 4201
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4202
    const v1, 0x3f19999a

    add-float/2addr v1, v8

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

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

    .line 4204
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1498

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x4320

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1498

    .line 4205
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x4320

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v3, v1

    .line 4212
    :goto_1454
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    float-to-double v4, v2

    const-wide v6, 0x3f70624dd2f1a9fcL

    mul-double/2addr v4, v6

    double-to-float v2, v4

    add-float/2addr v1, v2

    .line 4214
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v2, v1

    const v4, 0x3f19999a

    mul-float/2addr v2, v4

    const v4, 0x3f19999a

    mul-float/2addr v1, v4

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4216
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const v2, -0x41e66666

    mul-float/2addr v1, v2

    const/high16 v2, 0x428c

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 4217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-object/from16 v2, p1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_129b

    .line 4206
    :cond_1498
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v2, 0x4348

    cmpg-float v1, v1, v2

    if-gez v1, :cond_14b6

    .line 4207
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sunlight_cnt:F

    const/high16 v3, 0x4320

    sub-float/2addr v2, v3

    const/high16 v3, 0x4220

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v3, v1

    goto :goto_1454

    .line 4209
    :cond_14b6
    const/4 v3, 0x0

    goto :goto_1454

    .line 4230
    :cond_14b8
    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 4231
    const v1, 0x3f99999a

    const v2, 0x3fe66666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto/16 :goto_12c9

    .line 4237
    :cond_14d1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v3, 0x3ecccccd

    const v4, 0x3ecccccd

    const v5, 0x3ecccccd

    const v6, 0x3ecccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_12e6

    .line 4253
    :pswitch_14e8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_132f

    .line 4256
    :pswitch_14fb
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_132f

    .line 4259
    :pswitch_150e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_132f

    .line 4274
    :cond_1521
    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 4275
    const v1, 0x3f99999a

    const v2, 0x3fe66666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto/16 :goto_1369

    .line 4297
    :cond_153a
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    add-int/lit8 v3, v3, 0x14

    aput v3, v1, v2

    .line 4298
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    add-int/lit8 v3, v3, 0x37

    aput v3, v1, v2

    .line 4300
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    const/4 v2, 0x2

    const/high16 v3, -0x4040

    aput v3, v1, v2

    .line 4301
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    const/4 v2, 0x2

    const/high16 v3, -0x4080

    aput v3, v1, v2

    .line 4303
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    const/4 v2, 0x2

    const/high16 v3, 0x4040

    aput v3, v1, v2

    .line 4304
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    const/4 v2, 0x2

    const/high16 v3, -0x4100

    aput v3, v1, v2

    .line 4306
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 4307
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 4309
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    .line 4312
    :cond_157f
    const/4 v1, 0x0

    move v7, v1

    :goto_1581
    const/16 v1, 0x8

    if-ge v7, v1, :cond_1658

    .line 4314
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_15ec

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, 0x32

    if-ge v1, v2, :cond_15ec

    .line 4316
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4318
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    aget v1, v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e64

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4319
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    aget v1, v1, v7

    const v2, 0x3f19999a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    aget v2, v2, v7

    const v3, 0x4019999a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v2, v2, 0x190

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    aget v3, v3, v7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4323
    :cond_15ec
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_1653

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, 0x32

    if-ge v1, v2, :cond_1653

    .line 4324
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4326
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    aget v1, v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e64

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4327
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    aget v1, v1, v7

    const v2, 0x3f19999a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    aget v2, v2, v7

    const v3, 0x4099999a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v2, v2, 0x190

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    aget v3, v3, v7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4312
    :cond_1653
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1581

    .line 4335
    :cond_1658
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1670

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_167f

    .line 4337
    :cond_1670
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4339
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_16e2

    .line 4359
    :cond_167f
    :goto_167f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1697

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1826

    .line 4362
    :cond_1697
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18a7

    .line 4364
    const/4 v1, 0x0

    :goto_169f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->n_snow1:I

    if-ge v1, v2, :cond_1744

    .line 4365
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_172d

    .line 4366
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4038

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4140

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4370
    :goto_16be
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4030

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4100

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4372
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    rem-int/lit8 v2, v2, 0x2

    .line 4373
    if-nez v2, :cond_173d

    .line 4374
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 4364
    :goto_16df
    add-int/lit8 v1, v1, 0x1

    goto :goto_169f

    .line 4345
    :cond_16e2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, -0x3e5d999a

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4347
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1715

    .line 4348
    const v1, 0x3f333333

    const v2, 0x3f866666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4354
    :goto_1702
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_167f

    .line 4350
    :cond_1715
    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 4351
    const v1, 0x3f8ccccd

    const v2, 0x3fe66666

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto :goto_1702

    .line 4368
    :cond_172d
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4044

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x41a0

    sub-float/2addr v3, v4

    aput v3, v2, v1

    goto :goto_16be

    .line 4376
    :cond_173d
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    const/high16 v3, 0x3f00

    aput v3, v2, v1

    goto :goto_16df

    .line 4380
    :cond_1744
    const/4 v1, 0x0

    :goto_1745
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->n_snow2:I

    if-ge v1, v2, :cond_17ad

    .line 4381
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1788

    .line 4382
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4038

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4140

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4386
    :goto_1764
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4030

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4100

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4388
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    rem-int/lit8 v2, v2, 0x3

    .line 4389
    if-nez v2, :cond_1798

    .line 4390
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 4380
    :cond_1785
    :goto_1785
    add-int/lit8 v1, v1, 0x1

    goto :goto_1745

    .line 4384
    :cond_1788
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4044

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x41a0

    sub-float/2addr v3, v4

    aput v3, v2, v1

    goto :goto_1764

    .line 4391
    :cond_1798
    const/4 v3, 0x1

    if-ne v2, v3, :cond_17a3

    .line 4392
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const v3, 0x3f333333

    aput v3, v2, v1

    goto :goto_1785

    .line 4393
    :cond_17a3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1785

    .line 4394
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const/high16 v3, 0x3f00

    aput v3, v2, v1

    goto :goto_1785

    .line 4398
    :cond_17ad
    const/4 v1, 0x0

    :goto_17ae
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->n_snow3:I

    if-ge v1, v2, :cond_1821

    .line 4399
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_17f1

    .line 4400
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4038

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4140

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4404
    :goto_17cd
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4030

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x4100

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 4406
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    rem-int/lit8 v2, v2, 0x4

    .line 4407
    if-nez v2, :cond_1801

    .line 4408
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 4398
    :cond_17ee
    :goto_17ee
    add-int/lit8 v1, v1, 0x1

    goto :goto_17ae

    .line 4402
    :cond_17f1
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4044

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x41a0

    sub-float/2addr v3, v4

    aput v3, v2, v1

    goto :goto_17cd

    .line 4409
    :cond_1801
    const/4 v3, 0x1

    if-ne v2, v3, :cond_180b

    .line 4410
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const/high16 v3, 0x3f00

    aput v3, v2, v1

    goto :goto_17ee

    .line 4411
    :cond_180b
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1816

    .line 4412
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const v3, 0x3e99999a

    aput v3, v2, v1

    goto :goto_17ee

    .line 4413
    :cond_1816
    const/4 v3, 0x3

    if-ne v2, v3, :cond_17ee

    .line 4414
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const v3, 0x3e4ccccd

    aput v3, v2, v1

    goto :goto_17ee

    .line 4417
    :cond_1821
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    .line 4543
    :cond_1826
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1d21

    .line 4546
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1841

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_1d9b

    .line 4549
    :cond_1841
    const/4 v1, 0x0

    :goto_1842
    const/16 v2, 0x28

    if-ge v1, v2, :cond_1c58

    .line 4550
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4079

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 4551
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x402e

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 4552
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    double-to-int v3, v3

    rem-int/lit8 v3, v3, 0x3

    aput v3, v2, v1

    .line 4553
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4555
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    aget v2, v2, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1c38

    .line 4556
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4030

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4020

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4557
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4020

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4549
    :goto_18a4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1842

    .line 4421
    :cond_18a7
    const/4 v1, 0x0

    move v7, v1

    :goto_18a9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->n_snow1:I

    if-ge v7, v1, :cond_19ca

    .line 4423
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    aget v1, v1, v7

    const/high16 v2, -0x3f00

    cmpg-float v1, v1, v2

    if-gez v1, :cond_198d

    .line 4424
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1974

    .line 4425
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4038

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x4140

    sub-float/2addr v2, v3

    aput v2, v1, v7

    .line 4429
    :goto_18d2
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    const/high16 v2, 0x4110

    aput v2, v1, v7

    .line 4431
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    .line 4432
    if-nez v1, :cond_1985

    .line 4433
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v7

    .line 4441
    :goto_18ea
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4443
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e60

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4444
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    int-to-float v1, v1

    const v2, 0x3e666666

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 4446
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManySnows:Z
    invoke-static {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$5100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v1

    if-nez v1, :cond_1999

    .line 4447
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v1, v1, v7

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4452
    :goto_193a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_19b0

    .line 4453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const/high16 v3, 0x4000

    div-float v3, v2, v3

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const/high16 v5, 0x4000

    div-float v5, v2, v5

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4421
    :goto_196f
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_18a9

    .line 4427
    :cond_1974
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4044

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x41a0

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_18d2

    .line 4435
    :cond_1985
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    const/high16 v2, 0x3f00

    aput v2, v1, v7

    goto/16 :goto_18ea

    .line 4439
    :cond_198d
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    aget v2, v1, v7

    const v3, 0x3d23d70a

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_18ea

    .line 4449
    :cond_1999
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v1, v1, v7

    const v2, 0x3da3d70a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v2, v2, v7

    const v3, 0x3da3d70a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto :goto_193a

    .line 4455
    :cond_19b0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v3, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v4, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v5, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    aget v6, v2, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_196f

    .line 4460
    :cond_19ca
    const/4 v1, 0x0

    move v7, v1

    :goto_19cc
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->n_snow2:I

    if-ge v7, v1, :cond_1b2b

    .line 4462
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    aget v1, v1, v7

    const/high16 v2, -0x3f00

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1ac2

    .line 4463
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1a9a

    .line 4464
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4038

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x4140

    sub-float/2addr v2, v3

    aput v2, v1, v7

    .line 4468
    :goto_19f5
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    const/high16 v2, 0x4110

    aput v2, v1, v7

    .line 4470
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0x3

    .line 4471
    if-nez v1, :cond_1aab

    .line 4472
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v7

    .line 4482
    :cond_1a0d
    :goto_1a0d
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4484
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e60

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4485
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v1, v1, v7

    const v2, 0x3ca3d70a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const v3, 0x3ca3d70a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4487
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1ace

    .line 4488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const/high16 v3, 0x4000

    div-float v3, v2, v3

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const/high16 v5, 0x4000

    div-float v5, v2, v5

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v2, v2, v7

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4493
    :goto_1a78
    and-int/lit16 v1, v7, 0x111

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a95

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbManySnows:Z
    invoke-static {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$5100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a95

    .line 4494
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4496
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1ae8

    .line 4460
    :cond_1a95
    :goto_1a95
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_19cc

    .line 4466
    :cond_1a9a
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4044

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x41a0

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_19f5

    .line 4473
    :cond_1aab
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1ab7

    .line 4474
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const v2, 0x3f333333

    aput v2, v1, v7

    goto/16 :goto_1a0d

    .line 4475
    :cond_1ab7
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a0d

    .line 4476
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    const/high16 v2, 0x3f00

    aput v2, v1, v7

    goto/16 :goto_1a0d

    .line 4480
    :cond_1ac2
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    aget v2, v1, v7

    const v3, 0x3ca3d70a

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_1a0d

    .line 4490
    :cond_1ace
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v3, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v4, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v5, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    aget v6, v2, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_1a78

    .line 4498
    :cond_1ae8
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    aget v2, v2, v7

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    const/high16 v3, -0x3e58

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4499
    const v1, 0x3eb33333

    const v2, 0x3eb33333

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v3, 0x3f4ccccd

    const v4, 0x3f4ccccd

    const v5, 0x3f4ccccd

    const v6, 0x3f4ccccd

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1a95

    .line 4505
    :cond_1b2b
    const/4 v1, 0x0

    move v7, v1

    :goto_1b2d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->n_snow3:I

    if-ge v7, v1, :cond_1826

    .line 4507
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    aget v1, v1, v7

    const/high16 v2, -0x3f00

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1c12

    .line 4508
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1bde

    .line 4509
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4038

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x4140

    sub-float/2addr v2, v3

    aput v2, v1, v7

    .line 4513
    :goto_1b56
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    const/high16 v2, 0x4110

    aput v2, v1, v7

    .line 4514
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0x4

    .line 4515
    if-nez v1, :cond_1bef

    .line 4516
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v7

    .line 4528
    :cond_1b6e
    :goto_1b6e
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4530
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e60

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4531
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v1, v1, v7

    const v2, 0x3c23d70a

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const v3, 0x3c23d70a

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4533
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1c1e

    .line 4534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const/high16 v3, 0x4000

    div-float v3, v2, v3

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const/high16 v5, 0x4000

    div-float v5, v2, v5

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v2, v2, v7

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4505
    :goto_1bd9
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1b2d

    .line 4511
    :cond_1bde
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4044

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x41a0

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_1b56

    .line 4517
    :cond_1bef
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1bfa

    .line 4518
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const/high16 v2, 0x3f00

    aput v2, v1, v7

    goto/16 :goto_1b6e

    .line 4519
    :cond_1bfa
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c06

    .line 4520
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const v2, 0x3e99999a

    aput v2, v1, v7

    goto/16 :goto_1b6e

    .line 4521
    :cond_1c06
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b6e

    .line 4522
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    const v2, 0x3e4ccccd

    aput v2, v1, v7

    goto/16 :goto_1b6e

    .line 4526
    :cond_1c12
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    aget v2, v1, v7

    const v3, 0x3c23d70a

    sub-float/2addr v2, v3

    aput v2, v1, v7

    goto/16 :goto_1b6e

    .line 4536
    :cond_1c1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v3, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v4, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v5, v2, v7

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    aget v6, v2, v7

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_1bd9

    .line 4559
    :cond_1c38
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4030

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4020

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    .line 4560
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4008

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    goto/16 :goto_18a4

    .line 4564
    :cond_1c58
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d1c

    .line 4566
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v3, v3, 0x190

    add-int/lit8 v3, v3, 0x3

    aput v3, v1, v2

    .line 4567
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput v3, v1, v2

    .line 4568
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 4569
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 4570
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    aput v3, v1, v2

    .line 4571
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    const/4 v2, 0x0

    const/high16 v3, 0x4100

    aput v3, v1, v2

    .line 4573
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v3, v3, 0x190

    add-int/lit8 v3, v3, 0x7

    aput v3, v1, v2

    .line 4574
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    const/4 v2, 0x1

    const/16 v3, 0xf

    aput v3, v1, v2

    .line 4575
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 4576
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    const/4 v2, 0x1

    const v3, 0x3f333333

    aput v3, v1, v2

    .line 4577
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    const/4 v2, 0x1

    const/high16 v3, -0x3fc0

    aput v3, v1, v2

    .line 4578
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    const/4 v2, 0x1

    const/high16 v3, 0x4100

    aput v3, v1, v2

    .line 4580
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v3, v3, 0x190

    add-int/lit8 v3, v3, 0xd

    aput v3, v1, v2

    .line 4581
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    const/4 v2, 0x2

    const/16 v3, 0xc

    aput v3, v1, v2

    .line 4582
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 4583
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 4584
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    const/4 v2, 0x2

    const/high16 v3, 0x4040

    aput v3, v1, v2

    .line 4585
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    const/4 v2, 0x2

    const/high16 v3, 0x4110

    aput v3, v1, v2

    .line 4587
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v3, v3, 0x190

    add-int/lit8 v3, v3, 0x10

    aput v3, v1, v2

    .line 4588
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    const/4 v2, 0x3

    const/16 v3, 0x8

    aput v3, v1, v2

    .line 4589
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    const/4 v2, 0x3

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 4590
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 4591
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    const/4 v2, 0x3

    const/high16 v3, 0x4120

    aput v3, v1, v2

    .line 4592
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    const/4 v2, 0x3

    const/high16 v3, 0x4120

    aput v3, v1, v2

    .line 4595
    :cond_1d1c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    .line 4659
    :cond_1d21
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4660
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    if-nez v1, :cond_1f6e

    .line 4661
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1f61

    .line 4663
    const/high16 v1, -0x4040

    const v2, 0x409ccccd

    const/high16 v3, -0x3ea0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4672
    :goto_1d40
    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f00

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4675
    invoke-virtual/range {p0 .. p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isPreview()Z

    move-result v1

    if-nez v1, :cond_1d94

    .line 4677
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4678
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    if-nez v1, :cond_1f7c

    .line 4679
    const v1, 0x3fc28f5c

    const v2, 0x408b3333

    const/high16 v3, -0x3ea0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4683
    :goto_1d77
    const v1, 0x3e99999a

    const v2, 0x3e6147ae

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4696
    :cond_1d94
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setSceneDrawStatus(Z)V

    .line 4697
    return-void

    .line 4599
    :cond_1d9b
    const/4 v1, 0x0

    move v7, v1

    :goto_1d9d
    const/16 v1, 0x28

    if-ge v7, v1, :cond_1d21

    .line 4601
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_1e16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_1e16

    .line 4603
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_1ea4

    .line 4604
    const v1, 0x3f4ccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 4609
    :goto_1dda
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4611
    const/high16 v1, 0x40e0

    const/4 v2, 0x0

    const/high16 v3, -0x3e68

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4612
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1eb7

    .line 4613
    const v1, 0x3fd9999a

    const v2, 0x3f99999a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4618
    :goto_1dfd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4621
    :cond_1e16
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v2, v2, v7

    if-le v1, v2, :cond_1e9f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v2, v2, v7

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1e9f

    .line 4623
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    rem-int/lit16 v1, v1, 0x190

    int-to-double v1, v1

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    aget v3, v3, v7

    int-to-double v3, v3

    sget-object v5, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    aget v5, v5, v7

    int-to-double v5, v5

    const-wide/high16 v8, 0x3fe0

    mul-double/2addr v5, v8

    add-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1edf

    .line 4624
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    aget v1, v1, v7

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe8

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1ece

    .line 4625
    const v1, 0x3f4ccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    .line 4635
    :goto_1e68
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4637
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    aget v1, v1, v7

    const/high16 v2, 0x3fc0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    aget v2, v2, v7

    const/high16 v3, -0x3e30

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 4638
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    aget v1, v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    mul-float/2addr v1, v2

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    aget v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 4640
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_1fac

    .line 4599
    :cond_1e9f
    :goto_1e9f
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1d9d

    .line 4606
    :cond_1ea4
    const v1, 0x3e4ccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_1dda

    .line 4615
    :cond_1eb7
    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 4616
    const/high16 v1, 0x3fc0

    const/high16 v2, 0x4020

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto/16 :goto_1dfd

    .line 4627
    :cond_1ece
    const/high16 v1, 0x3f00

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto :goto_1e68

    .line 4629
    :cond_1edf
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    aget v1, v1, v7

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe8

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1efd

    .line 4630
    const v1, 0x3e99999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_1e68

    .line 4632
    :cond_1efd
    const v1, 0x3dcccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    goto/16 :goto_1e68

    .line 4642
    :pswitch_1f10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1e9f

    .line 4645
    :pswitch_1f2b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1e9f

    .line 4648
    :pswitch_1f46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fAlpha:F

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto/16 :goto_1e9f

    .line 4665
    :cond_1f61
    const/high16 v1, -0x4040

    const/high16 v2, 0x4090

    const/high16 v3, -0x3ea0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_1d40

    .line 4670
    :cond_1f6e
    const v1, -0x4059999a

    const/high16 v2, 0x4090

    const/high16 v3, -0x3ea0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_1d40

    .line 4681
    :cond_1f7c
    const v1, 0x3fd9999a

    const v2, 0x408b3333

    const/high16 v3, -0x3ea0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_1d77

    .line 3998
    nop

    :pswitch_data_1f8c
    .packed-switch 0x0
        :pswitch_f5c
        :pswitch_f66
        :pswitch_f70
        :pswitch_f7b
        :pswitch_f85
        :pswitch_f90
        :pswitch_f9b
        :pswitch_fa7
        :pswitch_fb3
    .end packed-switch

    .line 4251
    :pswitch_data_1fa2
    .packed-switch 0x0
        :pswitch_14e8
        :pswitch_14fb
        :pswitch_150e
    .end packed-switch

    .line 4640
    :pswitch_data_1fac
    .packed-switch 0x0
        :pswitch_1f10
        :pswitch_1f2b
        :pswitch_1f46
    .end packed-switch
.end method

.method private generateImages(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x19

    .line 2568
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "sky"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2569
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "sky_stars"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2571
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const-string v1, "cloud1"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2572
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const-string v1, "cloud2"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2574
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const-string v1, "logo"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    .line 2576
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;

    const-string v1, "cityname"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;

    .line 2580
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "sun1"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2581
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "sun2"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2582
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "sun3"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2583
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "sun4"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2584
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "star"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2585
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "meteor"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2586
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "moon"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2587
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "rain1"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2588
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "rain2"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2589
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "rain3"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2591
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "fog"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2593
    new-array v0, v5, [Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2594
    new-array v0, v5, [Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2595
    const/4 v0, 0x0

    :goto_a4
    if-ge v0, v5, :cond_e1

    .line 2596
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    new-instance v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raindrop1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 2597
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    new-instance v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raindrop2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 2595
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 2600
    :cond_e1
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "waterdrop"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2601
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "frost"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2602
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "snow1"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2603
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "snow2"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2604
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "snow3"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2605
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "snow4"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2607
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "nightcover"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2609
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "skyflash"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2610
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "lightning1"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2611
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "lightning2"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2612
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "lightning3"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2614
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const-string v1, "cloud_light_a01"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2615
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const-string v1, "cloud_light_a02"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2616
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const-string v1, "cloud_light_a03"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2617
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const-string v1, "cloud_light_b01"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2618
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const-string v1, "cloud_light_b02"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2619
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const-string v1, "cloud_light_b04"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    .line 2622
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "windmill_wing"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2623
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "windmill_wing_blur"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_blur:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2624
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "windmill_center_01"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2625
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "windmill_center_02"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2626
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "windmill_pillar_01"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2627
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "windmill_pillar_02"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2628
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "windmill_pillar_flip_01"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2629
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const-string v1, "windmill_pillar_flip_02"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    .line 2631
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const-string v1, "land_01"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    .line 2632
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const-string v1, "land_02"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    .line 2634
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const-string v1, "lawn_01"

    invoke-direct {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    .line 2644
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bImagesetInitialized:Z

    .line 2646
    return-void
.end method

.method private initMem()V
    .registers 14

    .prologue
    const/4 v12, 0x5

    const/16 v11, 0x14

    const/4 v10, 0x7

    const/16 v9, 0x28

    const/16 v8, 0x8

    .line 2247
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    .line 2248
    const/4 v6, 0x0

    .local v6, i:I
    :goto_f
    const/16 v0, 0xd

    if-ge v6, v0, :cond_c7

    .line 2250
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    invoke-direct {v1, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)V

    aput-object v1, v0, v6

    .line 2252
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v0, v0, v6

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mCenter:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->access$2900(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_x:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_y:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_z:[F

    aget v3, v3, v6

    const v4, 0x3dcccccd

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_scale_x:[F

    aget v4, v4, v6

    const v5, 0x3d23d70a

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_scale_y:[F

    aget v5, v5, v6

    const v7, 0x3d23d70a

    mul-float/2addr v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->setAttribute(FFFFF)V

    .line 2254
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v0, v0, v6

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mPillar:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->access$3000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_x:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_offset_x:[F

    aget v2, v2, v6

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_y:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_offset_y:[F

    aget v3, v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_z:[F

    aget v3, v3, v6

    const v4, 0x3dcccccd

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_scale_x:[F

    aget v4, v4, v6

    const v5, 0x3da3d70a

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_scale_y:[F

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->setAttribute(FFFFF)V

    .line 2256
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v0, v0, v6

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mWing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->access$3100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_x:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_y:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pos_z:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_scale_x:[F

    aget v4, v4, v6

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_scale_y:[F

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->setAttribute(FFFFF)V

    .line 2258
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_distance:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->setDistance(I)V

    .line 2259
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_type:[Z

    aget-boolean v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->setType(Z)V

    .line 2260
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_alpha:[F

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->setAlpha(F)V

    .line 2261
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmillSet:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_flip:[Z

    aget-boolean v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->setFlip(Z)V

    .line 2248
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    .line 2264
    :cond_c7
    new-array v0, v10, [Z

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    .line 2265
    new-array v0, v10, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->alpha_star:[F

    .line 2266
    new-array v0, v10, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->start_star:[I

    .line 2267
    new-array v0, v10, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->dur_star:[I

    .line 2269
    new-array v0, v12, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow1:[F

    .line 2270
    new-array v0, v12, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow1:[F

    .line 2271
    new-array v0, v12, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow1:[F

    .line 2273
    const/16 v0, 0x46

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow2:[F

    .line 2274
    const/16 v0, 0x46

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow2:[F

    .line 2275
    const/16 v0, 0x46

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow2:[F

    .line 2277
    const/16 v0, 0x96

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->x_snow3:[F

    .line 2278
    const/16 v0, 0x96

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->y_snow3:[F

    .line 2279
    const/16 v0, 0x96

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->scale_snow3:[F

    .line 2281
    new-array v0, v9, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_start:[I

    .line 2282
    new-array v0, v9, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_duration:[I

    .line 2283
    new-array v0, v9, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_num:[I

    .line 2284
    new-array v0, v9, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_scale:[F

    .line 2285
    new-array v0, v9, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_x:[F

    .line 2286
    new-array v0, v9, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->thunder_y:[F

    .line 2288
    new-array v0, v11, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_start:[I

    .line 2289
    new-array v0, v11, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_num:[I

    .line 2290
    new-array v0, v11, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_pos:[I

    .line 2291
    new-array v0, v11, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_duration:[I

    .line 2293
    new-array v0, v8, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_start:[I

    .line 2294
    new-array v0, v8, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_x:[F

    .line 2295
    new-array v0, v8, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_y:[F

    .line 2296
    new-array v0, v8, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1_scale:[F

    .line 2298
    new-array v0, v8, [I

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_start:[I

    .line 2299
    new-array v0, v8, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_x:[F

    .line 2300
    new-array v0, v8, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_y:[F

    .line 2301
    new-array v0, v8, [F

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2_scale:[F

    .line 2303
    return-void
.end method

.method private isImagesetInitialied()Z
    .registers 2

    .prologue
    .line 3197
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bImagesetInitialized:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    if-eqz v0, :cond_a

    .line 3198
    const/4 v0, 0x1

    .line 3200
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isMemInitialied()Z
    .registers 2

    .prologue
    .line 3204
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bMemoryInitialized:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->b_star_draw:[Z

    if-eqz v0, :cond_a

    .line 3205
    const/4 v0, 0x1

    .line 3207
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private loadImages(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f020026

    const v3, 0x7f020020

    const/16 v9, 0x19

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2657
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bIsEnginePaused:Z

    if-ne v0, v8, :cond_13

    .line 3140
    :goto_12
    return-void

    .line 2662
    :cond_13
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    invoke-virtual {p0, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setImageSetLoading(Z)V

    .line 2667
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_290

    .line 2669
    if-nez p4, :cond_c3

    .line 2672
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020046

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2673
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f02001f

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2674
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020025

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2675
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02000e

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2676
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02000f

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2677
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020010

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2678
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020011

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2680
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const/high16 v1, 0x7f02

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2681
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020001

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2683
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020009

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2686
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2687
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2688
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2717
    :goto_9c
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2718
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2719
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    move v0, v4

    .line 2720
    :goto_ac
    if-ge v0, v9, :cond_13f

    .line 2721
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2722
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2720
    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .line 2691
    :cond_c3
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020047

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2692
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02002d

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2694
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02002e

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2695
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02002b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2697
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2300()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2698
    if-gez v0, :cond_137

    move v1, v4

    .line 2703
    :goto_ec
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3200()[I

    move-result-object v2

    aget v3, v2, v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3300()[Z

    move-result-object v2

    aget-boolean v5, v2, v1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZZ)V

    .line 2705
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020002

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2706
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020003

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2707
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f02000a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2710
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2711
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2712
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2713
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2714
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2715
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto/16 :goto_9c

    .line 2700
    :cond_137
    const/16 v1, 0x1a

    if-le v0, v1, :cond_8be

    .line 2701
    const/16 v0, 0x1a

    move v1, v0

    goto :goto_ec

    .line 2724
    :cond_13f
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2725
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2726
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2727
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2728
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2730
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2731
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2732
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2733
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2734
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2735
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2736
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2737
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2738
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2739
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2740
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2741
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2743
    iput-boolean v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    .line 3095
    :cond_196
    :goto_196
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 3096
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020018

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3098
    :cond_1a6
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_blur:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_1b6

    .line 3099
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_blur:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020019

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3101
    :cond_1b6
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_1c6

    .line 3102
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020012

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3104
    :cond_1c6
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_1d6

    .line 3105
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020013

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3107
    :cond_1d6
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_1e6

    .line 3108
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020014

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3110
    :cond_1e6
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_1f6

    .line 3111
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020015

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3113
    :cond_1f6
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_206

    .line 3114
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020016

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3116
    :cond_206
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_216

    .line 3117
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020017

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3120
    :cond_216
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->getTextureLoaded()Z

    move-result v0

    if-nez v0, :cond_226

    .line 3121
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->logo:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f02003c

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3125
    :cond_226
    invoke-virtual {p0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->loadCityName(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3129
    invoke-virtual {p0, p3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setLoadedImageset(I)V

    .line 3130
    invoke-virtual {p0, p4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setLoadedImagesetDayNight(Z)V

    .line 3131
    invoke-virtual {p0, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setImageSetLoading(Z)V

    .line 3133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3134
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

    .line 3136
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    .line 3137
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 3138
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

    .line 2746
    :cond_290
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_2a8

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_2a8

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D8_ICE_COLD:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_489

    .line 2747
    :cond_2a8
    if-nez p4, :cond_371

    .line 2748
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_2ba

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_35b

    .line 2749
    :cond_2ba
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020048

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2754
    :goto_2c2
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_2d2

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_365

    .line 2755
    :cond_2d2
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020021

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2756
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020027

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2762
    :goto_2e2
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020004

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2763
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020001

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2764
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f02000b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2766
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2767
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2768
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2769
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2811
    :goto_30e
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_42b

    .line 2813
    if-nez p4, :cond_421

    .line 2814
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020034

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2823
    :goto_320
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2824
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2825
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2826
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2828
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2829
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2830
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    move v0, v4

    .line 2832
    :goto_344
    if-ge v0, v9, :cond_432

    .line 2833
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2834
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2832
    add-int/lit8 v0, v0, 0x1

    goto :goto_344

    .line 2751
    :cond_35b
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020046

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_2c2

    .line 2758
    :cond_365
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2759
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v5, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_2e2

    .line 2773
    :cond_371
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020047

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2775
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_3da

    .line 2776
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020021

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2777
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020027

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2783
    :goto_391
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_3e5

    .line 2784
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020045

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2789
    :goto_3a1
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020002

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2790
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020003

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2791
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f02000a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2793
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_3c9

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_3eb

    .line 2795
    :cond_3c9
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2796
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2797
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto/16 :goto_30e

    .line 2779
    :cond_3da
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2780
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v5, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto :goto_391

    .line 2786
    :cond_3e5
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto :goto_3a1

    .line 2799
    :cond_3eb
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2300()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2800
    if-gez v0, :cond_419

    move v1, v4

    .line 2805
    :goto_3f4
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3200()[I

    move-result-object v2

    aget v3, v2, v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3300()[Z

    move-result-object v2

    aget-boolean v5, v2, v1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZZ)V

    .line 2806
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02002e

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2807
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02002b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_30e

    .line 2802
    :cond_419
    const/16 v1, 0x1a

    if-le v0, v1, :cond_8bb

    .line 2803
    const/16 v0, 0x1a

    move v1, v0

    goto :goto_3f4

    .line 2816
    :cond_421
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020035

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_320

    .line 2819
    :cond_42b
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto/16 :goto_320

    .line 2836
    :cond_432
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2837
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2838
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2839
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2840
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2841
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2842
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2843
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2844
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2845
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2846
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2847
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2848
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2849
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2850
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2851
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2852
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto/16 :goto_196

    .line 2855
    :cond_489
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_5a2

    .line 2857
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v3, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2858
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v5, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2860
    if-nez p4, :cond_4fd

    .line 2861
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020049

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2862
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2864
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const/high16 v1, 0x7f02

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2865
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020001

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2866
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020009

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2877
    :goto_4c1
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001e

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2879
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2880
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001c

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2881
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001d

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    move v0, v4

    .line 2883
    :goto_4e2
    if-ge v0, v9, :cond_526

    .line 2884
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop_id_1:[I

    aget v2, v2, v0

    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2885
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop_id_2:[I

    aget v2, v2, v0

    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2883
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e2

    .line 2869
    :cond_4fd
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020048

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2870
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020045

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2872
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020002

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2873
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020003

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2874
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f02000a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto :goto_4c1

    .line 2891
    :cond_526
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2892
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2893
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2894
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2895
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2896
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2897
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2898
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2899
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2900
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2901
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2902
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2903
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2904
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2905
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2906
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2907
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2908
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2909
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2910
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2911
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2912
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2913
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2914
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2916
    iput-boolean v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    goto/16 :goto_196

    .line 2919
    :cond_5a2
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_5b2

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_726

    .line 2922
    :cond_5b2
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v3, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2923
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v5, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2925
    if-nez p4, :cond_61f

    .line 2926
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020048

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2928
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2929
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020005

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2930
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020006

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2931
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f02000c

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2947
    :goto_5e3
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_6f0

    .line 2949
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2950
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001c

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2951
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001d

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    move v0, v4

    .line 2953
    :goto_604
    if-ge v0, v9, :cond_656

    .line 2954
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop_id_1:[I

    aget v2, v2, v0

    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2955
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop_id_2:[I

    aget v2, v2, v0

    invoke-virtual {v1, p1, p2, v2, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2953
    add-int/lit8 v0, v0, 0x1

    goto :goto_604

    .line 2934
    :cond_61f
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020047

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2936
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_650

    .line 2937
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020045

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2942
    :goto_637
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020007

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2943
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020008

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2944
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f02000d

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto :goto_5e3

    .line 2939
    :cond_650
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    goto :goto_637

    .line 2958
    :cond_656
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001e

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2960
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2977
    :goto_663
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020030

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2978
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020031

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2979
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020032

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2980
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020033

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 2983
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2984
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2985
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2986
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2987
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2988
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2989
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2991
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2992
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2993
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2994
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2995
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2996
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2997
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2998
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2999
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3000
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3001
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3002
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3004
    iput-boolean v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    .line 3005
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_196

    .line 3006
    iput-boolean v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    goto/16 :goto_196

    .line 2964
    :cond_6f0
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2965
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2966
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    move v0, v4

    .line 2968
    :goto_700
    if-ge v0, v9, :cond_717

    .line 2969
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2970
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2968
    add-int/lit8 v0, v0, 0x1

    goto :goto_700

    .line 2973
    :cond_717
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 2974
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02002f

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_663

    .line 3010
    :cond_726
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_736

    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_196

    .line 3012
    :cond_736
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_819

    .line 3013
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020021

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3014
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020027

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3015
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3017
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3018
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3019
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3020
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3021
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3022
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3024
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3025
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3026
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3028
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3029
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3030
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3052
    :goto_78f
    if-nez p4, :cond_88d

    .line 3053
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020048

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3054
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3056
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020004

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3057
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020001

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3059
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f02000b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3071
    :goto_7b6
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3072
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3073
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3074
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sun4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3075
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->star:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3076
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->meteor:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3077
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->moon:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3078
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->waterdrop:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3079
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->frost:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3080
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3081
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3082
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3083
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->snow4:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3084
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_stars:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3085
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->fog:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    invoke-virtual {v0, p1, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    move v0, v4

    .line 3087
    :goto_802
    if-ge v0, v9, :cond_8b7

    .line 3088
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop1:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3089
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->raindrop2:[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->deleteGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3087
    add-int/lit8 v0, v0, 0x1

    goto :goto_802

    .line 3032
    :cond_819
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3033
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    invoke-virtual {v0, p1, p2, v5, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3034
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky_flash:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020039

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3036
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020022

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3037
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020023

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3038
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_a_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020024

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3039
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020028

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3040
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f020029

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3041
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cloud_light_b_03:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;

    const v1, 0x7f02002a

    invoke-virtual {v0, p1, p2, v1, v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToTwo;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3043
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001b

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3044
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001c

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3045
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->rain3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f02001d

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3047
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020036

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3048
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning2:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020037

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3049
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lightning3:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020038

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_78f

    .line 3061
    :cond_88d
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->sky:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020047

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3062
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->nightcover:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    const v1, 0x7f020045

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3064
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020002

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3065
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->land_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f020003

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3067
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->lawn_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;

    const v1, 0x7f02000a

    invoke-virtual {v0, p1, p2, v1, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToFour;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    goto/16 :goto_7b6

    .line 3091
    :cond_8b7
    iput-boolean v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    goto/16 :goto_196

    :cond_8bb
    move v1, v0

    goto/16 :goto_3f4

    :cond_8be
    move v1, v0

    goto/16 :goto_ec
.end method


# virtual methods
.method public getLoadedImageset()I
    .registers 2

    .prologue
    .line 3181
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLoadedImageset:I
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3600(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I

    move-result v0

    return v0
.end method

.method public getLoadedImagesetDayNight()Z
    .registers 2

    .prologue
    .line 3189
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLoadedImagesetDayNight:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3700(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v0

    return v0
.end method

.method public getSceneDrawStatus()Z
    .registers 2

    .prologue
    .line 4775
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bSceneReady:Z

    return v0
.end method

.method public isEnginePaused()Z
    .registers 2

    .prologue
    .line 4786
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bIsEnginePaused:Z

    return v0
.end method

.method public isImageSetLoading()Z
    .registers 2

    .prologue
    .line 3193
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbImageSetLoading:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v0

    return v0
.end method

.method public isPreview()Z
    .registers 2

    .prologue
    .line 4923
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsPreview:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2200(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v0

    return v0
.end method

.method public loadCityName(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xeb

    .line 3146
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadImage-CITY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/InfoTextView;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x400

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/InfoTextView;-><init>(Landroid/content/Context;II)V

    .line 3148
    const/16 v1, 0xa0

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/InfoTextView;->setTextColor(I)V

    .line 3149
    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/InfoTextView;->setTextSize(F)V

    .line 3150
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/InfoTextView$eFontStyle;->FONT_STYLE_DROIDSANS_BOLD:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/InfoTextView$eFontStyle;

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/InfoTextView;->setTextFont(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/InfoTextView$eFontStyle;)V

    .line 3151
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/InfoTextView;->setTextGravity(I)V

    .line 3154
    const/16 v1, 0x320

    const/16 v2, 0x1e

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2700()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/InfoTextView;->GetBitmapWithText(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3402(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3156
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->cityname:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3400()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/RectOneToSixteen;->loadGLTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 3157
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3212
    sget-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bIsEnginePaused:Z

    if-ne v0, v4, :cond_7

    .line 3287
    :cond_6
    :goto_6
    return-void

    .line 3219
    :cond_7
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mbImgLoaded:Z

    if-nez v0, :cond_2c

    .line 3220
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mbImgLoaded:Z

    .line 3262
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isImageSetLoading()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3266
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 3267
    const/16 v0, 0x303

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 3272
    :try_start_1d
    invoke-direct {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->drawObjects(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 3273
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_ec

    .line 3280
    :goto_23
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_f2

    .line 3281
    iput v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    goto :goto_6

    .line 3223
    :cond_2c
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isPreview()Z

    move-result v0

    if-ne v0, v4, :cond_37

    .line 3225
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setPreviewWeather()V

    .line 3228
    :cond_37
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3800()Z

    move-result v0

    if-ne v0, v4, :cond_cd

    .line 3231
    const-string v0, "SecretWallpaper"

    const-string v1, "onDrawFrame: LIVE !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isImageSetLoading()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 3236
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded imageset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / Cur weather: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v1

    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkIsDayOrNight()Z
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1400(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->loadImages(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)V

    .line 3239
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CUR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v2

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   LOAD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->values()[Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    const-wide/16 v0, 0x64

    :try_start_bb
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_df

    .line 3247
    :goto_be
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->getLoadedImageset()I

    move-result v0

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v1

    if-ne v0, v1, :cond_e4

    .line 3248
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v0, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setImageSetChange(Z)V

    .line 3255
    :cond_cd
    :goto_cd
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3900()Z

    move-result v0

    if-ne v0, v4, :cond_d

    .line 3256
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->loadCityName(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    .line 3258
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v0, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setCityNameChange(Z)V

    goto/16 :goto_d

    .line 3244
    :catch_df
    move-exception v0

    .line 3245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_be

    .line 3250
    :cond_e4
    const-string v0, "SecretWallpaper"

    const-string v1, "Loaded imageset & Current Weather are different"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 3274
    :catch_ec
    move-exception v0

    .line 3275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_23

    .line 3283
    :cond_f2
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mFrameCnt:I

    goto/16 :goto_6
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x500

    const/16 v1, 0x2d0

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4713
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isPreview()Z

    move-result v0

    if-ne v0, v4, :cond_10

    .line 4714
    iput v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F

    .line 4717
    :cond_10
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mOrientation:I
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2800(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I

    move-result v0

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->preOrientation:I

    .line 4719
    if-ne p2, v2, :cond_1c

    if-eq p3, v1, :cond_20

    :cond_1c
    if-ne p2, v1, :cond_66

    if-ne p3, v2, :cond_66

    .line 4720
    :cond_20
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    .line 4725
    :goto_22
    const-string v0, "SecretWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGED mbSurfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getSurfaceCreated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1300()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_69

    .line 4729
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bClearOn:Z

    .line 4749
    :cond_5a
    :goto_5a
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-nez v0, :cond_d7

    .line 4750
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GL11Ext not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4722
    :cond_66
    iput-boolean v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->m1280x720:Z

    goto :goto_22

    .line 4730
    :cond_69
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D2_CLOUDY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_5a

    .line 4732
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D3_DREARY:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_5a

    .line 4734
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D4_FOG:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_5a

    .line 4736
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D5_RAIN_SHOWERS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_9c

    .line 4737
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    goto :goto_5a

    .line 4738
    :cond_9c
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D6_THUNDERSTORMS:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_ab

    .line 4739
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bThunderOn:Z

    goto :goto_5a

    .line 4740
    :cond_ab
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D7_FLURRIES_SNOW:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_ba

    .line 4741
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    goto :goto_5a

    .line 4742
    :cond_ba
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D8_ICE_COLD:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_5a

    .line 4744
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1800()I

    move-result v0

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D9_SLEET:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5a

    .line 4745
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bSnowOn:Z

    .line 4746
    iput-boolean v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bRainOn:Z

    goto :goto_5a

    .line 4754
    :cond_d7
    if-ge p2, p3, :cond_fc

    .line 4755
    iput v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    .line 4760
    :goto_db
    invoke-interface {p1, v5, v5, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 4761
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 4762
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4763
    const/high16 v0, 0x4234

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    const v2, 0x3dcccccd

    const/high16 v3, 0x4220

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 4764
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 4765
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 4767
    return-void

    .line 4757
    :cond_fc
    const v0, 0x3fd9999a

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F

    goto :goto_db
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const v5, 0x47012f00

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 4790
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setSceneDrawStatus(Z)V

    .line 4793
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4794
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4796
    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mOrientation:I
    invoke-static {v1, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2802(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I

    .line 4798
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 4799
    sput-boolean v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bGLES11:Z

    .line 4802
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 4803
    const/16 v0, 0x2801

    const/high16 v1, 0x4618

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 4804
    const/16 v0, 0x2800

    const v1, 0x46180400

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 4805
    const/16 v0, 0x2802

    invoke-interface {p1, v2, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 4806
    const/16 v0, 0x2803

    invoke-interface {p1, v2, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 4808
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 4809
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 4810
    const/high16 v0, 0x41f0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 4811
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 4812
    const/16 v0, 0x203

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 4813
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 4814
    const/16 v0, 0xc53

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 4816
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 4818
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isPreview()Z

    move-result v0

    if-ne v0, v4, :cond_92

    .line 4819
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1802(I)I

    .line 4827
    :cond_76
    :goto_76
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isMemInitialied()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 4828
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->initMem()V

    .line 4829
    :cond_7f
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isImagesetInitialied()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 4830
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$700(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->generateImages(Landroid/content/Context;)V

    .line 4832
    :cond_8e
    invoke-static {v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setSurfaceCreated(Z)V

    .line 4833
    return-void

    .line 4822
    :cond_92
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->preOrientation:I

    sget-object v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mOrientation:I
    invoke-static {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2800(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I

    move-result v1

    if-ne v0, v1, :cond_76

    .line 4823
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v0, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setImageSetChange(Z)V

    goto :goto_76
.end method

.method public onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4927
    const-string v0, "SecretWallpaper"

    const-string v1, "DESTROYED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4928
    invoke-virtual {p0, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setSceneDrawStatus(Z)V

    .line 4929
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setSurfaceCreated(Z)V

    .line 4930
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter

    .prologue
    .line 4841
    .line 4916
    return-void
.end method

.method public release()V
    .registers 8

    .prologue
    .line 4700
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isImagesetInitialied()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4701
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->deleteImages(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 4702
    :cond_b
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->isMemInitialied()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4703
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->deleteMem()V

    .line 4705
    :cond_14
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4706
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    .line 4707
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 4708
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

    .line 4709
    return-void
.end method

.method public setEnginePause(Z)V
    .registers 2
    .parameter "bFlag"

    .prologue
    .line 4783
    sput-boolean p1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bIsEnginePaused:Z

    .line 4784
    return-void
.end method

.method public setImageSetLoading(Z)V
    .registers 3
    .parameter "bLoading"

    .prologue
    .line 3173
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbImageSetLoading:Z
    invoke-static {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3502(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z

    .line 3174
    return-void
.end method

.method public setIsPreview(Z)V
    .registers 3
    .parameter "bPreview"

    .prologue
    .line 4919
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsPreview:Z
    invoke-static {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2202(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z

    .line 4920
    return-void
.end method

.method public setLoadedImageset(I)V
    .registers 3
    .parameter "nWeather"

    .prologue
    .line 3177
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLoadedImageset:I
    invoke-static {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3602(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I

    .line 3178
    return-void
.end method

.method public setLoadedImagesetDayNight(Z)V
    .registers 3
    .parameter "bNight"

    .prologue
    .line 3185
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mLoadedImagesetDayNight:Z
    invoke-static {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$3702(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z

    .line 3186
    return-void
.end method

.method public setSceneDrawStatus(Z)V
    .registers 2
    .parameter "bFlag"

    .prologue
    .line 4779
    sput-boolean p1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->bSceneReady:Z

    .line 4780
    return-void
.end method

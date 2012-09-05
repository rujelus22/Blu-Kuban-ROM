.class public final Lcom/cooliris/media/StringTexture$Config;
.super Ljava/lang/Object;
.source "StringTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/StringTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# static fields
.field public static final DEFAULT_CONFIG_SCALED:Lcom/cooliris/media/StringTexture$Config;

.field public static final DEFAULT_CONFIG_TRUNCATED:Lcom/cooliris/media/StringTexture$Config;


# instance fields
.field public a:F

.field public b:F

.field public bold:Z

.field public fontSize:F

.field public g:F

.field public height:I

.field public italic:Z

.field public overflowMode:I

.field public r:F

.field public shadowRadius:I

.field public sizeMode:I

.field public strikeThrough:Z

.field public underline:Z

.field public width:I

.field public xalignment:I

.field public yalignment:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 284
    new-instance v0, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/cooliris/media/StringTexture$Config;->DEFAULT_CONFIG_SCALED:Lcom/cooliris/media/StringTexture$Config;

    .line 286
    new-instance v0, Lcom/cooliris/media/StringTexture$Config;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cooliris/media/StringTexture$Config;-><init>(I)V

    sput-object v0, Lcom/cooliris/media/StringTexture$Config;->DEFAULT_CONFIG_TRUNCATED:Lcom/cooliris/media/StringTexture$Config;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 322
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 290
    iput v1, p0, Lcom/cooliris/media/StringTexture$Config;->r:F

    .line 292
    iput v1, p0, Lcom/cooliris/media/StringTexture$Config;->g:F

    .line 294
    iput v1, p0, Lcom/cooliris/media/StringTexture$Config;->b:F

    .line 296
    iput v1, p0, Lcom/cooliris/media/StringTexture$Config;->a:F

    .line 298
    sget v0, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->shadowRadius:I

    .line 300
    iput-boolean v2, p0, Lcom/cooliris/media/StringTexture$Config;->underline:Z

    .line 302
    iput-boolean v2, p0, Lcom/cooliris/media/StringTexture$Config;->bold:Z

    .line 304
    iput-boolean v2, p0, Lcom/cooliris/media/StringTexture$Config;->italic:Z

    .line 306
    iput-boolean v2, p0, Lcom/cooliris/media/StringTexture$Config;->strikeThrough:Z

    .line 308
    const/16 v0, 0x100

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->width:I

    .line 311
    const/16 v0, 0x28

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->height:I

    .line 313
    const/4 v0, 0x1

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    .line 315
    const/4 v0, 0x5

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->yalignment:I

    .line 317
    iput v3, p0, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    .line 319
    iput v3, p0, Lcom/cooliris/media/StringTexture$Config;->overflowMode:I

    .line 323
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6
    .parameter "sizeMode"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 325
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 290
    iput v1, p0, Lcom/cooliris/media/StringTexture$Config;->r:F

    .line 292
    iput v1, p0, Lcom/cooliris/media/StringTexture$Config;->g:F

    .line 294
    iput v1, p0, Lcom/cooliris/media/StringTexture$Config;->b:F

    .line 296
    iput v1, p0, Lcom/cooliris/media/StringTexture$Config;->a:F

    .line 298
    sget v0, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->shadowRadius:I

    .line 300
    iput-boolean v2, p0, Lcom/cooliris/media/StringTexture$Config;->underline:Z

    .line 302
    iput-boolean v2, p0, Lcom/cooliris/media/StringTexture$Config;->bold:Z

    .line 304
    iput-boolean v2, p0, Lcom/cooliris/media/StringTexture$Config;->italic:Z

    .line 306
    iput-boolean v2, p0, Lcom/cooliris/media/StringTexture$Config;->strikeThrough:Z

    .line 308
    const/16 v0, 0x100

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->width:I

    .line 311
    const/16 v0, 0x28

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->height:I

    .line 313
    const/4 v0, 0x1

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    .line 315
    const/4 v0, 0x5

    iput v0, p0, Lcom/cooliris/media/StringTexture$Config;->yalignment:I

    .line 317
    iput v3, p0, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    .line 319
    iput v3, p0, Lcom/cooliris/media/StringTexture$Config;->overflowMode:I

    .line 326
    iput p1, p0, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    .line 327
    return-void
.end method

.class Lcom/android/wallpaper/fall/FallRS$WorldState;
.super Ljava/lang/Object;
.source "FallRS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/fall/FallRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorldState"
.end annotation


# instance fields
.field public frameCount:I

.field public glHeight:F

.field public glWidth:F

.field public height:I

.field public isPreview:I

.field public meshHeight:I

.field public meshWidth:I

.field public rippleIndex:I

.field public rotate:I

.field public skySpeedX:F

.field public skySpeedY:F

.field public width:I

.field public xOffset:F


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/lifevibes/videoeditor/VideoEditorImpl$CodecConfig;
.super Ljava/lang/Object;
.source "VideoEditorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/videoeditor/VideoEditorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecConfig"
.end annotation


# static fields
.field private static TNDecConfigAccurateMode:Ljava/lang/String;

.field private static TNDecConfigFastMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const-string v0, "UNDEFINED"

    sput-object v0, Lcom/lifevibes/videoeditor/VideoEditorImpl$CodecConfig;->TNDecConfigAccurateMode:Ljava/lang/String;

    .line 92
    const-string v0, "NXPSWVDEC"

    sput-object v0, Lcom/lifevibes/videoeditor/VideoEditorImpl$CodecConfig;->TNDecConfigFastMode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCodecCofig()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 95
    .local v0, str:[Ljava/lang/String;
    const/4 v1, 0x0

    sget-object v2, Lcom/lifevibes/videoeditor/VideoEditorImpl$CodecConfig;->TNDecConfigAccurateMode:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 96
    const/4 v1, 0x1

    sget-object v2, Lcom/lifevibes/videoeditor/VideoEditorImpl$CodecConfig;->TNDecConfigFastMode:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 97
    return-object v0
.end method

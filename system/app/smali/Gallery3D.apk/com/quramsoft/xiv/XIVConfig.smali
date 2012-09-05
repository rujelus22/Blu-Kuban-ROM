.class public Lcom/quramsoft/xiv/XIVConfig;
.super Ljava/lang/Object;
.source "XIVConfig.java"


# static fields
.field public static isDebugMode:Z

.field public static isEnabled:Z

.field public static isUseRotateAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    .line 7
    sput-boolean v1, Lcom/quramsoft/xiv/XIVConfig;->isEnabled:Z

    .line 14
    sput-boolean v1, Lcom/quramsoft/xiv/XIVConfig;->isUseRotateAnimation:Z

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

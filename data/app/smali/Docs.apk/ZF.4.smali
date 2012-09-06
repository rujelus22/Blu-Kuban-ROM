.class public final enum LZF;
.super Ljava/lang/Enum;
.source "OcrImageEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LZF;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LZF;

.field private static final synthetic a:[LZF;

.field public static final enum b:LZF;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, LZF;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, LZF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZF;->a:LZF;

    new-instance v0, LZF;

    const-string v1, "BLURRED"

    invoke-direct {v0, v1, v3}, LZF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZF;->b:LZF;

    const/4 v0, 0x2

    new-array v0, v0, [LZF;

    sget-object v1, LZF;->a:LZF;

    aput-object v1, v0, v2

    sget-object v1, LZF;->b:LZF;

    aput-object v1, v0, v3

    sput-object v0, LZF;->a:[LZF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LZF;
    .registers 2
    .parameter

    .prologue
    .line 38
    const-class v0, LZF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LZF;

    return-object v0
.end method

.method public static values()[LZF;
    .registers 1

    .prologue
    .line 38
    sget-object v0, LZF;->a:[LZF;

    invoke-virtual {v0}, [LZF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZF;

    return-object v0
.end method

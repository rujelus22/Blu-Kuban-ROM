.class public final enum Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;
.super Ljava/lang/Enum;
.source "StrokeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/base/StrokeList$Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

.field public static final enum BETWEEN:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

.field public static final enum MAXIMUM:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

.field public static final enum MINIMUM:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

.field public static final enum RENDERED:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

.field public static final enum STROKES:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

.field public static final enum VELOCITY:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    new-instance v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    const-string v1, "STROKES"

    invoke-direct {v0, v1, v3}, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->STROKES:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    new-instance v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    const-string v1, "MINIMUM"

    invoke-direct {v0, v1, v4}, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->MINIMUM:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    new-instance v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    const-string v1, "MAXIMUM"

    invoke-direct {v0, v1, v5}, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->MAXIMUM:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    new-instance v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    const-string v1, "BETWEEN"

    invoke-direct {v0, v1, v6}, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->BETWEEN:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    new-instance v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    const-string v1, "VELOCITY"

    invoke-direct {v0, v1, v7}, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->VELOCITY:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    new-instance v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    const-string v1, "RENDERED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->RENDERED:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    sget-object v1, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->STROKES:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->MINIMUM:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->MAXIMUM:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->BETWEEN:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->VELOCITY:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->RENDERED:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->$VALUES:[Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;
    .registers 2
    .parameter "name"

    .prologue
    .line 130
    const-class v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    return-object v0
.end method

.method public static values()[Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;
    .registers 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->$VALUES:[Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    invoke-virtual {v0}, [Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    return-object v0
.end method

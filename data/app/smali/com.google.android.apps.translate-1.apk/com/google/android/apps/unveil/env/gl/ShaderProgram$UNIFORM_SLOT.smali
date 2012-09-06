.class public final enum Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;
.super Ljava/lang/Enum;
.source "ShaderProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/gl/ShaderProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UNIFORM_SLOT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

.field public static final enum COLOR:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

.field public static final enum DISTORTION:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

.field public static final enum PVMATRIX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

.field public static final enum TEX_MATRIX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

.field public static final enum TEX_OES:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

.field public static final enum TEX_UV:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

.field public static final enum TEX_Y:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    const-string v1, "PVMATRIX"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->PVMATRIX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    const-string v1, "TEX_MATRIX"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_MATRIX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    const-string v1, "TEX_OES"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_OES:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    const-string v1, "DISTORTION"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->DISTORTION:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    const-string v1, "TEX_Y"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_Y:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    const-string v1, "TEX_UV"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_UV:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    const-string v1, "COLOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->COLOR:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->PVMATRIX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_MATRIX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_OES:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->DISTORTION:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_Y:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->TEX_UV:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->COLOR:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->$VALUES:[Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;
    .registers 2
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->$VALUES:[Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    return-object v0
.end method

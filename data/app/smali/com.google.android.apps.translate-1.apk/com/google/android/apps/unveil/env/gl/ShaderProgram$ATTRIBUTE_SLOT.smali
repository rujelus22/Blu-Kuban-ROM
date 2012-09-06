.class public final enum Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;
.super Ljava/lang/Enum;
.source "ShaderProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/gl/ShaderProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ATTRIBUTE_SLOT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

.field public static final enum COLOR:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

.field public static final enum TEXUV:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

.field public static final enum VERTEX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    const-string v1, "VERTEX"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->VERTEX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->COLOR:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    const-string v1, "TEXUV"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->TEXUV:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->VERTEX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->COLOR:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->TEXUV:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->$VALUES:[Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;
    .registers 2
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->$VALUES:[Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    return-object v0
.end method

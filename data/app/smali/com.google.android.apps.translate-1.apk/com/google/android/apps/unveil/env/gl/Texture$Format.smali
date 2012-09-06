.class public final enum Lcom/google/android/apps/unveil/env/gl/Texture$Format;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/gl/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/env/gl/Texture$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/env/gl/Texture$Format;

.field public static final enum LUMINANCE:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

.field public static final enum LUMINANCE_ALPHA:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

.field public static final enum RGB:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

.field public static final enum RGBA:Lcom/google/android/apps/unveil/env/gl/Texture$Format;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    const-string v1, "LUMINANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/gl/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->LUMINANCE:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    const-string v1, "LUMINANCE_ALPHA"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/env/gl/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->LUMINANCE_ALPHA:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    const-string v1, "RGB"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/unveil/env/gl/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->RGB:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    new-instance v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    const-string v1, "RGBA"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/unveil/env/gl/Texture$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->RGBA:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->LUMINANCE:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->LUMINANCE_ALPHA:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->RGB:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->RGBA:Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->$VALUES:[Lcom/google/android/apps/unveil/env/gl/Texture$Format;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/gl/Texture$Format;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/env/gl/Texture$Format;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->$VALUES:[Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/env/gl/Texture$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/env/gl/Texture$Format;

    return-object v0
.end method

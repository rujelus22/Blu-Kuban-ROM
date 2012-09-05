.class final enum Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;
.super Ljava/lang/Enum;
.source "SubTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/SubTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TextureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

.field public static final enum IMAGE:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

.field public static final enum TEXT:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;->TEXT:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;->IMAGE:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;->TEXT:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;->IMAGE:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;->$VALUES:[Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;
    .registers 2
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;->$VALUES:[Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    invoke-virtual {v0}, [Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    return-object v0
.end method

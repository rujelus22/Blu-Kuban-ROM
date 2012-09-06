.class public final enum Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;
.super Ljava/lang/Enum;
.source "DefaultHttpRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType; = null

.field public static final HEADER_NAME:Ljava/lang/String; = "Content-Type"

.field public static final enum PROTOBUF:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

.field public static final enum URL_ENCODED:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;


# instance fields
.field public final typeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    const-string v1, "PROTOBUF"

    const-string v2, "application/x-protobuffer"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->PROTOBUF:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    const-string v1, "URL_ENCODED"

    const-string v2, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->URL_ENCODED:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    sget-object v1, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->PROTOBUF:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->URL_ENCODED:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->$VALUES:[Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "typeString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-object p3, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->typeString:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;
    .registers 2
    .parameter "name"

    .prologue
    .line 126
    const-class v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;
    .registers 1

    .prologue
    .line 126
    sget-object v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->$VALUES:[Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    return-object v0
.end method

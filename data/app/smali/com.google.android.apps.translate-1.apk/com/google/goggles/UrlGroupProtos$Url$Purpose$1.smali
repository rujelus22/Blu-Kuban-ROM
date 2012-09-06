.class final Lcom/google/goggles/UrlGroupProtos$Url$Purpose$1;
.super Ljava/lang/Object;
.source "UrlGroupProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/google/goggles/UrlGroupProtos$Url$Purpose;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
    .registers 3
    .parameter

    .prologue
    .line 109
    invoke-static {p1}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->valueOf(I)Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose$1;->findValueByNumber(I)Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    move-result-object v0

    return-object v0
.end method

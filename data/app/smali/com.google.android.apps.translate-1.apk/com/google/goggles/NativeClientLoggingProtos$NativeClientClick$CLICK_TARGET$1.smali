.class final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET$1;
.super Ljava/lang/Object;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;
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
        "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;
    .registers 3
    .parameter

    .prologue
    .line 424
    invoke-static {p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;->valueOf(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET$1;->findValueByNumber(I)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick$CLICK_TARGET;

    move-result-object v0

    return-object v0
.end method

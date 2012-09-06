.class final Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp$1;
.super Ljava/lang/Object;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
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
        "Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    .registers 3
    .parameter

    .prologue
    .line 1970
    invoke-static {p1}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->valueOf(I)Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter

    .prologue
    .line 1968
    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp$1;->findValueByNumber(I)Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    move-result-object v0

    return-object v0
.end method

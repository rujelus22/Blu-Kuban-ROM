.class final Lcom/google/goggles/TracingProtos$TraceAction$Type$1;
.super Ljava/lang/Object;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$TraceAction$Type;
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
        "Lcom/google/goggles/TracingProtos$TraceAction$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/goggles/TracingProtos$TraceAction$Type;
    .registers 3
    .parameter

    .prologue
    .line 1034
    invoke-static {p1}, Lcom/google/goggles/TracingProtos$TraceAction$Type;->valueOf(I)Lcom/google/goggles/TracingProtos$TraceAction$Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter

    .prologue
    .line 1032
    invoke-virtual {p0, p1}, Lcom/google/goggles/TracingProtos$TraceAction$Type$1;->findValueByNumber(I)Lcom/google/goggles/TracingProtos$TraceAction$Type;

    move-result-object v0

    return-object v0
.end method

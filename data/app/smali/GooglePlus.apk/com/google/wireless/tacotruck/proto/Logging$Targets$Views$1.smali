.class final Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views$1;
.super Ljava/lang/Object;
.source "Logging.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
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
        "Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter "x0"

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views$1;->findValueByNumber(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 3
    .parameter "number"

    .prologue
    .line 289
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v0

    return-object v0
.end method
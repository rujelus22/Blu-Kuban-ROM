.class final Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus$1;
.super Ljava/lang/Object;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
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
        "Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter "x0"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus$1;->findValueByNumber(I)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
    .registers 3
    .parameter "number"

    .prologue
    .line 177
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->valueOf(I)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    move-result-object v0

    return-object v0
.end method

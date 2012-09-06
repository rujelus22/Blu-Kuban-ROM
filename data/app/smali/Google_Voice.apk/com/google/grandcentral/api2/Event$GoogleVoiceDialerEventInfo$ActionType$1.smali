.class final Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType$1;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
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
        "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    .registers 3
    .parameter "number"

    .prologue
    .line 437
    invoke-static {p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->valueOf(I)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter "x0"

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType$1;->findValueByNumber(I)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    move-result-object v0

    return-object v0
.end method

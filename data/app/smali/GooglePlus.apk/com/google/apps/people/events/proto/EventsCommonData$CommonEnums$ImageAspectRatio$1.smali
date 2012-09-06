.class final Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio$1;
.super Ljava/lang/Object;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
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
        "Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
    .registers 3
    .parameter "number"

    .prologue
    .line 1681
    invoke-static {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->valueOf(I)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1679
    invoke-virtual {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio$1;->findValueByNumber(I)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    move-result-object v0

    return-object v0
.end method

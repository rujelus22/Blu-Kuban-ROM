.class final Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType$1;
.super Ljava/lang/Object;
.source "HangoutInviteNotification.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
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
        "Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;
    .registers 3
    .parameter "number"

    .prologue
    .line 180
    invoke-static {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;->valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter "x0"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType$1;->findValueByNumber(I)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$HangoutType;

    move-result-object v0

    return-object v0
.end method

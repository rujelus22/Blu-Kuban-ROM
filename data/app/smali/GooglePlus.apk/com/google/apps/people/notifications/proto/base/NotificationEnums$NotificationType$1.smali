.class final Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType$1;
.super Ljava/lang/Object;
.source "NotificationEnums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
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
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .registers 3
    .parameter "number"

    .prologue
    .line 311
    invoke-static {p1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter "x0"

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType$1;->findValueByNumber(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v0

    return-object v0
.end method
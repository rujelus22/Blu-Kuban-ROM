.class public interface abstract Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications$MessageQuery;
.super Ljava/lang/Object;
.source "RealTimeChatNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "author_first_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "author_full_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "conversation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "conversation_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "generated_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "conversation_group"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "conversation_pending_accept"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "inviter_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "inviter_first_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "inviter_full_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications$MessageQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

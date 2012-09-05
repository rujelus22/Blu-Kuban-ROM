.class public interface abstract Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationQuery;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConversationQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 82
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "conversation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_muted"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "is_group"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latest_message_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "generated_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "avatar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "avatar_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "latest_message_text"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "latest_message_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "latest_message_author_full_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "latest_message_author_first_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "latest_message_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_pending_accept"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "inviter_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "inviter_first_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

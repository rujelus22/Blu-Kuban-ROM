.class public interface abstract Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationQuery;
.super Ljava/lang/Object;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ConversationActivity;
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
    .line 112
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "conversation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "is_muted"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_group"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "generated_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "first_event_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "earliest_event_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fatal_error_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

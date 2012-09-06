.class public final Lcom/google/api/services/plusi/model/HangoutConsumer;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "HangoutConsumer.java"


# instance fields
.field public attendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/EmbedsPerson;",
            ">;"
        }
    .end annotation
.end field

.field public isBroadcastInvite:Ljava/lang/Boolean;

.field public name:Ljava/lang/String;

.field public preferredLanguage:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public startContext:Lcom/google/api/services/plusi/model/HangoutStartContext;

.field public status:Ljava/lang/String;

.field public topicMaybeNsfw:Ljava/lang/Boolean;

.field public totalAttendeeCount:Ljava/lang/Integer;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method

.class public final enum Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
.super Ljava/lang/Enum;
.source "MessageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/xmpp/MessageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/xmpp/MessageReader$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

.field public static final enum AUTHENTICATION_FAILED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

.field public static final enum AUTHENTICATION_REQUIRED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

.field public static final enum AUTHENTICATION_SUCCEEDED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

.field public static final enum DATA_RECEIVED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

.field public static final enum END_OF_STREAM:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

.field public static final enum JID_AVAILABLE:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

.field public static final enum PROCEED_WITH_TLS:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

.field public static final enum STREAM_READY:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

.field public static final enum TLS_REQUIRED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

.field public static final enum UNEXPECTED_FEATURES:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    const-string v1, "UNEXPECTED_FEATURES"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->UNEXPECTED_FEATURES:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 25
    new-instance v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    const-string v1, "END_OF_STREAM"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->END_OF_STREAM:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 26
    new-instance v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    const-string v1, "TLS_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->TLS_REQUIRED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 27
    new-instance v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    const-string v1, "PROCEED_WITH_TLS"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->PROCEED_WITH_TLS:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 28
    new-instance v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    const-string v1, "AUTHENTICATION_REQUIRED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->AUTHENTICATION_REQUIRED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 29
    new-instance v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    const-string v1, "AUTHENTICATION_SUCCEEDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->AUTHENTICATION_SUCCEEDED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 30
    new-instance v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    const-string v1, "AUTHENTICATION_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->AUTHENTICATION_FAILED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 31
    new-instance v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    const-string v1, "STREAM_READY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->STREAM_READY:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 32
    new-instance v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    const-string v1, "JID_AVAILABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->JID_AVAILABLE:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 33
    new-instance v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    const-string v1, "DATA_RECEIVED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->DATA_RECEIVED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    sget-object v1, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->UNEXPECTED_FEATURES:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->END_OF_STREAM:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->TLS_REQUIRED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->PROCEED_WITH_TLS:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->AUTHENTICATION_REQUIRED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->AUTHENTICATION_SUCCEEDED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->AUTHENTICATION_FAILED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->STREAM_READY:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->JID_AVAILABLE:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->DATA_RECEIVED:Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->$VALUES:[Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/xmpp/MessageReader$Event;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->$VALUES:[Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    return-object v0
.end method

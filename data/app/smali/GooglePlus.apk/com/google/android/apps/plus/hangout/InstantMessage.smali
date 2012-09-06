.class final Lcom/google/android/apps/plus/hangout/InstantMessage;
.super Ljava/lang/Object;
.source "InstantMessage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final from:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private final fromMucJid:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-class v0, Lcom/google/android/apps/plus/hangout/InstantMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/InstantMessage;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "from"
    .parameter "fromMucJid"
    .parameter "message"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/InstantMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_19

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_19
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/InstantMessage;->from:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 15
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/InstantMessage;->fromMucJid:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/InstantMessage;->message:Ljava/lang/String;

    .line 17
    return-void
.end method

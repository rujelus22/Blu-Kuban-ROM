.class Lcom/google/android/apps/plus/hangout/HangoutActivity$HangoutParticipantPresenceListener;
.super Ljava/lang/Object;
.source "HangoutActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HangoutParticipantPresenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$HangoutParticipantPresenceListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutActivity;Lcom/google/android/apps/plus/hangout/HangoutActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutActivity$HangoutParticipantPresenceListener;-><init>(Lcom/google/android/apps/plus/hangout/HangoutActivity;)V

    return-void
.end method


# virtual methods
.method public onParticipantPresenceChanged()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$HangoutParticipantPresenceListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutActivity;->displayParticipantsInTray()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->access$000(Lcom/google/android/apps/plus/hangout/HangoutActivity;)V

    .line 43
    return-void
.end method

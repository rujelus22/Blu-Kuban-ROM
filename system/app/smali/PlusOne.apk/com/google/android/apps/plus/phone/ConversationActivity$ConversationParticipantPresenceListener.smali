.class Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationParticipantPresenceListener;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationParticipantPresenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/phone/ConversationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationParticipantPresenceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/android/apps/plus/phone/ConversationActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationParticipantPresenceListener;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method public onParticipantPresenceChanged()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationParticipantPresenceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->displayParticipantsInTray()V

    .line 168
    return-void
.end method

.class public Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
.super Ljava/lang/Object;
.source "SmsConversationOutbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationData"
.end annotation


# instance fields
.field public conversationId:Ljava/lang/String;

.field public pendingSmses:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;

.field public state:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

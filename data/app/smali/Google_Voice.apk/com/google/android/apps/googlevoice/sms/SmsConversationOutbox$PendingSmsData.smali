.class public Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;
.super Ljava/lang/Object;
.source "SmsConversationOutbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingSmsData"
.end annotation


# instance fields
.field public exceptionStatus:Ljava/lang/Integer;

.field public messageId:Ljava/lang/String;

.field public phoneCall:[B

.field public requestId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

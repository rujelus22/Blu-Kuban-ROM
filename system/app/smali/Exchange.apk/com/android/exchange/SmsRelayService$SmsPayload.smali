.class Lcom/android/exchange/SmsRelayService$SmsPayload;
.super Ljava/lang/Object;
.source "SmsRelayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SmsRelayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsPayload"
.end annotation


# instance fields
.field mMessages:[Landroid/telephony/SmsMessage;

.field final synthetic this$0:Lcom/android/exchange/SmsRelayService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SmsRelayService;[Landroid/telephony/SmsMessage;)V
    .registers 3
    .parameter
    .parameter "messages"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/exchange/SmsRelayService$SmsPayload;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/exchange/SmsRelayService$SmsPayload;->mMessages:[Landroid/telephony/SmsMessage;

    .line 43
    return-void
.end method

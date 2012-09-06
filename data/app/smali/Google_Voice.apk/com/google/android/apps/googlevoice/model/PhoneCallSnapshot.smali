.class public final Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
.super Ljava/lang/Object;
.source "PhoneCallSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot$1;,
        Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot$TimestampComparator;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final contact:Ljava/lang/String;

.field public final conversationId:Ljava/lang/String;

.field public final messageId:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final timestamp:J

.field public final type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot$TimestampComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot$TimestampComparator;-><init>(Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot$1;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V
    .registers 5
    .parameter "phoneCall"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->conversationId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->messageId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v0

    .line 37
    .local v0, contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->toStringNullEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    .line 38
    if-nez v0, :cond_36

    const-string v1, ""

    :goto_23
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->phoneNumber:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getTextForPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->toStringNullEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->text:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    .line 42
    return-void

    .line 38
    :cond_36
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->toStringNullEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "type"
    .parameter "contact"
    .parameter "phoneNumber"
    .parameter "text"
    .parameter "timestamp"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->conversationId:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->messageId:Ljava/lang/String;

    .line 48
    invoke-static {p3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 49
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->phoneNumber:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->text:Ljava/lang/String;

    .line 52
    iput-wide p7, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    if-ne p0, p1, :cond_5

    .line 64
    :cond_4
    :goto_4
    return v1

    .line 60
    :cond_5
    instance-of v3, p1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    if-nez v3, :cond_b

    move v1, v2

    .line 61
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .line 64
    .local v0, other:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-wide v3, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    iget-wide v5, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_56

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->conversationId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->conversationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->messageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->ordinal()I

    move-result v3

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_56

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->phoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->text:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_56
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 75
    const/16 v0, 0x1f

    .line 76
    .local v0, prime:I
    const/4 v1, 0x1

    .line 77
    .local v1, result:I
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    if-nez v2, :cond_45

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    .line 78
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->phoneNumber:Ljava/lang/String;

    if-nez v2, :cond_4c

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    .line 79
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->conversationId:Ljava/lang/String;

    if-nez v2, :cond_53

    move v2, v3

    :goto_1b
    add-int v1, v4, v2

    .line 80
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->messageId:Ljava/lang/String;

    if-nez v2, :cond_5a

    move v2, v3

    :goto_24
    add-int v1, v4, v2

    .line 81
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->text:Ljava/lang/String;

    if-nez v2, :cond_61

    move v2, v3

    :goto_2d
    add-int v1, v4, v2

    .line 82
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    iget-wide v6, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 83
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-nez v4, :cond_68

    :goto_42
    add-int v1, v2, v3

    .line 84
    return v1

    .line 77
    :cond_45
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 78
    :cond_4c
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_12

    .line 79
    :cond_53
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->conversationId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1b

    .line 80
    :cond_5a
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->messageId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_24

    .line 81
    :cond_61
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2d

    .line 83
    :cond_68
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->hashCode()I

    move-result v3

    goto :goto_42
.end method

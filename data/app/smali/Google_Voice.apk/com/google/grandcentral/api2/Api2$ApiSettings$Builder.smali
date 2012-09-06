.class public final Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSettingsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiSettings;",
        "Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiSettingsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private callPresentationEnabled_:Z

.field private clearSmsVmailNotifications_:Z

.field private defaultGreetingId_:I

.field private doNotDisturb_:Z

.field private emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

.field private emailNotificationEnabled_:Z

.field private forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

.field private forwardingPhone_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;",
            ">;"
        }
    .end annotation
.end field

.field private gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

.field private greeting_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGreeting;",
            ">;"
        }
    .end annotation
.end field

.field private maxForwardingPhones_:I

.field private screenBehavior_:I

.field private smsInSubjectOfNotificationEnabled_:Z

.field private smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

.field private smsToEmailEnabled_:Z

.field private smsVmailNotification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

.field private temporaryForwardingPhone_:Ljava/lang/Object;

.field private useDidAsCallerId_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 11796
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12117
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    .line 12182
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 12247
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 12312
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 12386
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    .line 12517
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 12654
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    .line 12743
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    .line 12808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->callPresentationEnabled_:Z

    .line 12829
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    .line 11797
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->maybeForceBuilderInitialization()V

    .line 11798
    return-void
.end method

.method static synthetic access$13200()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 1

    .prologue
    .line 11791
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 1

    .prologue
    .line 11803
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEmailNotificationAddressIsMutable()V
    .registers 3

    .prologue
    .line 12119
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 12120
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    .line 12121
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12123
    :cond_16
    return-void
.end method

.method private ensureForwardingPhoneIsMutable()V
    .registers 3

    .prologue
    .line 12389
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 12390
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    .line 12391
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12393
    :cond_17
    return-void
.end method

.method private ensureForwardingPhoneNameIsMutable()V
    .registers 3

    .prologue
    .line 12249
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 12250
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 12251
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12253
    :cond_16
    return-void
.end method

.method private ensureGaiaEmailAddressIsMutable()V
    .registers 3

    .prologue
    .line 12745
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_17

    .line 12746
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    .line 12747
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12749
    :cond_17
    return-void
.end method

.method private ensureGreetingIsMutable()V
    .registers 4

    .prologue
    const/high16 v2, 0x1

    .line 12832
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_15

    .line 12833
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    .line 12834
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12836
    :cond_15
    return-void
.end method

.method private ensureSmsNotificationPhoneNameIsMutable()V
    .registers 3

    .prologue
    .line 12184
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 12185
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 12186
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12188
    :cond_16
    return-void
.end method

.method private ensureSmsVmailNotificationIsMutable()V
    .registers 3

    .prologue
    .line 12657
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_17

    .line 12658
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    .line 12659
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12661
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 11801
    return-void
.end method


# virtual methods
.method public addAllEmailNotificationAddress(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;"
        }
    .end annotation

    .prologue
    .line 12159
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureEmailNotificationAddressIsMutable()V

    .line 12160
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12162
    return-object p0
.end method

.method public addAllForwardingPhone(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;"
        }
    .end annotation

    .prologue
    .line 12456
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneIsMutable()V

    .line 12457
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12459
    return-object p0
.end method

.method public addAllForwardingPhoneName(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;"
        }
    .end annotation

    .prologue
    .line 12289
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneNameIsMutable()V

    .line 12290
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12292
    return-object p0
.end method

.method public addAllGaiaEmailAddress(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;"
        }
    .end annotation

    .prologue
    .line 12785
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGaiaEmailAddressIsMutable()V

    .line 12786
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12788
    return-object p0
.end method

.method public addAllGreeting(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiGreeting;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;"
        }
    .end annotation

    .prologue
    .line 12899
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiGreeting;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGreetingIsMutable()V

    .line 12900
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12902
    return-object p0
.end method

.method public addAllSmsNotificationPhoneName(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;"
        }
    .end annotation

    .prologue
    .line 12224
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsNotificationPhoneNameIsMutable()V

    .line 12225
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12227
    return-object p0
.end method

.method public addAllSmsVmailNotification(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;"
        }
    .end annotation

    .prologue
    .line 12724
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsVmailNotificationIsMutable()V

    .line 12725
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12727
    return-object p0
.end method

.method public addEmailNotificationAddress(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12149
    if-nez p1, :cond_8

    .line 12150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12152
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureEmailNotificationAddressIsMutable()V

    .line 12153
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12155
    return-object p0
.end method

.method public addEmailNotificationAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12172
    if-nez p1, :cond_8

    .line 12173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12175
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureEmailNotificationAddressIsMutable()V

    .line 12176
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 12178
    return-object p0
.end method

.method public addForwardingPhone(ILcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12449
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneIsMutable()V

    .line 12450
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12452
    return-object p0
.end method

.method public addForwardingPhone(ILcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12432
    if-nez p2, :cond_8

    .line 12433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12435
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneIsMutable()V

    .line 12436
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12438
    return-object p0
.end method

.method public addForwardingPhone(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 12442
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneIsMutable()V

    .line 12443
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12445
    return-object p0
.end method

.method public addForwardingPhone(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12422
    if-nez p1, :cond_8

    .line 12423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12425
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneIsMutable()V

    .line 12426
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12428
    return-object p0
.end method

.method public addForwardingPhoneName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12279
    if-nez p1, :cond_8

    .line 12280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12282
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneNameIsMutable()V

    .line 12283
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12285
    return-object p0
.end method

.method public addForwardingPhoneNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12302
    if-nez p1, :cond_8

    .line 12303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12305
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneNameIsMutable()V

    .line 12306
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 12308
    return-object p0
.end method

.method public addGaiaEmailAddress(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12775
    if-nez p1, :cond_8

    .line 12776
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12778
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGaiaEmailAddressIsMutable()V

    .line 12779
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12781
    return-object p0
.end method

.method public addGaiaEmailAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12798
    if-nez p1, :cond_8

    .line 12799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12801
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGaiaEmailAddressIsMutable()V

    .line 12802
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 12804
    return-object p0
.end method

.method public addGreeting(ILcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12892
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGreetingIsMutable()V

    .line 12893
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12895
    return-object p0
.end method

.method public addGreeting(ILcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12875
    if-nez p2, :cond_8

    .line 12876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12878
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGreetingIsMutable()V

    .line 12879
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12881
    return-object p0
.end method

.method public addGreeting(Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 12885
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGreetingIsMutable()V

    .line 12886
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12888
    return-object p0
.end method

.method public addGreeting(Lcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12865
    if-nez p1, :cond_8

    .line 12866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12868
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGreetingIsMutable()V

    .line 12869
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12871
    return-object p0
.end method

.method public addSmsNotificationPhoneName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12214
    if-nez p1, :cond_8

    .line 12215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12217
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsNotificationPhoneNameIsMutable()V

    .line 12218
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 12220
    return-object p0
.end method

.method public addSmsNotificationPhoneNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12237
    if-nez p1, :cond_8

    .line 12238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12240
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsNotificationPhoneNameIsMutable()V

    .line 12241
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 12243
    return-object p0
.end method

.method public addSmsVmailNotification(ILcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12717
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsVmailNotificationIsMutable()V

    .line 12718
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12720
    return-object p0
.end method

.method public addSmsVmailNotification(ILcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12700
    if-nez p2, :cond_8

    .line 12701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12703
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsVmailNotificationIsMutable()V

    .line 12704
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12706
    return-object p0
.end method

.method public addSmsVmailNotification(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 12710
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsVmailNotificationIsMutable()V

    .line 12711
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12713
    return-object p0
.end method

.method public addSmsVmailNotification(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12690
    if-nez p1, :cond_8

    .line 12691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12693
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsVmailNotificationIsMutable()V

    .line 12694
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12696
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 3

    .prologue
    .line 11858
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    .line 11859
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiSettings;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 11860
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11862
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 10

    .prologue
    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 11866
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 11867
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiSettings;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11868
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11869
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 11870
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    .line 11872
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11874
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13402(Lcom/google/grandcentral/api2/Api2$ApiSettings;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 11875
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_43

    .line 11876
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 11878
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11880
    :cond_43
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13502(Lcom/google/grandcentral/api2/Api2$ApiSettings;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 11881
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5e

    .line 11882
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 11884
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11886
    :cond_5e
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13602(Lcom/google/grandcentral/api2/Api2$ApiSettings;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 11887
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6b

    .line 11888
    or-int/lit8 v2, v2, 0x1

    .line 11890
    :cond_6b
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhone_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13702(Lcom/google/grandcentral/api2/Api2$ApiSettings;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11891
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_78

    .line 11892
    or-int/lit8 v2, v2, 0x2

    .line 11894
    :cond_78
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->doNotDisturb_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->doNotDisturb_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13802(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z

    .line 11895
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_93

    .line 11896
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    .line 11897
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11899
    :cond_93
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13902(Lcom/google/grandcentral/api2/Api2$ApiSettings;Ljava/util/List;)Ljava/util/List;

    .line 11900
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_a0

    .line 11901
    or-int/lit8 v2, v2, 0x4

    .line 11903
    :cond_a0
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->screenBehavior_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->screenBehavior_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14002(Lcom/google/grandcentral/api2/Api2$ApiSettings;I)I

    .line 11904
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_ad

    .line 11905
    or-int/lit8 v2, v2, 0x8

    .line 11907
    :cond_ad
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->useDidAsCallerId_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->useDidAsCallerId_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14102(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z

    .line 11908
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_ba

    .line 11909
    or-int/lit8 v2, v2, 0x10

    .line 11911
    :cond_ba
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14202(Lcom/google/grandcentral/api2/Api2$ApiSettings;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11912
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_c7

    .line 11913
    or-int/lit8 v2, v2, 0x20

    .line 11915
    :cond_c7
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->maxForwardingPhones_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->maxForwardingPhones_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14302(Lcom/google/grandcentral/api2/Api2$ApiSettings;I)I

    .line 11916
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_d4

    .line 11917
    or-int/lit8 v2, v2, 0x40

    .line 11919
    :cond_d4
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationEnabled_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14402(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z

    .line 11920
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_e1

    .line 11921
    or-int/lit16 v2, v2, 0x80

    .line 11923
    :cond_e1
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsToEmailEnabled_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsToEmailEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14502(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z

    .line 11924
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_ee

    .line 11925
    or-int/lit16 v2, v2, 0x100

    .line 11927
    :cond_ee
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsInSubjectOfNotificationEnabled_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsInSubjectOfNotificationEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14602(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z

    .line 11928
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_109

    .line 11929
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    .line 11930
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11932
    :cond_109
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14702(Lcom/google/grandcentral/api2/Api2$ApiSettings;Ljava/util/List;)Ljava/util/List;

    .line 11933
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_125

    .line 11934
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    .line 11936
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x4001

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11938
    :cond_125
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14802(Lcom/google/grandcentral/api2/Api2$ApiSettings;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 11939
    and-int v3, v0, v5

    if-ne v3, v5, :cond_130

    .line 11940
    or-int/lit16 v2, v2, 0x200

    .line 11942
    :cond_130
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->callPresentationEnabled_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->callPresentationEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14902(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z

    .line 11943
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_14a

    .line 11944
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    .line 11945
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v4, -0x10001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11947
    :cond_14a
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$15002(Lcom/google/grandcentral/api2/Api2$ApiSettings;Ljava/util/List;)Ljava/util/List;

    .line 11948
    and-int v3, v0, v7

    if-ne v3, v7, :cond_155

    .line 11949
    or-int/lit16 v2, v2, 0x400

    .line 11951
    :cond_155
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->defaultGreetingId_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->defaultGreetingId_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$15102(Lcom/google/grandcentral/api2/Api2$ApiSettings;I)I

    .line 11952
    and-int v3, v0, v8

    if-ne v3, v8, :cond_160

    .line 11953
    or-int/lit16 v2, v2, 0x800

    .line 11955
    :cond_160
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearSmsVmailNotifications_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->clearSmsVmailNotifications_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$15202(Lcom/google/grandcentral/api2/Api2$ApiSettings;Z)Z

    .line 11956
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$15302(Lcom/google/grandcentral/api2/Api2$ApiSettings;I)I

    .line 11957
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 11807
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11808
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    .line 11809
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11810
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 11811
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11812
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 11813
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11814
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 11815
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11816
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->doNotDisturb_:Z

    .line 11817
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11818
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    .line 11819
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11820
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->screenBehavior_:I

    .line 11821
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11822
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->useDidAsCallerId_:Z

    .line 11823
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11824
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 11825
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11826
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->maxForwardingPhones_:I

    .line 11827
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11828
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationEnabled_:Z

    .line 11829
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11830
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsToEmailEnabled_:Z

    .line 11831
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11832
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsInSubjectOfNotificationEnabled_:Z

    .line 11833
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11834
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    .line 11835
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11836
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    .line 11837
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->callPresentationEnabled_:Z

    .line 11839
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11840
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    .line 11841
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11842
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->defaultGreetingId_:I

    .line 11843
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11844
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearSmsVmailNotifications_:Z

    .line 11845
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11846
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCallPresentationEnabled()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3

    .prologue
    .line 12822
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->callPresentationEnabled_:Z

    .line 12825
    return-object p0
.end method

.method public clearClearSmsVmailNotifications()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3

    .prologue
    .line 12953
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearSmsVmailNotifications_:Z

    .line 12956
    return-object p0
.end method

.method public clearDefaultGreetingId()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3

    .prologue
    .line 12932
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12933
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->defaultGreetingId_:I

    .line 12935
    return-object p0
.end method

.method public clearDoNotDisturb()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12379
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->doNotDisturb_:Z

    .line 12382
    return-object p0
.end method

.method public clearEmailNotificationAddress()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12165
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    .line 12166
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12168
    return-object p0
.end method

.method public clearEmailNotificationEnabled()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12605
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationEnabled_:Z

    .line 12608
    return-object p0
.end method

.method public clearForwardingPhone()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12462
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    .line 12463
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12465
    return-object p0
.end method

.method public clearForwardingPhoneName()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12295
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 12296
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12298
    return-object p0
.end method

.method public clearGaiaEmailAddress()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12791
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    .line 12792
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12794
    return-object p0
.end method

.method public clearGreeting()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3

    .prologue
    .line 12905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    .line 12906
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12908
    return-object p0
.end method

.method public clearMaxForwardingPhones()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12584
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12585
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->maxForwardingPhones_:I

    .line 12587
    return-object p0
.end method

.method public clearScreenBehavior()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12489
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12490
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->screenBehavior_:I

    .line 12492
    return-object p0
.end method

.method public clearSmsInSubjectOfNotificationEnabled()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12647
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsInSubjectOfNotificationEnabled_:Z

    .line 12650
    return-object p0
.end method

.method public clearSmsNotificationPhoneName()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12230
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 12231
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12233
    return-object p0
.end method

.method public clearSmsToEmailEnabled()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12626
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsToEmailEnabled_:Z

    .line 12629
    return-object p0
.end method

.method public clearSmsVmailNotification()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12730
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    .line 12731
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12733
    return-object p0
.end method

.method public clearTemporaryForwardingPhone()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12348
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12349
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getTemporaryForwardingPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 12351
    return-object p0
.end method

.method public clearTemporaryForwardingPhoneFormatted()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12553
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12554
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getTemporaryForwardingPhoneFormatted()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 12556
    return-object p0
.end method

.method public clearUseDidAsCallerId()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 2

    .prologue
    .line 12510
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->useDidAsCallerId_:Z

    .line 12513
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3

    .prologue
    .line 11850
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 11791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 11791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallPresentationEnabled()Z
    .registers 2

    .prologue
    .line 12813
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->callPresentationEnabled_:Z

    return v0
.end method

.method public getClearSmsVmailNotifications()Z
    .registers 2

    .prologue
    .line 12944
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearSmsVmailNotifications_:Z

    return v0
.end method

.method public getDefaultGreetingId()I
    .registers 2

    .prologue
    .line 12923
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->defaultGreetingId_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2

    .prologue
    .line 11854
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 11791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11791
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDoNotDisturb()Z
    .registers 2

    .prologue
    .line 12370
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->doNotDisturb_:Z

    return v0
.end method

.method public getEmailNotificationAddress(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12132
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEmailNotificationAddressBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 12136
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEmailNotificationAddressCount()I
    .registers 2

    .prologue
    .line 12129
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEmailNotificationAddressList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12126
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEmailNotificationEnabled()Z
    .registers 2

    .prologue
    .line 12596
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationEnabled_:Z

    return v0
.end method

.method public getForwardingPhone(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 3
    .parameter "index"

    .prologue
    .line 12402
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public getForwardingPhoneCount()I
    .registers 2

    .prologue
    .line 12399
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getForwardingPhoneList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12396
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingPhoneName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12262
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getForwardingPhoneNameBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 12266
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingPhoneNameCount()I
    .registers 2

    .prologue
    .line 12259
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getForwardingPhoneNameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12256
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaEmailAddress(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12758
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaEmailAddressBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 12762
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaEmailAddressCount()I
    .registers 2

    .prologue
    .line 12755
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getGaiaEmailAddressList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12752
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGreeting(I)Lcom/google/grandcentral/api2/Api2$ApiGreeting;
    .registers 3
    .parameter "index"

    .prologue
    .line 12845
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    return-object v0
.end method

.method public getGreetingCount()I
    .registers 2

    .prologue
    .line 12842
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGreetingList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGreeting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12839
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxForwardingPhones()I
    .registers 2

    .prologue
    .line 12575
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->maxForwardingPhones_:I

    return v0
.end method

.method public getScreenBehavior()I
    .registers 2

    .prologue
    .line 12480
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->screenBehavior_:I

    return v0
.end method

.method public getSmsInSubjectOfNotificationEnabled()Z
    .registers 2

    .prologue
    .line 12638
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsInSubjectOfNotificationEnabled_:Z

    return v0
.end method

.method public getSmsNotificationPhoneName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 12197
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSmsNotificationPhoneNameBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 12201
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSmsNotificationPhoneNameCount()I
    .registers 2

    .prologue
    .line 12194
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSmsNotificationPhoneNameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12191
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSmsToEmailEnabled()Z
    .registers 2

    .prologue
    .line 12617
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsToEmailEnabled_:Z

    return v0
.end method

.method public getSmsVmailNotification(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 3
    .parameter "index"

    .prologue
    .line 12670
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    return-object v0
.end method

.method public getSmsVmailNotificationCount()I
    .registers 2

    .prologue
    .line 12667
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSmsVmailNotificationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12664
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTemporaryForwardingPhone()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12317
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 12318
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12319
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12320
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 12323
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getTemporaryForwardingPhoneBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12328
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 12329
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12330
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12332
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 12335
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getTemporaryForwardingPhoneFormatted()Ljava/lang/String;
    .registers 4

    .prologue
    .line 12522
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 12523
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 12524
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12525
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 12528
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getTemporaryForwardingPhoneFormattedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12533
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 12534
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12535
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12537
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 12540
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getUseDidAsCallerId()Z
    .registers 2

    .prologue
    .line 12501
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->useDidAsCallerId_:Z

    return v0
.end method

.method public hasCallPresentationEnabled()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 12810
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasClearSmsVmailNotifications()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 12941
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDefaultGreetingId()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 12920
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDoNotDisturb()Z
    .registers 3

    .prologue
    .line 12367
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEmailNotificationEnabled()Z
    .registers 3

    .prologue
    .line 12593
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMaxForwardingPhones()Z
    .registers 3

    .prologue
    .line 12572
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasScreenBehavior()Z
    .registers 3

    .prologue
    .line 12477
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSmsInSubjectOfNotificationEnabled()Z
    .registers 3

    .prologue
    .line 12635
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSmsToEmailEnabled()Z
    .registers 3

    .prologue
    .line 12614
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTemporaryForwardingPhone()Z
    .registers 3

    .prologue
    .line 12314
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTemporaryForwardingPhoneFormatted()Z
    .registers 3

    .prologue
    .line 12519
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUseDidAsCallerId()Z
    .registers 3

    .prologue
    .line 12498
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 12076
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getForwardingPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 12077
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getForwardingPhone(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 12094
    :cond_12
    :goto_12
    return v1

    .line 12076
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12082
    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getSmsVmailNotificationCount()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 12083
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getSmsVmailNotification(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 12082
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 12088
    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getGreetingCount()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 12089
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->getGreeting(I)Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiGreeting;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 12088
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 12094
    :cond_3e
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 11961
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12072
    :cond_6
    :goto_6
    return-object p0

    .line 11962
    :cond_7
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13400(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 11963
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_183

    .line 11964
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13400(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    .line 11965
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11972
    :cond_25
    :goto_25
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13500(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 11973
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_191

    .line 11974
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13500(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 11975
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11982
    :cond_43
    :goto_43
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13600(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 11983
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 11984
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13600(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    .line 11985
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11992
    :cond_61
    :goto_61
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasTemporaryForwardingPhone()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 11993
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 11994
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhone_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13700(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 11997
    :cond_73
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasDoNotDisturb()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 11998
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDoNotDisturb()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setDoNotDisturb(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 12000
    :cond_80
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13900(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 12001
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 12002
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13900(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    .line 12003
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12010
    :cond_9e
    :goto_9e
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasScreenBehavior()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 12011
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getScreenBehavior()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setScreenBehavior(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 12013
    :cond_ab
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasUseDidAsCallerId()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 12014
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getUseDidAsCallerId()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setUseDidAsCallerId(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 12016
    :cond_b8
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasTemporaryForwardingPhoneFormatted()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 12017
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12018
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14200(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 12021
    :cond_ca
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasMaxForwardingPhones()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 12022
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getMaxForwardingPhones()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setMaxForwardingPhones(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 12024
    :cond_d7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasEmailNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 12025
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getEmailNotificationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setEmailNotificationEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 12027
    :cond_e4
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasSmsToEmailEnabled()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 12028
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getSmsToEmailEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setSmsToEmailEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 12030
    :cond_f1
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasSmsInSubjectOfNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 12031
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getSmsInSubjectOfNotificationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setSmsInSubjectOfNotificationEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 12033
    :cond_fe
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14700(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11c

    .line 12034
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 12035
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14700(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    .line 12036
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12043
    :cond_11c
    :goto_11c
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14800(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13a

    .line 12044
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 12045
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14800(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    .line 12046
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12053
    :cond_13a
    :goto_13a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasCallPresentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 12054
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getCallPresentationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setCallPresentationEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 12056
    :cond_147
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$15000(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_167

    .line 12057
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 12058
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$15000(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    .line 12059
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12066
    :cond_167
    :goto_167
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasDefaultGreetingId()Z

    move-result v0

    if-eqz v0, :cond_174

    .line 12067
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultGreetingId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setDefaultGreetingId(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 12069
    :cond_174
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->hasClearSmsVmailNotifications()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12070
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getClearSmsVmailNotifications()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->setClearSmsVmailNotifications(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    goto/16 :goto_6

    .line 11967
    :cond_183
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureEmailNotificationAddressIsMutable()V

    .line 11968
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13400(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_25

    .line 11977
    :cond_191
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsNotificationPhoneNameIsMutable()V

    .line 11978
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13500(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_43

    .line 11987
    :cond_19f
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneNameIsMutable()V

    .line 11988
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13600(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_61

    .line 12005
    :cond_1ad
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneIsMutable()V

    .line 12006
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->forwardingPhone_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$13900(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9e

    .line 12038
    :cond_1bb
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsVmailNotificationIsMutable()V

    .line 12039
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->smsVmailNotification_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14700(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_11c

    .line 12048
    :cond_1c9
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGaiaEmailAddressIsMutable()V

    .line 12049
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$14800(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_13a

    .line 12061
    :cond_1d7
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGreetingIsMutable()V

    .line 12062
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings;->greeting_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->access$15000(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_167
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12101
    const/4 v2, 0x0

    .line 12103
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiSettings;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 12108
    if-eqz v2, :cond_10

    .line 12109
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 12112
    :cond_10
    return-object p0

    .line 12104
    :catch_11
    move-exception v1

    .line 12105
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-object v2, v0

    .line 12106
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 12108
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 12109
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    :cond_21
    throw v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11791
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11791
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11791
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeForwardingPhone(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 12468
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneIsMutable()V

    .line 12469
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12471
    return-object p0
.end method

.method public removeGreeting(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 12911
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGreetingIsMutable()V

    .line 12912
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12914
    return-object p0
.end method

.method public removeSmsVmailNotification(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 12736
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsVmailNotificationIsMutable()V

    .line 12737
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12739
    return-object p0
.end method

.method public setCallPresentationEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 12816
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12817
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->callPresentationEnabled_:Z

    .line 12819
    return-object p0
.end method

.method public setClearSmsVmailNotifications(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 12947
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12948
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->clearSmsVmailNotifications_:Z

    .line 12950
    return-object p0
.end method

.method public setDefaultGreetingId(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 12926
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12927
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->defaultGreetingId_:I

    .line 12929
    return-object p0
.end method

.method public setDoNotDisturb(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12373
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12374
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->doNotDisturb_:Z

    .line 12376
    return-object p0
.end method

.method public setEmailNotificationAddress(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12140
    if-nez p2, :cond_8

    .line 12141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12143
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureEmailNotificationAddressIsMutable()V

    .line 12144
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12146
    return-object p0
.end method

.method public setEmailNotificationEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12599
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12600
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->emailNotificationEnabled_:Z

    .line 12602
    return-object p0
.end method

.method public setForwardingPhone(ILcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12416
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneIsMutable()V

    .line 12417
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12419
    return-object p0
.end method

.method public setForwardingPhone(ILcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12406
    if-nez p2, :cond_8

    .line 12407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12409
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneIsMutable()V

    .line 12410
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhone_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12412
    return-object p0
.end method

.method public setForwardingPhoneName(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12270
    if-nez p2, :cond_8

    .line 12271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12273
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureForwardingPhoneNameIsMutable()V

    .line 12274
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->forwardingPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12276
    return-object p0
.end method

.method public setGaiaEmailAddress(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12766
    if-nez p2, :cond_8

    .line 12767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12769
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGaiaEmailAddressIsMutable()V

    .line 12770
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->gaiaEmailAddress_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12772
    return-object p0
.end method

.method public setGreeting(ILcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12859
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGreetingIsMutable()V

    .line 12860
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiGreeting$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGreeting;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12862
    return-object p0
.end method

.method public setGreeting(ILcom/google/grandcentral/api2/Api2$ApiGreeting;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12849
    if-nez p2, :cond_8

    .line 12850
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12852
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureGreetingIsMutable()V

    .line 12853
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->greeting_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12855
    return-object p0
.end method

.method public setMaxForwardingPhones(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12578
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12579
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->maxForwardingPhones_:I

    .line 12581
    return-object p0
.end method

.method public setScreenBehavior(I)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12483
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12484
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->screenBehavior_:I

    .line 12486
    return-object p0
.end method

.method public setSmsInSubjectOfNotificationEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12641
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12642
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsInSubjectOfNotificationEnabled_:Z

    .line 12644
    return-object p0
.end method

.method public setSmsNotificationPhoneName(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12205
    if-nez p2, :cond_8

    .line 12206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12208
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsNotificationPhoneNameIsMutable()V

    .line 12209
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsNotificationPhoneName_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12211
    return-object p0
.end method

.method public setSmsToEmailEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12620
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12621
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsToEmailEnabled_:Z

    .line 12623
    return-object p0
.end method

.method public setSmsVmailNotification(ILcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12684
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsVmailNotificationIsMutable()V

    .line 12685
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12687
    return-object p0
.end method

.method public setSmsVmailNotification(ILcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12674
    if-nez p2, :cond_8

    .line 12675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12677
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->ensureSmsVmailNotificationIsMutable()V

    .line 12678
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->smsVmailNotification_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12680
    return-object p0
.end method

.method public setTemporaryForwardingPhone(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12339
    if-nez p1, :cond_8

    .line 12340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12342
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12343
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 12345
    return-object p0
.end method

.method public setTemporaryForwardingPhoneBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12355
    if-nez p1, :cond_8

    .line 12356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12358
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12359
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhone_:Ljava/lang/Object;

    .line 12361
    return-object p0
.end method

.method public setTemporaryForwardingPhoneFormatted(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12544
    if-nez p1, :cond_8

    .line 12545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12547
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12548
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 12550
    return-object p0
.end method

.method public setTemporaryForwardingPhoneFormattedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12560
    if-nez p1, :cond_8

    .line 12561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12563
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12564
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->temporaryForwardingPhoneFormatted_:Ljava/lang/Object;

    .line 12566
    return-object p0
.end method

.method public setUseDidAsCallerId(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12504
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->bitField0_:I

    .line 12505
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->useDidAsCallerId_:Z

    .line 12507
    return-object p0
.end method

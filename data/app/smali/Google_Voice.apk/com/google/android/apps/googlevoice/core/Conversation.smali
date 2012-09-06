.class public Lcom/google/android/apps/googlevoice/core/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;


# instance fields
.field private contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private conversationId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private conversationTime:J

.field private isRead:Z

.field private labels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/core/Conversation;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/core/Conversation;-><init>(Lcom/google/grandcentral/api2/Api2$ApiConversation;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/grandcentral/api2/Api2$ApiConversation;)V
    .registers 7
    .parameter "apiConversation"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    .line 27
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->labels:Ljava/util/Set;

    .line 38
    const-string v3, "apiConversation"

    invoke-static {p1, v3}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->conversationId:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getConversationTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->conversationTime:J

    .line 41
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getRead()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead:Z

    .line 42
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getLabelCount()I

    move-result v1

    .line 43
    .local v1, labelCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    if-ge v0, v1, :cond_39

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->addLabel(Ljava/lang/String;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 46
    :cond_39
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getPhoneCallCount()I

    move-result v2

    .line 47
    .local v2, phoneCallCount:I
    const/4 v0, 0x0

    :goto_3e
    if-ge v0, v2, :cond_4f

    .line 48
    new-instance v3, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {p1, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getPhoneCall(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;-><init>(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)V

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->addPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 50
    :cond_4f
    return-void
.end method


# virtual methods
.method public addLabel(Ljava/lang/String;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 119
    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->labels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public addPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V
    .registers 4
    .parameter "phoneCall"

    .prologue
    .line 131
    const-string v0, "phoneCall"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_e
    const-string v1, "duplicate phonecall"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 133
    invoke-virtual {p1, p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Conversation;->refreshContactInfo()V

    .line 136
    return-void

    .line 132
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationTime()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->conversationTime:J

    return-wide v0
.end method

.method public getLabels()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->labels:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->labels:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLastPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    return-object v0
.end method

.method public hasAudibleRecording()Z
    .registers 4

    .prologue
    .line 84
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 85
    .local v1, phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isAudibleRecording()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 86
    const/4 v2, 0x1

    .line 89
    .end local v1           #phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public hasLabel(Ljava/lang/String;)Z
    .registers 3
    .parameter "label"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->labels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeleted()Z
    .registers 2

    .prologue
    .line 99
    const-string v0, "trash"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead:Z

    return v0
.end method

.method public isSpam()Z
    .registers 2

    .prologue
    .line 109
    const-string v0, "spam"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStarred()Z
    .registers 2

    .prologue
    .line 114
    const-string v0, "starred"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public refreshContactInfo()V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 158
    return-void

    .line 157
    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public removeLabel(Ljava/lang/String;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 125
    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->labels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 140
    const-string v0, "conversationId"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->conversationId:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setConversationTime(J)V
    .registers 5
    .parameter "conversationTime"

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    const-string v1, "conversationTime >= 0L"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 147
    iput-wide p1, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->conversationTime:J

    .line 148
    return-void

    .line 146
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setIsRead(Z)V
    .registers 2
    .parameter "isRead"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead:Z

    .line 153
    return-void
.end method

.method public toApiConversation()Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 7

    .prologue
    .line 161
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v2

    .line 162
    .local v2, newConversationBuilder:Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->setId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    .line 163
    iget-wide v4, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->conversationTime:J

    invoke-virtual {v2, v4, v5}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->setConversationTime(J)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    .line 164
    iget-boolean v4, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead:Z

    invoke-virtual {v2, v4}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->setRead(Z)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    .line 165
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->labels:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, l:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->addLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    goto :goto_19

    .line 168
    .end local v1           #l:Ljava/lang/String;
    :cond_29
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/core/Conversation;->phoneCalls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 169
    .local v3, p:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->toApiPhoneCall()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->addPhoneCall(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    goto :goto_2f

    .line 171
    .end local v3           #p:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_43
    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v4

    return-object v4
.end method

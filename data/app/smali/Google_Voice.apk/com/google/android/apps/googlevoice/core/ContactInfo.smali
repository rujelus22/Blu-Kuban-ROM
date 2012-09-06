.class public Lcom/google/android/apps/googlevoice/core/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# static fields
.field static final UNKNOWN_USER:Ljava/lang/String; = "Unknown"


# instance fields
.field private final apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

.field private localId:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private localLookupKey:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private localName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private photo:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;-><init>(Lcom/google/grandcentral/api2/Api2$ApiContact;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/grandcentral/api2/Api2$ApiContact;)V
    .registers 4
    .parameter "apiContact"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "apiContact"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->trimSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getPhoneNumberFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->trimSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->setPhoneNumberFormatted(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    .line 43
    return-void
.end method

.method private static varargs firstOf([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "strings"

    .prologue
    .line 133
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    .line 134
    .local v3, string:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 138
    .end local v3           #string:Ljava/lang/String;
    :goto_d
    return-object v3

    .line 133
    .restart local v3       #string:Ljava/lang/String;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 138
    .end local v3           #string:Ljava/lang/String;
    :cond_11
    const-string v3, ""

    goto :goto_d
.end method

.method private static trimSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 165
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized getFormattedPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->hasPhoneNumberFormatted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getPhoneNumberFormatted()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    move-result-object v0

    .line 96
    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getPhoneNumber()Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_f

    .line 93
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getId()J
    .registers 3

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getId()J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->localId:Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalLookupKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->localLookupKey:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->localName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getName()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPhoneType()Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;
    .registers 3

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->hasPhoneType()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    move-result-object v0

    .line 85
    .local v0, phoneType:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;
    if-eqz v0, :cond_17

    .line 89
    .end local v0           #phoneType:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;
    :goto_15
    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1a

    goto :goto_15

    .line 82
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPhoto()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->photo:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasLocalContact()Z
    .registers 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->localId:Ljava/lang/Long;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->localLookupKey:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_c

    :cond_9
    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUsablePhoneNumber()Z
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public nameString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->localName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->firstOf([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public numberString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, phoneNumber:Ljava/lang/String;
    if-nez v0, :cond_1e

    const-string v0, ""

    .line 153
    :goto_a
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getPhoneNumberFormatted()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->firstOf([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 152
    :cond_1e
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public declared-synchronized setFormattedPhoneNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "formattedPhoneNumber"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-static {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->trimSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->setPhoneNumberFormatted(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setId(J)V
    .registers 4
    .parameter "id"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->setId(J)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalId(Ljava/lang/Long;)V
    .registers 3
    .parameter "localId"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->localId:Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalLookupKey(Ljava/lang/String;)V
    .registers 3
    .parameter "localLookupKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->localLookupKey:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalName(Ljava/lang/String;)V
    .registers 3
    .parameter "localName"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->localName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->setName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPhoneNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "phoneNumber"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-static {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->trimSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPhoneType(Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;)V
    .registers 4
    .parameter "phoneType"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->setPhoneType(I)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    .line 114
    return-void
.end method

.method public declared-synchronized setPhoto(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "photo"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->photo:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 130
    monitor-exit p0

    return-void

    .line 129
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toApiContactInfo()Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->localName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/core/ContactInfo;->apiContactBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->numberString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->firstOf([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

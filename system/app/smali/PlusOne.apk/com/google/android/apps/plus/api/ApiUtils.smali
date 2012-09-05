.class public final Lcom/google/android/apps/plus/api/ApiUtils;
.super Ljava/lang/Object;
.source "ApiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/ApiUtils$1;
    }
.end annotation


# static fields
.field private static final CIRCLE_ID_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "f."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "g."

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/api/ApiUtils;->CIRCLE_ID_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static removeCircleIdNamespaces(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 11
    .parameter "audience"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v1

    .line 115
    .local v1, audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getCircleCount()I

    move-result v8

    if-ge v4, v8, :cond_41

    .line 116
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v2

    .line 117
    .local v2, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    sget-object v0, Lcom/google/android/apps/plus/api/ApiUtils;->CIRCLE_ID_PREFIXES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_13
    if-ge v5, v6, :cond_3b

    aget-object v7, v0, v5

    .line 118
    .local v7, prefix:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 119
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v3

    .line 120
    .local v3, circleBuilder:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 121
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->setCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 115
    .end local v3           #circleBuilder:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .end local v7           #prefix:Ljava/lang/String;
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 117
    .restart local v7       #prefix:Ljava/lang/String;
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 129
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #prefix:Ljava/lang/String;
    :cond_41
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v8

    return-object v8
.end method

.method static setCircleIdNamespace(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 4
    .parameter "circle"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->toBuilder()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    .line 86
    .local v0, builder:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/api/ApiUtils;->setCircleIdPrefix(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    .line 87
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->build()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v1

    return-object v1
.end method

.method static setCircleIdNamespace(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 4
    .parameter "circle"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    .line 95
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/api/ApiUtils;->setCircleIdPrefix(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 96
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    return-object v1
.end method

.method static setCircleIdNamespaces(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 5
    .parameter "audience"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 104
    .local v0, audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getCircleCount()I

    move-result v2

    .local v2, n:I
    :goto_9
    if-ge v1, v2, :cond_19

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/api/ApiUtils;->setCircleIdNamespace(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->setCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 107
    :cond_19
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    return-object v3
.end method

.method static setCircleIdPrefix(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "type"
    .parameter "circleId"

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/apps/plus/api/ApiUtils;->CIRCLE_ID_PREFIXES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_2a

    aget-object v3, v0, v1

    .line 60
    .local v3, prefix:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 61
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Circle ID already has a prefix: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 64
    .end local v3           #prefix:Ljava/lang/String;
    :cond_2a
    sget-object v4, Lcom/google/android/apps/plus/api/ApiUtils$1;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_5e

    .line 76
    .end local p1
    :goto_35
    return-object p1

    .line 67
    .restart local p1
    :pswitch_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    .line 72
    :pswitch_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "g."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    .line 64
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

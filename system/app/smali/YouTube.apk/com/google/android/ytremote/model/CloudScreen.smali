.class public Lcom/google/android/ytremote/model/CloudScreen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$android$ytremote$model$CloudScreen$AccessType:[I


# instance fields
.field private final accessType:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

.field private final loungeToken:Lcom/google/android/ytremote/model/LoungeToken;

.field private final name:Ljava/lang/String;

.field private final screenId:Lcom/google/android/ytremote/model/ScreenId;

.field private final temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$android$ytremote$model$CloudScreen$AccessType()[I
    .registers 3

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/ytremote/model/CloudScreen;->$SWITCH_TABLE$com$google$android$ytremote$model$CloudScreen$AccessType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->values()[Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->PERMANENT:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    invoke-virtual {v1}, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->TEMPORARY:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    invoke-virtual {v1}, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/google/android/ytremote/model/CloudScreen;->$SWITCH_TABLE$com$google$android$ytremote$model$CloudScreen$AccessType:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Lcom/google/android/ytremote/model/ScreenId;Ljava/lang/String;Lcom/google/android/ytremote/model/LoungeToken;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->PERMANENT:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    iput-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->accessType:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;

    .line 27
    iput-object p1, p0, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    .line 28
    iput-object p2, p0, Lcom/google/android/ytremote/model/CloudScreen;->name:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/google/android/ytremote/model/CloudScreen;->loungeToken:Lcom/google/android/ytremote/model/LoungeToken;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/google/android/ytremote/model/TemporaryAccessToken;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->TEMPORARY:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    iput-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->accessType:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    .line 34
    iput-object p1, p0, Lcom/google/android/ytremote/model/CloudScreen;->temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    .line 36
    iput-object p2, p0, Lcom/google/android/ytremote/model/CloudScreen;->name:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/google/android/ytremote/model/LoungeToken;

    invoke-virtual {p1}, Lcom/google/android/ytremote/model/TemporaryAccessToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/model/LoungeToken;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->loungeToken:Lcom/google/android/ytremote/model/LoungeToken;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p0, p1, :cond_5

    .line 69
    :cond_4
    :goto_4
    return v0

    .line 45
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 46
    goto :goto_4

    .line 48
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 49
    goto :goto_4

    .line 51
    :cond_15
    check-cast p1, Lcom/google/android/ytremote/model/CloudScreen;

    .line 52
    iget-object v2, p0, Lcom/google/android/ytremote/model/CloudScreen;->accessType:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    iget-object v3, p1, Lcom/google/android/ytremote/model/CloudScreen;->accessType:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    if-eq v2, v3, :cond_1f

    move v0, v1

    .line 53
    goto :goto_4

    .line 55
    :cond_1f
    iget-object v2, p0, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    if-nez v2, :cond_29

    .line 56
    iget-object v2, p1, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    if-eqz v2, :cond_35

    move v0, v1

    .line 57
    goto :goto_4

    .line 59
    :cond_29
    iget-object v2, p0, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    iget-object v3, p1, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    invoke-virtual {v2, v3}, Lcom/google/android/ytremote/model/ScreenId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    move v0, v1

    .line 60
    goto :goto_4

    .line 62
    :cond_35
    iget-object v2, p0, Lcom/google/android/ytremote/model/CloudScreen;->temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;

    if-nez v2, :cond_3f

    .line 63
    iget-object v2, p1, Lcom/google/android/ytremote/model/CloudScreen;->temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;

    if-eqz v2, :cond_4

    move v0, v1

    .line 64
    goto :goto_4

    .line 66
    :cond_3f
    iget-object v2, p0, Lcom/google/android/ytremote/model/CloudScreen;->temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;

    iget-object v3, p1, Lcom/google/android/ytremote/model/CloudScreen;->temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;

    invoke-virtual {v2, v3}, Lcom/google/android/ytremote/model/TemporaryAccessToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 67
    goto :goto_4
.end method

.method public getAccessType()Lcom/google/android/ytremote/model/CloudScreen$AccessType;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->accessType:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    return-object v0
.end method

.method public getLoungeToken()Lcom/google/android/ytremote/model/LoungeToken;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->loungeToken:Lcom/google/android/ytremote/model/LoungeToken;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenId()Lcom/google/android/ytremote/model/ScreenId;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    return-object v0
.end method

.method public getTemporaryAccessToken()Lcom/google/android/ytremote/model/TemporaryAccessToken;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;

    return-object v0
.end method

.method public hasLoungeToken()Z
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->loungeToken:Lcom/google/android/ytremote/model/LoungeToken;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->accessType:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    if-nez v0, :cond_18

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 96
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    if-nez v0, :cond_1f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/ytremote/model/CloudScreen;->temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;

    if-nez v2, :cond_26

    :goto_16
    add-int/2addr v0, v1

    .line 99
    return v0

    .line 93
    :cond_18
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->accessType:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->hashCode()I

    move-result v0

    goto :goto_6

    .line 96
    :cond_1f
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/ScreenId;->hashCode()I

    move-result v0

    goto :goto_f

    .line 98
    :cond_26
    iget-object v1, p0, Lcom/google/android/ytremote/model/CloudScreen;->temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;

    invoke-virtual {v1}, Lcom/google/android/ytremote/model/TemporaryAccessToken;->hashCode()I

    move-result v1

    goto :goto_16
.end method

.method public withLoungeToken(Lcom/google/android/ytremote/model/LoungeToken;)Lcom/google/android/ytremote/model/CloudScreen;
    .registers 5
    .parameter

    .prologue
    .line 111
    invoke-static {p1}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->accessType:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    sget-object v1, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->PERMANENT:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_a

    .line 113
    :cond_14
    new-instance v0, Lcom/google/android/ytremote/model/CloudScreen;

    iget-object v1, p0, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    iget-object v2, p0, Lcom/google/android/ytremote/model/CloudScreen;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/ytremote/model/CloudScreen;-><init>(Lcom/google/android/ytremote/model/ScreenId;Ljava/lang/String;Lcom/google/android/ytremote/model/LoungeToken;)V

    return-object v0
.end method

.method public withName(Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen;
    .registers 5
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/ytremote/model/CloudScreen;->loungeToken:Lcom/google/android/ytremote/model/LoungeToken;

    invoke-static {v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/google/android/ytremote/model/CloudScreen;->$SWITCH_TABLE$com$google$android$ytremote$model$CloudScreen$AccessType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/ytremote/model/CloudScreen;->accessType:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    invoke-virtual {v1}, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 124
    :goto_14
    return-object p0

    .line 120
    :pswitch_15
    new-instance v0, Lcom/google/android/ytremote/model/CloudScreen;

    iget-object v1, p0, Lcom/google/android/ytremote/model/CloudScreen;->screenId:Lcom/google/android/ytremote/model/ScreenId;

    iget-object v2, p0, Lcom/google/android/ytremote/model/CloudScreen;->loungeToken:Lcom/google/android/ytremote/model/LoungeToken;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/ytremote/model/CloudScreen;-><init>(Lcom/google/android/ytremote/model/ScreenId;Ljava/lang/String;Lcom/google/android/ytremote/model/LoungeToken;)V

    move-object p0, v0

    goto :goto_14

    .line 122
    :pswitch_20
    new-instance v0, Lcom/google/android/ytremote/model/CloudScreen;

    iget-object v1, p0, Lcom/google/android/ytremote/model/CloudScreen;->temporaryAccessToken:Lcom/google/android/ytremote/model/TemporaryAccessToken;

    invoke-direct {v0, v1, p1}, Lcom/google/android/ytremote/model/CloudScreen;-><init>(Lcom/google/android/ytremote/model/TemporaryAccessToken;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_14

    .line 118
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_20
    .end packed-switch
.end method

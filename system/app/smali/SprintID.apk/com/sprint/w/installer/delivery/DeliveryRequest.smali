.class public Lcom/sprint/w/installer/delivery/DeliveryRequest;
.super Ljava/lang/Object;
.source "DeliveryRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/w/installer/delivery/DeliveryRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DELIVERY_TYPE_CATALOG_JSON:I = 0x2

.field public static final DELIVERY_TYPE_CATALOG_RSS:I = 0x0

.field public static final DELIVERY_TYPE_MAINTENANCE:I = 0x4

.field public static final DELIVERY_TYPE_MANUAL:I = 0x3

.field public static final DELIVERY_TYPE_PACK_URL:I = 0x1

.field private static final JSON_FIELD_APPROVED_IDS:Ljava/lang/String; = "i"

.field private static final JSON_FIELD_AUTHENTICATION_CREDENTIALS_PASS:Ljava/lang/String; = "cp"

.field private static final JSON_FIELD_AUTHENTICATION_CREDENTIALS_PIN:Ljava/lang/String; = "p"

.field private static final JSON_FIELD_AUTHENTICATION_CREDENTIALS_USER:Ljava/lang/String; = "cu"

.field private static final JSON_FIELD_AUTHENTICATION_INSTRUCTIONS:Ljava/lang/String; = "ai"

.field private static final JSON_FIELD_AUTHENTICATION_PASS_LABEL:Ljava/lang/String; = "ap"

.field private static final JSON_FIELD_AUTHENTICATION_USER_LABEL:Ljava/lang/String; = "au"

.field private static final JSON_FIELD_DELIVERY_ID:Ljava/lang/String; = "id"

.field private static final JSON_FIELD_DELIVERY_TYPE:Ljava/lang/String; = "t"

.field private static final JSON_FIELD_ERROR_MSG:Ljava/lang/String; = "e"

.field private static final JSON_FIELD_MODE_HANDS_FREE:Ljava/lang/String; = "h"

.field private static final JSON_FIELD_MODE_INSTALL:Ljava/lang/String; = "im"

.field private static final JSON_FIELD_PACK_ID:Ljava/lang/String; = "pi"

.field private static final JSON_FIELD_PACK_NAME:Ljava/lang/String; = "pn"

.field private static final JSON_FIELD_PACK_TERMS:Ljava/lang/String; = "pt"

.field private static final JSON_FIELD_URL:Ljava/lang/String; = "u"


# instance fields
.field private approvedIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public authenticationCredentialsPassword:Ljava/lang/String;

.field public authenticationCredentialsPin:Ljava/lang/String;

.field public authenticationCredentialsUser:Ljava/lang/String;

.field public authenticationInstructions:Ljava/lang/String;

.field public authenticationLabelPassword:Ljava/lang/String;

.field public authenticationLabelUser:Ljava/lang/String;

.field public deliveryID:Ljava/lang/String;

.field public deliveryType:I

.field public errorMessage:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public handsFree:I

.field public installMode:I

.field private log:Lcom/sprint/id/logger/Logger;

.field public packID:Ljava/lang/String;

.field public packName:Ljava/lang/String;

.field public packTerm:Ljava/lang/String;

.field public responseValid:Z

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 229
    new-instance v0, Lcom/sprint/w/installer/delivery/DeliveryRequest$1;

    invoke-direct {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest$1;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->log:Lcom/sprint/id/logger/Logger;

    .line 48
    iput-boolean v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->responseValid:Z

    .line 50
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    .line 51
    iput v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    .line 52
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->handsFree:I

    .line 61
    iput v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->installMode:I

    .line 62
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->extra:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->approvedIDs:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packID:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packTerm:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->log:Lcom/sprint/id/logger/Logger;

    .line 48
    iput-boolean v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->responseValid:Z

    .line 50
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    .line 51
    iput v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    .line 52
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->handsFree:I

    .line 61
    iput v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->installMode:I

    .line 62
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->extra:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->approvedIDs:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packID:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packTerm:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "json"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->log:Lcom/sprint/id/logger/Logger;

    .line 48
    iput-boolean v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->responseValid:Z

    .line 50
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    .line 51
    iput v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    .line 52
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->handsFree:I

    .line 61
    iput v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->installMode:I

    .line 62
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->extra:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->approvedIDs:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packID:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packTerm:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    .line 80
    if-eqz p1, :cond_3b

    .line 81
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->loadFromJSON(Ljava/lang/String;)V

    .line 83
    :cond_3b
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->handsFree:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->installMode:I

    .line 223
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->approvedIDs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packID:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packTerm:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public hasAuthenticationCredentials()Z
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 163
    :cond_8
    const/4 v0, 0x1

    .line 165
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasAuthenticationCredentialsPassword()Z
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasAuthenticationCredentialsUser()Z
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasAuthenticationHelp()Z
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 143
    :cond_c
    const/4 v0, 0x1

    .line 145
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasAuthenticationInstructions()Z
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasAuthenticationLabelPassword()Z
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasAuthenticationLabelUser()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasID()Z
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isApprovedID(Ljava/lang/String;)Z
    .registers 5
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 178
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->approvedIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 179
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->approvedIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_13

    .line 186
    :cond_12
    :goto_12
    return v0

    .line 182
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public loadFromJSON(Ljava/lang/String;)V
    .registers 12
    .parameter "jsonString"

    .prologue
    .line 87
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, json:Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    .line 89
    .local v6, nameArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3f

    .line 90
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, name:Ljava/lang/String;
    const-string v7, "id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 92
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    .line 89
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 93
    :cond_27
    const-string v7, "t"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 94
    const-string v7, "t"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_24

    .line 130
    .end local v1           #i:I
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #nameArray:Lorg/json/JSONArray;
    :catch_38
    move-exception v0

    .line 131
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 132
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->responseValid:Z

    .line 134
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3f
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->responseValid:Z

    .line 135
    return-void

    .line 95
    .restart local v1       #i:I
    .restart local v4       #json:Lorg/json/JSONObject;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #nameArray:Lorg/json/JSONArray;
    :cond_43
    :try_start_43
    const-string v7, "u"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 96
    const-string v7, "u"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    goto :goto_24

    .line 97
    :cond_54
    const-string v7, "e"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 98
    const-string v7, "e"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    goto :goto_24

    .line 99
    :cond_65
    const-string v7, "ai"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 100
    const-string v7, "ai"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    goto :goto_24

    .line 101
    :cond_76
    const-string v7, "au"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 102
    const-string v7, "au"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    goto :goto_24

    .line 103
    :cond_87
    const-string v7, "ap"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 104
    const-string v7, "ap"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    goto :goto_24

    .line 105
    :cond_98
    const-string v7, "cu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 106
    const-string v7, "cu"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    goto/16 :goto_24

    .line 107
    :cond_aa
    const-string v7, "cp"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 108
    const-string v7, "cp"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    goto/16 :goto_24

    .line 109
    :cond_bc
    const-string v7, "p"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 110
    const-string v7, "p"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    goto/16 :goto_24

    .line 111
    :cond_ce
    const-string v7, "h"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e0

    .line 112
    const-string v7, "h"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->handsFree:I

    goto/16 :goto_24

    .line 113
    :cond_e0
    const-string v7, "im"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f2

    .line 114
    const-string v7, "im"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->installMode:I

    goto/16 :goto_24

    .line 115
    :cond_f2
    const-string v7, "i"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_113

    .line 116
    const-string v7, "i"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 117
    .local v3, jArray:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, indx:I
    :goto_101
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_24

    .line 118
    iget-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->approvedIDs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_101

    .line 120
    .end local v2           #indx:I
    .end local v3           #jArray:Lorg/json/JSONArray;
    :cond_113
    const-string v7, "pi"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_125

    .line 121
    const-string v7, "pi"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packID:Ljava/lang/String;

    goto/16 :goto_24

    .line 122
    :cond_125
    const-string v7, "pt"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_137

    .line 123
    const-string v7, "pt"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packTerm:Ljava/lang/String;

    goto/16 :goto_24

    .line 124
    :cond_137
    const-string v7, "pn"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_149

    .line 125
    const-string v7, "pn"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    goto/16 :goto_24

    .line 127
    :cond_149
    iget-object v7, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "****** UNKNOWN JSON NAME******* "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_167
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_167} :catch_38

    goto/16 :goto_24
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 248
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, " -----DeliveryRequest-------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const-string v1, "  deliveryID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const-string v1, "  deliveryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    const-string v1, "  url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const-string v1, "  errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    const-string v1, "  authenticationInstructions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    const-string v1, "  authenticationLabelUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    const-string v1, "  authenticationLabelPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    const-string v1, "  authenticationCredentialsPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const-string v1, "  authenticationCredentialsUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    const-string v1, "  authenticationCredentialsPin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const-string v1, "  handsFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->handsFree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    const-string v1, "  installMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->installMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    const-string v1, "  approvedIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->approvedIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    const-string v1, "  packID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    const-string v1, "  packName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    const-string v1, "  packTerm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packTerm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->handsFree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->installMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->approvedIDs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 205
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packTerm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return-void
.end method

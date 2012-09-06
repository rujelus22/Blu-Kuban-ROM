.class public final enum Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

.field public static final enum FULL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

.field public static final enum INCREMENTAL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4309
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->FULL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    .line 4310
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    const-string v1, "INCREMENTAL"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->INCREMENTAL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    .line 4307
    new-array v0, v4, [Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->FULL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->INCREMENTAL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    .line 4332
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 4341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4342
    iput p4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->value:I

    .line 4343
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    .registers 2
    .parameter "value"

    .prologue
    .line 4320
    packed-switch p0, :pswitch_data_c

    .line 4323
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 4321
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->FULL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    goto :goto_4

    .line 4322
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->INCREMENTAL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    goto :goto_4

    .line 4320
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    .registers 2
    .parameter "name"

    .prologue
    .line 4307
    const-class v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    .registers 1

    .prologue
    .line 4307
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 4317
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->value:I

    return v0
.end method

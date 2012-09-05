.class public final enum Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

.field public static final enum ENTITY:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

.field public static final enum UNKNOWN:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

.field public static final enum USER:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13289
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    .line 13290
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    const-string v1, "USER"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->USER:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    .line 13291
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    const-string v1, "ENTITY"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->ENTITY:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    .line 13287
    new-array v0, v5, [Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->USER:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->ENTITY:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    .line 13315
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 13324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13325
    iput p4, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->value:I

    .line 13326
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;
    .registers 2
    .parameter "value"

    .prologue
    .line 13302
    packed-switch p0, :pswitch_data_e

    .line 13306
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 13303
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    goto :goto_4

    .line 13304
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->USER:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    goto :goto_4

    .line 13305
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->ENTITY:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    goto :goto_4

    .line 13302
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;
    .registers 2
    .parameter

    .prologue
    .line 13287
    const-class v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;
    .registers 1

    .prologue
    .line 13287
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 13299
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->value:I

    return v0
.end method

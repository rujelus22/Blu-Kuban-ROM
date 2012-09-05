.class public final enum Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
.super Ljava/lang/Enum;
.source "Contact.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

.field public static final enum CONTACT:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

.field public static final enum EMAIL:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

.field public static final enum GAIA:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

.field public static final enum PHONE:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

.field public static final enum URL:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4008
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->CONTACT:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4009
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    const-string v1, "GAIA"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->GAIA:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4010
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->EMAIL:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4011
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->PHONE:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4012
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    const-string v1, "URL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->URL:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4006
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->CONTACT:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->GAIA:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->EMAIL:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->PHONE:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->URL:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->$VALUES:[Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4040
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4049
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4050
    iput p4, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->value:I

    .line 4051
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
    .registers 2
    .parameter "value"

    .prologue
    .line 4025
    packed-switch p0, :pswitch_data_14

    .line 4031
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 4026
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->CONTACT:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    goto :goto_4

    .line 4027
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->GAIA:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    goto :goto_4

    .line 4028
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->EMAIL:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    goto :goto_4

    .line 4029
    :pswitch_e
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->PHONE:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    goto :goto_4

    .line 4030
    :pswitch_11
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->URL:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    goto :goto_4

    .line 4025
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
    .registers 2
    .parameter

    .prologue
    .line 4006
    const-class v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
    .registers 1

    .prologue
    .line 4006
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->$VALUES:[Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 4022
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->value:I

    return v0
.end method

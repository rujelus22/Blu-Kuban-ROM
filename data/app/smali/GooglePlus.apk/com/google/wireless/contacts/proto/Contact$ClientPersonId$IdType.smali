.class public final enum Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
.super Ljava/lang/Enum;
.source "Contact.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

.field public static final enum AGGREGATE:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

.field public static final enum GAIA:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

.field public static final enum PUBLIC_USER_NAME:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;",
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

    .line 4762
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    const-string v1, "GAIA"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->GAIA:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    .line 4763
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    const-string v1, "PUBLIC_USER_NAME"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->PUBLIC_USER_NAME:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    .line 4764
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    const-string v1, "AGGREGATE"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->AGGREGATE:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    .line 4760
    new-array v0, v5, [Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->GAIA:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->PUBLIC_USER_NAME:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->AGGREGATE:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->$VALUES:[Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    .line 4788
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4797
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4798
    iput p4, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->value:I

    .line 4799
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
    .registers 2
    .parameter "value"

    .prologue
    .line 4775
    packed-switch p0, :pswitch_data_e

    .line 4779
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 4776
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->GAIA:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    goto :goto_4

    .line 4777
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->PUBLIC_USER_NAME:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    goto :goto_4

    .line 4778
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->AGGREGATE:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    goto :goto_4

    .line 4775
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
    .registers 2
    .parameter "name"

    .prologue
    .line 4760
    const-class v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;
    .registers 1

    .prologue
    .line 4760
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->$VALUES:[Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 4772
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId$IdType;->value:I

    return v0
.end method

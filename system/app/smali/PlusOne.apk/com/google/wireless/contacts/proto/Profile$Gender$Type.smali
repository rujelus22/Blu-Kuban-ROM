.class public final enum Lcom/google/wireless/contacts/proto/Profile$Gender$Type;
.super Ljava/lang/Enum;
.source "Profile.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$Gender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$Gender$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

.field public static final enum FEMALE:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

.field public static final enum MALE:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

.field public static final enum UNKNOWN:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$Gender$Type;",
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 896
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->UNKNOWN:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    .line 897
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->MALE:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    .line 898
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->FEMALE:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    .line 894
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->UNKNOWN:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->MALE:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->FEMALE:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    .line 922
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 931
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 932
    iput p4, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->value:I

    .line 933
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Profile$Gender$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 909
    packed-switch p0, :pswitch_data_e

    .line 913
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 910
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->UNKNOWN:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    goto :goto_4

    .line 911
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->MALE:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    goto :goto_4

    .line 912
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->FEMALE:Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    goto :goto_4

    .line 909
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$Gender$Type;
    .registers 2
    .parameter

    .prologue
    .line 894
    const-class v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Profile$Gender$Type;
    .registers 1

    .prologue
    .line 894
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Profile$Gender$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 906
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Gender$Type;->value:I

    return v0
.end method

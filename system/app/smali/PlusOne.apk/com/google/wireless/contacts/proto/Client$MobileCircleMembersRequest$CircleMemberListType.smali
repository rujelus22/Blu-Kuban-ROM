.class public final enum Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CircleMemberListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

.field public static final enum MEMBERS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

.field public static final enum SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;",
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

    .line 13875
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    const-string v1, "MEMBERS"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->MEMBERS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    .line 13876
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    const-string v1, "SUGGESTIONS"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    .line 13873
    new-array v0, v4, [Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->MEMBERS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    .line 13898
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 13907
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13908
    iput p4, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->value:I

    .line 13909
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;
    .registers 2
    .parameter "value"

    .prologue
    .line 13886
    packed-switch p0, :pswitch_data_c

    .line 13889
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 13887
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->MEMBERS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    goto :goto_4

    .line 13888
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    goto :goto_4

    .line 13886
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;
    .registers 2
    .parameter

    .prologue
    .line 13873
    const-class v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;
    .registers 1

    .prologue
    .line 13873
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 13883
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersRequest$CircleMemberListType;->value:I

    return v0
.end method

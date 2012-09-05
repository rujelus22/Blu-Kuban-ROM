.class public final enum Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Acl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

.field public static final enum CIRCLES:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

.field public static final enum EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

.field public static final enum EXTENDED_CIRCLES:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

.field public static final enum NO_ONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 33151
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    const-string v1, "EVERYONE"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33152
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    const-string v1, "EXTENDED_CIRCLES"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EXTENDED_CIRCLES:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33153
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    const-string v1, "CIRCLES"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->CIRCLES:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33154
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    const-string v1, "NO_ONE"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->NO_ONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33149
    new-array v0, v6, [Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EXTENDED_CIRCLES:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->CIRCLES:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->NO_ONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33180
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 33189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33190
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->value:I

    .line 33191
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    .registers 2
    .parameter "value"

    .prologue
    .line 33166
    packed-switch p0, :pswitch_data_12

    .line 33171
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 33167
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    goto :goto_4

    .line 33168
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EXTENDED_CIRCLES:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    goto :goto_4

    .line 33169
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->CIRCLES:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    goto :goto_4

    .line 33170
    :pswitch_e
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->NO_ONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    goto :goto_4

    .line 33166
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    .registers 2
    .parameter

    .prologue
    .line 33149
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    .registers 1

    .prologue
    .line 33149
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 33163
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->value:I

    return v0
.end method

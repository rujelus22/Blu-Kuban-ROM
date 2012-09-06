.class public final enum Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;
.super Ljava/lang/Enum;
.source "Common.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Common$Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

.field public static final enum PRIVATE:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

.field public static final enum PUBLIC:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

.field public static final enum SHARED:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;",
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

    .line 38
    new-instance v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->PRIVATE:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    .line 39
    new-instance v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    const-string v1, "SHARED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->SHARED:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    .line 40
    new-instance v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->PUBLIC:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    sget-object v1, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->PRIVATE:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->SHARED:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->PUBLIC:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->$VALUES:[Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    .line 64
    new-instance v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p4, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->value:I

    .line 75
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;
    .registers 2
    .parameter "value"

    .prologue
    .line 51
    packed-switch p0, :pswitch_data_e

    .line 55
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 52
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->PRIVATE:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    goto :goto_4

    .line 53
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->SHARED:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    goto :goto_4

    .line 54
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->PUBLIC:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    goto :goto_4

    .line 51
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;
    .registers 2
    .parameter "name"

    .prologue
    .line 36
    const-class v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->$VALUES:[Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->value:I

    return v0
.end method

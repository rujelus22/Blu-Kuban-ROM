.class public final enum Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;
.super Ljava/lang/Enum;
.source "Abuse.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

.field public static final enum CHILD_ABUSE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

.field public static final enum COPYRIGHT:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

.field public static final enum FAKE_USER:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

.field public static final enum HATE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

.field public static final enum IMPERSONATION:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

.field public static final enum OTHER:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

.field public static final enum PORN:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

.field public static final enum SPAM:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 38
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    const-string v1, "CHILD_ABUSE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->CHILD_ABUSE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 39
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    const-string v1, "FAKE_USER"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->FAKE_USER:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 40
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    const-string v1, "HATE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->HATE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 41
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    const-string v1, "IMPERSONATION"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->IMPERSONATION:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 42
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->OTHER:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 43
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    const-string v1, "PORN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->PORN:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 44
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    const-string v1, "SPAM"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->SPAM:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 45
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    const-string v1, "COPYRIGHT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->COPYRIGHT:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->CHILD_ABUSE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->FAKE_USER:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->HATE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->IMPERSONATION:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->OTHER:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->PORN:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->SPAM:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->COPYRIGHT:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    .line 79
    new-instance v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p4, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->value:I

    .line 90
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_1e

    .line 70
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 62
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->CHILD_ABUSE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    goto :goto_4

    .line 63
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->FAKE_USER:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    goto :goto_4

    .line 64
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->HATE:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    goto :goto_4

    .line 65
    :pswitch_e
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->IMPERSONATION:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    goto :goto_4

    .line 66
    :pswitch_11
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->OTHER:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    goto :goto_4

    .line 67
    :pswitch_14
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->PORN:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    goto :goto_4

    .line 68
    :pswitch_17
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->SPAM:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    goto :goto_4

    .line 69
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->COPYRIGHT:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    goto :goto_4

    .line 61
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;
    .registers 2
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse$Type;->value:I

    return v0
.end method

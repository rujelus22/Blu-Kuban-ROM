.class public final enum Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;
.super Ljava/lang/Enum;
.source "Contact.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$MobileContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ATTRIBUTES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

.field public static final enum CAN_CALL_ME:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

.field public static final enum CAN_SMS_WITH_GV:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

.field public static final enum HAS_PUBLIC_PROFILE:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

.field public static final enum IS_DELETED:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

.field public static final enum IS_ES_USER:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

.field public static final enum IS_IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

.field public static final enum IS_ME:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

.field public static final enum ONLY_JUST_FOLLOWING:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;",
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
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1839
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    const-string v1, "IS_ME"

    invoke-direct {v0, v1, v8, v8, v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_ME:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    .line 1840
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    const-string v1, "IS_DELETED"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_DELETED:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    .line 1841
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    const-string v1, "CAN_SMS_WITH_GV"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->CAN_SMS_WITH_GV:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    .line 1842
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    const-string v1, "IS_IN_MY_CIRCLES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    .line 1843
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    const-string v1, "ONLY_JUST_FOLLOWING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->ONLY_JUST_FOLLOWING:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    .line 1844
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    const-string v1, "HAS_PUBLIC_PROFILE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->HAS_PUBLIC_PROFILE:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    .line 1845
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    const-string v1, "IS_ES_USER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_ES_USER:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    .line 1846
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    const-string v1, "CAN_CALL_ME"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->CAN_CALL_ME:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    .line 1837
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_ME:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_DELETED:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->CAN_SMS_WITH_GV:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->ONLY_JUST_FOLLOWING:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->HAS_PUBLIC_PROFILE:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_ES_USER:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->CAN_CALL_ME:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->$VALUES:[Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    .line 1880
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1889
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1890
    iput p4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->value:I

    .line 1891
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;
    .registers 2
    .parameter "value"

    .prologue
    .line 1862
    sparse-switch p0, :sswitch_data_1e

    .line 1871
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1863
    :sswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_ME:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    goto :goto_4

    .line 1864
    :sswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_DELETED:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    goto :goto_4

    .line 1865
    :sswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->CAN_SMS_WITH_GV:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    goto :goto_4

    .line 1866
    :sswitch_e
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    goto :goto_4

    .line 1867
    :sswitch_11
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->ONLY_JUST_FOLLOWING:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    goto :goto_4

    .line 1868
    :sswitch_14
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->HAS_PUBLIC_PROFILE:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    goto :goto_4

    .line 1869
    :sswitch_17
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->IS_ES_USER:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    goto :goto_4

    .line 1870
    :sswitch_1a
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->CAN_CALL_ME:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    goto :goto_4

    .line 1862
    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_8
        0x4 -> :sswitch_b
        0x8 -> :sswitch_e
        0x10 -> :sswitch_11
        0x20 -> :sswitch_14
        0x40 -> :sswitch_17
        0x80 -> :sswitch_1a
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;
    .registers 2
    .parameter

    .prologue
    .line 1837
    const-class v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;
    .registers 1

    .prologue
    .line 1837
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->$VALUES:[Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1859
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;->value:I

    return v0
.end method

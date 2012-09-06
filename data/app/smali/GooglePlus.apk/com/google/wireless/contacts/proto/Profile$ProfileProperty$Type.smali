.class public final enum Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;
.super Ljava/lang/Enum;
.source "Profile.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

.field public static final enum BLOCKED:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

.field public static final enum PLUSPAGE:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

.field public static final enum USER:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;",
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

    .line 1900
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    .line 1901
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    const-string v1, "PLUSPAGE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->PLUSPAGE:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    .line 1902
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->USER:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    .line 1898
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->PLUSPAGE:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->USER:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    .line 1926
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1935
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1936
    iput p4, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->value:I

    .line 1937
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 1913
    packed-switch p0, :pswitch_data_e

    .line 1917
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1914
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    goto :goto_4

    .line 1915
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->PLUSPAGE:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    goto :goto_4

    .line 1916
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->USER:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    goto :goto_4

    .line 1913
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 1898
    const-class v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;
    .registers 1

    .prologue
    .line 1898
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1910
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->value:I

    return v0
.end method

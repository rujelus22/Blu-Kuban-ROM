.class public final enum Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;
.super Ljava/lang/Enum;
.source "Circles.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemanticHints"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

.field public static final enum CANNOT_ACL_TO:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

.field public static final enum CANNOT_DELETE_CIRCLE:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

.field public static final enum CANNOT_MODIFY_MEMBERSHIP:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

.field public static final enum CANNOT_VIEW_MEMBERSHIP:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

.field public static final enum FOR_SHARING:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

.field public static final enum MEMBERSHIP_IS_IMPLICIT:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

.field public static final enum VISIBLE_ONLY_WHEN_POPULATED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;",
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

    .line 170
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    const-string v1, "CANNOT_VIEW_MEMBERSHIP"

    invoke-direct {v0, v1, v8, v8, v5}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_VIEW_MEMBERSHIP:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    .line 171
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    const-string v1, "CANNOT_MODIFY_MEMBERSHIP"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_MODIFY_MEMBERSHIP:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    .line 172
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    const-string v1, "CANNOT_DELETE_CIRCLE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_DELETE_CIRCLE:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    .line 173
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    const-string v1, "CANNOT_ACL_TO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_ACL_TO:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    .line 174
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    const-string v1, "VISIBLE_ONLY_WHEN_POPULATED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->VISIBLE_ONLY_WHEN_POPULATED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    .line 175
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    const-string v1, "MEMBERSHIP_IS_IMPLICIT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->MEMBERSHIP_IS_IMPLICIT:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    .line 176
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    const-string v1, "FOR_SHARING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->FOR_SHARING:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    .line 168
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_VIEW_MEMBERSHIP:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_MODIFY_MEMBERSHIP:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_DELETE_CIRCLE:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_ACL_TO:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->VISIBLE_ONLY_WHEN_POPULATED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->MEMBERSHIP_IS_IMPLICIT:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->FOR_SHARING:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->$VALUES:[Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    .line 208
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 218
    iput p4, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->value:I

    .line 219
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;
    .registers 2
    .parameter "value"

    .prologue
    .line 191
    sparse-switch p0, :sswitch_data_1a

    .line 199
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 192
    :sswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_VIEW_MEMBERSHIP:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    goto :goto_4

    .line 193
    :sswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_MODIFY_MEMBERSHIP:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    goto :goto_4

    .line 194
    :sswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_DELETE_CIRCLE:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    goto :goto_4

    .line 195
    :sswitch_e
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->CANNOT_ACL_TO:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    goto :goto_4

    .line 196
    :sswitch_11
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->VISIBLE_ONLY_WHEN_POPULATED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    goto :goto_4

    .line 197
    :sswitch_14
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->MEMBERSHIP_IS_IMPLICIT:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    goto :goto_4

    .line 198
    :sswitch_17
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->FOR_SHARING:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    goto :goto_4

    .line 191
    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_8
        0x4 -> :sswitch_b
        0x8 -> :sswitch_e
        0x10 -> :sswitch_11
        0x20 -> :sswitch_14
        0x40 -> :sswitch_17
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;
    .registers 2
    .parameter

    .prologue
    .line 168
    const-class v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->$VALUES:[Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$SemanticHints;->value:I

    return v0
.end method

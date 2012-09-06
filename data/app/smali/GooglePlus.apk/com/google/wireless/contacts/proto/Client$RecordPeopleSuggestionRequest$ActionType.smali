.class public final enum Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

.field public static final enum CIRCLE_MEMBER_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

.field public static final enum CIRCLE_MEMBER_REJECT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

.field public static final enum SUGGESTION_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

.field public static final enum SUGGESTION_REJECT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;",
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

    .line 11561
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    const-string v1, "CIRCLE_MEMBER_ACCEPT"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->CIRCLE_MEMBER_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 11562
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    const-string v1, "CIRCLE_MEMBER_REJECT"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->CIRCLE_MEMBER_REJECT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 11563
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    const-string v1, "SUGGESTION_ACCEPT"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->SUGGESTION_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 11564
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    const-string v1, "SUGGESTION_REJECT"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->SUGGESTION_REJECT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 11559
    new-array v0, v6, [Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->CIRCLE_MEMBER_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->CIRCLE_MEMBER_REJECT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->SUGGESTION_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->SUGGESTION_REJECT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 11590
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 11599
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11600
    iput p4, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->value:I

    .line 11601
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;
    .registers 2
    .parameter "value"

    .prologue
    .line 11576
    packed-switch p0, :pswitch_data_12

    .line 11581
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 11577
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->CIRCLE_MEMBER_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    goto :goto_4

    .line 11578
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->CIRCLE_MEMBER_REJECT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    goto :goto_4

    .line 11579
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->SUGGESTION_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    goto :goto_4

    .line 11580
    :pswitch_e
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->SUGGESTION_REJECT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    goto :goto_4

    .line 11576
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;
    .registers 2
    .parameter "name"

    .prologue
    .line 11559
    const-class v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;
    .registers 1

    .prologue
    .line 11559
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 11573
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->value:I

    return v0
.end method

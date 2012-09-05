.class public final enum Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
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
    name = "UILocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

.field public static final enum ANDROID_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

.field public static final enum ANDROID_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

.field public static final enum IPHONE_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

.field public static final enum IPHONE_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

.field public static final enum MOBILEWEB_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

.field public static final enum MOBILEWEB_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11508
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    const-string v1, "MOBILEWEB_CIRCLE_MEMBERS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->MOBILEWEB_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 11509
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    const-string v1, "MOBILEWEB_SUGGESTIONS"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->MOBILEWEB_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 11510
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    const-string v1, "IPHONE_CIRCLE_MEMBERS"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->IPHONE_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 11511
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    const-string v1, "IPHONE_SUGGESTIONS"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->IPHONE_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 11512
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    const-string v1, "ANDROID_CIRCLE_MEMBERS"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->ANDROID_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 11513
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    const-string v1, "ANDROID_SUGGESTIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->ANDROID_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 11506
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->MOBILEWEB_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->MOBILEWEB_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->IPHONE_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->IPHONE_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->ANDROID_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->ANDROID_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 11543
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 11552
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11553
    iput p4, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->value:I

    .line 11554
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
    .registers 2
    .parameter "value"

    .prologue
    .line 11527
    packed-switch p0, :pswitch_data_18

    .line 11534
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 11528
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->MOBILEWEB_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    goto :goto_4

    .line 11529
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->MOBILEWEB_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    goto :goto_4

    .line 11530
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->IPHONE_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    goto :goto_4

    .line 11531
    :pswitch_e
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->IPHONE_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    goto :goto_4

    .line 11532
    :pswitch_11
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->ANDROID_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    goto :goto_4

    .line 11533
    :pswitch_14
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->ANDROID_SUGGESTIONS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    goto :goto_4

    .line 11527
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
    .registers 2
    .parameter

    .prologue
    .line 11506
    const-class v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
    .registers 1

    .prologue
    .line 11506
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 11524
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->value:I

    return v0
.end method

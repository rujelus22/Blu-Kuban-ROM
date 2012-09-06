.class public final enum Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
.super Ljava/lang/Enum;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RsvpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

.field public static final enum ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

.field public static final enum CHECKIN:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

.field public static final enum INVITED:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

.field public static final enum MAYBE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

.field public static final enum NOT_ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

.field public static final enum NOT_ATTENDING_AND_REMOVE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

.field public static final enum NOT_RESPONDED:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;",
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

    .line 1502
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    const-string v1, "ATTENDING"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 1503
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    const-string v1, "NOT_ATTENDING"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 1504
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    const-string v1, "CHECKIN"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->CHECKIN:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 1505
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    const-string v1, "NOT_ATTENDING_AND_REMOVE"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_ATTENDING_AND_REMOVE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 1506
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    const-string v1, "NOT_RESPONDED"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_RESPONDED:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 1507
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    const-string v1, "MAYBE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->MAYBE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 1508
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    const-string v1, "INVITED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->INVITED:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 1500
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->CHECKIN:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_ATTENDING_AND_REMOVE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_RESPONDED:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->MAYBE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->INVITED:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->$VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 1540
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType$1;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1549
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1550
    iput p4, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->value:I

    .line 1551
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    .registers 2
    .parameter "value"

    .prologue
    .line 1523
    packed-switch p0, :pswitch_data_1a

    .line 1531
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1524
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    goto :goto_4

    .line 1525
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    goto :goto_4

    .line 1526
    :pswitch_b
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->CHECKIN:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    goto :goto_4

    .line 1527
    :pswitch_e
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_ATTENDING_AND_REMOVE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    goto :goto_4

    .line 1528
    :pswitch_11
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->NOT_RESPONDED:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    goto :goto_4

    .line 1529
    :pswitch_14
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->MAYBE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    goto :goto_4

    .line 1530
    :pswitch_17
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->INVITED:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    goto :goto_4

    .line 1523
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    .registers 2
    .parameter "name"

    .prologue
    .line 1500
    const-class v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    .registers 1

    .prologue
    .line 1500
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->$VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v0}, [Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1520
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->value:I

    return v0
.end method

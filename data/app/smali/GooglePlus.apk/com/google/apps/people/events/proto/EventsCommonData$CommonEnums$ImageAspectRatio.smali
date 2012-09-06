.class public final enum Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
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
    name = "ImageAspectRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

.field public static final enum ICON:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

.field public static final enum LARGE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

.field public static final enum MEDIUM:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

.field public static final enum SMALL:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;",
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

    .line 1649
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->SMALL:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    .line 1650
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->MEDIUM:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    .line 1651
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->LARGE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    .line 1652
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    const-string v1, "ICON"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->ICON:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    .line 1647
    new-array v0, v6, [Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->SMALL:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->MEDIUM:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->LARGE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->ICON:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->$VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    .line 1678
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio$1;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1687
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1688
    iput p4, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->value:I

    .line 1689
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
    .registers 2
    .parameter "value"

    .prologue
    .line 1664
    packed-switch p0, :pswitch_data_12

    .line 1669
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1665
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->SMALL:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    goto :goto_4

    .line 1666
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->MEDIUM:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    goto :goto_4

    .line 1667
    :pswitch_b
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->LARGE:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    goto :goto_4

    .line 1668
    :pswitch_e
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->ICON:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    goto :goto_4

    .line 1664
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
    .registers 2
    .parameter "name"

    .prologue
    .line 1647
    const-class v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
    .registers 1

    .prologue
    .line 1647
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->$VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    invoke-virtual {v0}, [Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1661
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->value:I

    return v0
.end method

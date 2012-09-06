.class public final enum Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;
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
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

.field public static final enum GIF:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

.field public static final enum JPG:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

.field public static final enum MOV:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

.field public static final enum OGV:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;",
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

    .line 1602
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    const-string v1, "GIF"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->GIF:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    .line 1603
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    const-string v1, "JPG"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->JPG:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    .line 1604
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    const-string v1, "MOV"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->MOV:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    .line 1605
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    const-string v1, "OGV"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->OGV:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    .line 1600
    new-array v0, v6, [Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->GIF:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->JPG:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->MOV:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->OGV:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->$VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    .line 1631
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat$1;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1640
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1641
    iput p4, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->value:I

    .line 1642
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;
    .registers 2
    .parameter "value"

    .prologue
    .line 1617
    packed-switch p0, :pswitch_data_12

    .line 1622
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1618
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->GIF:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    goto :goto_4

    .line 1619
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->JPG:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    goto :goto_4

    .line 1620
    :pswitch_b
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->MOV:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    goto :goto_4

    .line 1621
    :pswitch_e
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->OGV:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    goto :goto_4

    .line 1617
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;
    .registers 2
    .parameter "name"

    .prologue
    .line 1600
    const-class v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;
    .registers 1

    .prologue
    .line 1600
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->$VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    invoke-virtual {v0}, [Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1614
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->value:I

    return v0
.end method

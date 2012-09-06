.class public final enum Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;
.super Ljava/lang/Enum;
.source "Constants.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants$ProtoConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RedirectBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior; = null

.field public static final enum REDIRECT_RING_OTHER_PHONES:Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior; = null

.field public static final REDIRECT_RING_OTHER_PHONES_VALUE:I = 0x0

.field public static final enum REDIRECT_STRAIGHT_TO_VOICEMAIL:Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior; = null

.field public static final REDIRECT_STRAIGHT_TO_VOICEMAIL_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 712
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    const-string v1, "REDIRECT_RING_OTHER_PHONES"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->REDIRECT_RING_OTHER_PHONES:Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    .line 713
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    const-string v1, "REDIRECT_STRAIGHT_TO_VOICEMAIL"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->REDIRECT_STRAIGHT_TO_VOICEMAIL:Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    .line 710
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    sget-object v1, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->REDIRECT_RING_OTHER_PHONES:Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->REDIRECT_STRAIGHT_TO_VOICEMAIL:Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->$VALUES:[Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    .line 735
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 744
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 745
    iput p4, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->value:I

    .line 746
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;
    .registers 2
    .parameter "value"

    .prologue
    .line 723
    packed-switch p0, :pswitch_data_c

    .line 726
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 724
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->REDIRECT_RING_OTHER_PHONES:Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    goto :goto_4

    .line 725
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->REDIRECT_STRAIGHT_TO_VOICEMAIL:Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    goto :goto_4

    .line 723
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;
    .registers 2
    .parameter "name"

    .prologue
    .line 710
    const-class v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;
    .registers 1

    .prologue
    .line 710
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->$VALUES:[Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 720
    iget v0, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;->value:I

    return v0
.end method

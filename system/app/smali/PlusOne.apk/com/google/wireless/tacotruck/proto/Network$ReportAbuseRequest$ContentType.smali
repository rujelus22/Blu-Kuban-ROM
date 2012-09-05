.class public final enum Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

.field public static final enum PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;",
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

    .line 22157
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    const-string v1, "PLATFORM"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 22155
    new-array v0, v3, [Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 22177
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 22186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22187
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->value:I

    .line 22188
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    .registers 2
    .parameter "value"

    .prologue
    .line 22166
    packed-switch p0, :pswitch_data_8

    .line 22168
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 22167
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    goto :goto_4

    .line 22166
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    .registers 2
    .parameter

    .prologue
    .line 22155
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    .registers 1

    .prologue
    .line 22155
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 22163
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->value:I

    return v0
.end method

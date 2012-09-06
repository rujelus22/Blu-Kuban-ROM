.class public final enum Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
.super Ljava/lang/Enum;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AbuseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

.field public static final enum APPEALED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

.field public static final enum NOT_REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

.field public static final enum REMOVED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

.field public static final enum REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;",
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

    .line 145
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    const-string v1, "NOT_REPORTED"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->NOT_REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    .line 146
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    const-string v1, "REPORTED"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    .line 147
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    const-string v1, "APPEALED"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->APPEALED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    .line 148
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    const-string v1, "REMOVED"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->REMOVED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    .line 143
    new-array v0, v6, [Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    sget-object v1, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->NOT_REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->APPEALED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->REMOVED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->$VALUES:[Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    .line 174
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus$1;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus$1;-><init>()V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 184
    iput p4, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->value:I

    .line 185
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
    .registers 2
    .parameter "value"

    .prologue
    .line 160
    packed-switch p0, :pswitch_data_12

    .line 165
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 161
    :pswitch_5
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->NOT_REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    goto :goto_4

    .line 162
    :pswitch_8
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->REPORTED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    goto :goto_4

    .line 163
    :pswitch_b
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->APPEALED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    goto :goto_4

    .line 164
    :pswitch_e
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->REMOVED:Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    goto :goto_4

    .line 160
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 143
    const-class v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;
    .registers 1

    .prologue
    .line 143
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->$VALUES:[Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    invoke-virtual {v0}, [Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEvent$AbuseStatus;->value:I

    return v0
.end method

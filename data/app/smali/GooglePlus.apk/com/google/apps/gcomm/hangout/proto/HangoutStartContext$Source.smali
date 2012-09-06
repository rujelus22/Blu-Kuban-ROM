.class public final enum Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;
.super Ljava/lang/Enum;
.source "HangoutStartContext.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field public static final enum FLIPPY:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field public static final enum GMAIL:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field public static final enum INVITE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field public static final enum MINIBAR_JOIN:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field public static final enum MINIBAR_START:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field public static final enum SANDBAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field public static final enum STREAM:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field public static final enum YOUTUBE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field public static final enum YOUTUBE_PARTNER_MAILOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;",
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    const-string v1, "SANDBAR"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->SANDBAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 117
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    const-string v1, "STREAM"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->STREAM:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 118
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    const-string v1, "MINIBAR_START"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->MINIBAR_START:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 119
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    const-string v1, "MINIBAR_JOIN"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->MINIBAR_JOIN:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 120
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    const-string v1, "INVITE"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->INVITE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 121
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    const-string v1, "YOUTUBE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->YOUTUBE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 122
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    const-string v1, "GMAIL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->GMAIL:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 123
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    const-string v1, "FLIPPY"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->FLIPPY:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 124
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    const-string v1, "YOUTUBE_PARTNER_MAILOUT"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->YOUTUBE_PARTNER_MAILOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 114
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->SANDBAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->STREAM:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->MINIBAR_START:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->MINIBAR_JOIN:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->INVITE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->YOUTUBE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->GMAIL:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->FLIPPY:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->YOUTUBE_PARTNER_MAILOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    .line 160
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source$1;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source$1;-><init>()V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p4, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->value:I

    .line 171
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;
    .registers 2
    .parameter "value"

    .prologue
    .line 141
    packed-switch p0, :pswitch_data_20

    .line 151
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 142
    :pswitch_5
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->SANDBAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    goto :goto_4

    .line 143
    :pswitch_8
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->STREAM:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    goto :goto_4

    .line 144
    :pswitch_b
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->MINIBAR_START:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    goto :goto_4

    .line 145
    :pswitch_e
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->MINIBAR_JOIN:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    goto :goto_4

    .line 146
    :pswitch_11
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->INVITE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    goto :goto_4

    .line 147
    :pswitch_14
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->YOUTUBE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    goto :goto_4

    .line 148
    :pswitch_17
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->GMAIL:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    goto :goto_4

    .line 149
    :pswitch_1a
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->FLIPPY:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    goto :goto_4

    .line 150
    :pswitch_1d
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->YOUTUBE_PARTNER_MAILOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    goto :goto_4

    .line 141
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;
    .registers 2
    .parameter "name"

    .prologue
    .line 114
    const-class v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->$VALUES:[Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    invoke-virtual {v0}, [Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Source;->value:I

    return v0
.end method

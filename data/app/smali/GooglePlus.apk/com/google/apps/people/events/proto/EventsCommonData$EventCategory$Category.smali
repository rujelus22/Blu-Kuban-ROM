.class public final enum Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;
.super Ljava/lang/Enum;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field public static final enum DEFAULT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field public static final enum DEFAULT_SET:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field public static final enum DINNER:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field public static final enum DRINKS:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field public static final enum FEATURED:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field public static final enum HANGOUT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field public static final enum INACTIVE:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field public static final enum MOVIE:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field public static final enum PARTY:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field public static final enum STATIONERY:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;",
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

    .line 1151
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DEFAULT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1152
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const-string v1, "HANGOUT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->HANGOUT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1153
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const-string v1, "DEFAULT_SET"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DEFAULT_SET:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1154
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const-string v1, "FEATURED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->FEATURED:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1155
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const-string v1, "STATIONERY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->STATIONERY:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1156
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const-string v1, "INACTIVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->INACTIVE:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1157
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const-string v1, "DINNER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DINNER:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1158
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const-string v1, "PARTY"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->PARTY:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1159
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const-string v1, "MOVIE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->MOVIE:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1160
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const-string v1, "DRINKS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DRINKS:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1149
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DEFAULT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->HANGOUT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DEFAULT_SET:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->FEATURED:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->STATIONERY:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->INACTIVE:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DINNER:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->PARTY:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->MOVIE:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DRINKS:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->$VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1198
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category$1;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1208
    iput p4, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->value:I

    .line 1209
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;
    .registers 2
    .parameter "value"

    .prologue
    .line 1178
    packed-switch p0, :pswitch_data_24

    .line 1189
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1179
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DEFAULT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_4

    .line 1180
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->HANGOUT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_4

    .line 1181
    :pswitch_b
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DEFAULT_SET:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_4

    .line 1182
    :pswitch_e
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->FEATURED:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_4

    .line 1183
    :pswitch_11
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->STATIONERY:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_4

    .line 1184
    :pswitch_14
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->INACTIVE:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_4

    .line 1185
    :pswitch_17
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DINNER:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_4

    .line 1186
    :pswitch_1a
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->PARTY:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_4

    .line 1187
    :pswitch_1d
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->MOVIE:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_4

    .line 1188
    :pswitch_20
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DRINKS:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_4

    .line 1178
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_5
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;
    .registers 2
    .parameter "name"

    .prologue
    .line 1149
    const-class v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;
    .registers 1

    .prologue
    .line 1149
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->$VALUES:[Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    invoke-virtual {v0}, [Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1175
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->value:I

    return v0
.end method

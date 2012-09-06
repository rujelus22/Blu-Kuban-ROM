.class public final enum Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

.field public static final enum IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

.field public static final enum IN_MY_GROUPS_OR_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 10263
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    const-string v1, "IN_MY_CIRCLES"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    .line 10264
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    const-string v1, "IN_MY_GROUPS_OR_CIRCLES"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->IN_MY_GROUPS_OR_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    .line 10261
    new-array v0, v4, [Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->IN_MY_GROUPS_OR_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    .line 10286
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 10295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10296
    iput p4, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->value:I

    .line 10297
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 10274
    packed-switch p0, :pswitch_data_c

    .line 10277
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 10275
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    goto :goto_4

    .line 10276
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->IN_MY_GROUPS_OR_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    goto :goto_4

    .line 10274
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 10261
    const-class v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
    .registers 1

    .prologue
    .line 10261
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 10271
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->value:I

    return v0
.end method

.class public final enum Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
.super Ljava/lang/Enum;
.source "Contact.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

.field public static final enum CELEBRITY:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

.field public static final enum PERSONAL:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;",
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

    .line 5186
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    const-string v1, "PERSONAL"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    .line 5187
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    const-string v1, "CELEBRITY"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->CELEBRITY:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    .line 5184
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->CELEBRITY:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    .line 5209
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 5218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5219
    iput p4, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->value:I

    .line 5220
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 5197
    packed-switch p0, :pswitch_data_c

    .line 5200
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 5198
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    goto :goto_4

    .line 5199
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->CELEBRITY:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    goto :goto_4

    .line 5197
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 5184
    const-class v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    .registers 1

    .prologue
    .line 5184
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 5194
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->value:I

    return v0
.end method

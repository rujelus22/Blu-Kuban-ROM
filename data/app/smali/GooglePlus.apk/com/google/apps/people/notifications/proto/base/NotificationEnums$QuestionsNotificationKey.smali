.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;
.super Ljava/lang/Enum;
.source "NotificationEnums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/notifications/proto/base/NotificationEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuestionsNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field public static final enum DOMAIN_OF_USER:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field public static final enum LEARNED_INTERESTS_HTML:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field public static final enum LEARNED_INTERESTS_PLAIN:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field public static final enum QUESTION_TAG:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field public static final enum QUESTION_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field public static final enum QUESTION_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field public static final enum REPLY_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field public static final enum SAMPLE_QUESTION_1:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field public static final enum SAMPLE_QUESTION_2:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field public static final enum SAMPLE_QUESTION_3:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;",
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
    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 850
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const-string v1, "QUESTION_TEXT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->QUESTION_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 851
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const-string v1, "QUESTION_TAG"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->QUESTION_TAG:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 852
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const-string v1, "REPLY_TEXT"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->REPLY_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 853
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const-string v1, "QUESTION_URL"

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->QUESTION_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 854
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const-string v1, "DOMAIN_OF_USER"

    invoke-direct {v0, v1, v7, v7, v9}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->DOMAIN_OF_USER:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 855
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const-string v1, "LEARNED_INTERESTS_HTML"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->LEARNED_INTERESTS_HTML:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 856
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const-string v1, "LEARNED_INTERESTS_PLAIN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->LEARNED_INTERESTS_PLAIN:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 857
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const-string v1, "SAMPLE_QUESTION_1"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->SAMPLE_QUESTION_1:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 858
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const-string v1, "SAMPLE_QUESTION_2"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->SAMPLE_QUESTION_2:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 859
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const-string v1, "SAMPLE_QUESTION_3"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->SAMPLE_QUESTION_3:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 848
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->QUESTION_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->QUESTION_TAG:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->REPLY_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->QUESTION_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->DOMAIN_OF_USER:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->LEARNED_INTERESTS_HTML:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->LEARNED_INTERESTS_PLAIN:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->SAMPLE_QUESTION_1:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->SAMPLE_QUESTION_2:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    aput-object v1, v0, v9

    const/16 v1, 0x9

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->SAMPLE_QUESTION_3:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    .line 897
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 906
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 907
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->value:I

    .line 908
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;
    .registers 2
    .parameter "value"

    .prologue
    .line 877
    packed-switch p0, :pswitch_data_24

    .line 888
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 878
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->QUESTION_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    goto :goto_4

    .line 879
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->QUESTION_TAG:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    goto :goto_4

    .line 880
    :pswitch_b
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->REPLY_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    goto :goto_4

    .line 881
    :pswitch_e
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->QUESTION_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    goto :goto_4

    .line 882
    :pswitch_11
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->DOMAIN_OF_USER:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    goto :goto_4

    .line 883
    :pswitch_14
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->LEARNED_INTERESTS_HTML:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    goto :goto_4

    .line 884
    :pswitch_17
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->LEARNED_INTERESTS_PLAIN:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    goto :goto_4

    .line 885
    :pswitch_1a
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->SAMPLE_QUESTION_1:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    goto :goto_4

    .line 886
    :pswitch_1d
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->SAMPLE_QUESTION_2:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    goto :goto_4

    .line 887
    :pswitch_20
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->SAMPLE_QUESTION_3:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    goto :goto_4

    .line 877
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;
    .registers 2
    .parameter "name"

    .prologue
    .line 848
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;
    .registers 1

    .prologue
    .line 848
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 874
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;->value:I

    return v0
.end method

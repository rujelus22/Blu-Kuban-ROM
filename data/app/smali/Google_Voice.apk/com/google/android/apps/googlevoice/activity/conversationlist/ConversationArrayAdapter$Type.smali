.class public final enum Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;
.super Ljava/lang/Enum;
.source "ConversationArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

.field public static final enum ERROR:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

.field public static final enum INFO:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

.field public static final enum NONE:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

.field public static final enum PROGRESS:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->NONE:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->INFO:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->ERROR:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    const-string v1, "PROGRESS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->PROGRESS:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->NONE:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->INFO:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->ERROR:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->PROGRESS:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->$VALUES:[Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->$VALUES:[Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    return-object v0
.end method

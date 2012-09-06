.class public final enum Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;
.super Ljava/lang/Enum;
.source "VoicemailProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

.field public static final enum ASCENDING:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

.field public static final enum DEFAULT:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

.field public static final enum DESCENDING:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    const-string v1, "ASCENDING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->ASCENDING:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    .line 29
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    const-string v1, "DESCENDING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->DESCENDING:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    .line 31
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->DEFAULT:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    sget-object v1, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->ASCENDING:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->DESCENDING:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->DEFAULT:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->$VALUES:[Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;
    .registers 2
    .parameter "name"

    .prologue
    .line 27
    const-class v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->$VALUES:[Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    return-object v0
.end method

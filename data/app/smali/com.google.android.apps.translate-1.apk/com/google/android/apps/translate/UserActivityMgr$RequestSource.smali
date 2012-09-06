.class public final enum Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;
.super Ljava/lang/Enum;
.source "UserActivityMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/UserActivityMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

.field public static final enum CONV:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

.field public static final enum CONV_EDIT:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

.field public static final enum EDIT:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

.field public static final enum SL_CHANGE:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

.field public static final enum SMS:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

.field public static final enum SUGGEST:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

.field public static final enum SWAP:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

.field public static final enum TL_CHANGE:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

.field public static final enum UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;


# instance fields
.field private final mParamName:Ljava/lang/String;

.field private final mParamValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    const-string v1, "UNKNOWN"

    const-string v2, "&source="

    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 59
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    const-string v1, "SMS"

    const-string v2, "&source="

    const-string v3, "sms"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SMS:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 60
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    const-string v1, "SWAP"

    const-string v2, "&swap="

    const-string v3, "1"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SWAP:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 61
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    const-string v1, "SL_CHANGE"

    const-string v2, "&psl="

    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SL_CHANGE:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 62
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    const-string v1, "TL_CHANGE"

    const-string v2, "&ptl="

    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->TL_CHANGE:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 63
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    const-string v1, "SUGGEST"

    const/4 v2, 0x5

    const-string v3, "&source="

    const-string v4, "suggest"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SUGGEST:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 64
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    const-string v1, "CONV"

    const/4 v2, 0x6

    const-string v3, "&source="

    const-string v4, "conv"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->CONV:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 65
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    const-string v1, "CONV_EDIT"

    const/4 v2, 0x7

    const-string v3, "&source="

    const-string v4, "conv-edit"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->CONV_EDIT:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 66
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    const-string v1, "EDIT"

    const/16 v2, 0x8

    const-string v3, "&source="

    const-string v4, "edit"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->EDIT:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SMS:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SWAP:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SL_CHANGE:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->TL_CHANGE:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SUGGEST:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->CONV:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->CONV_EDIT:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->EDIT:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->$VALUES:[Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter "cgiParamName"
    .parameter "cgiParamValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->mParamName:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->mParamValue:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;
    .registers 2
    .parameter "name"

    .prologue
    .line 57
    const-class v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->$VALUES:[Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    return-object v0
.end method


# virtual methods
.method public paramName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->mParamName:Ljava/lang/String;

    return-object v0
.end method

.method public paramValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->mParamValue:Ljava/lang/String;

    return-object v0
.end method

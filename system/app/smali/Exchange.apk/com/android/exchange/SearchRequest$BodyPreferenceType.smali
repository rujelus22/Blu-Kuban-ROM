.class public final enum Lcom/android/exchange/SearchRequest$BodyPreferenceType;
.super Ljava/lang/Enum;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BodyPreferenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exchange/SearchRequest$BodyPreferenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exchange/SearchRequest$BodyPreferenceType;

.field public static final enum HTML:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

.field public static final enum INVALID:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

.field public static final enum MIME:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

.field public static final enum PLAIN_TEXT:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

.field public static final enum RTF:Lcom/android/exchange/SearchRequest$BodyPreferenceType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    const-string v1, "PLAIN_TEXT"

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->PLAIN_TEXT:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    new-instance v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v3}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->HTML:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    new-instance v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    const-string v1, "RTF"

    invoke-direct {v0, v1, v4}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->RTF:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    new-instance v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    const-string v1, "MIME"

    invoke-direct {v0, v1, v5}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->MIME:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    new-instance v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v6}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->INVALID:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->PLAIN_TEXT:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->HTML:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->RTF:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->MIME:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->INVALID:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->$VALUES:[Lcom/android/exchange/SearchRequest$BodyPreferenceType;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$BodyPreferenceType;
    .registers 2
    .parameter

    .prologue
    .line 83
    const-class v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    return-object v0
.end method

.method public static values()[Lcom/android/exchange/SearchRequest$BodyPreferenceType;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->$VALUES:[Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v0}, [Lcom/android/exchange/SearchRequest$BodyPreferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    return-object v0
.end method

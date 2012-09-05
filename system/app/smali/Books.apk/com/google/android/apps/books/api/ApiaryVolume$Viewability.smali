.class final enum Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;
.super Ljava/lang/Enum;
.source "ApiaryVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/api/ApiaryVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Viewability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

.field public static final enum ALL_PAGES:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

.field public static final enum NO_PAGES:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

.field public static final enum PARTIAL:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

.field public static final enum UNKNOWN:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    const-string v1, "ALL_PAGES"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->ALL_PAGES:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    .line 195
    new-instance v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    const-string v1, "PARTIAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->PARTIAL:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    .line 196
    new-instance v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    const-string v1, "NO_PAGES"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->NO_PAGES:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    .line 197
    new-instance v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->UNKNOWN:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    .line 193
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    sget-object v1, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->ALL_PAGES:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->PARTIAL:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->NO_PAGES:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->UNKNOWN:Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->$VALUES:[Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

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
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;
    .registers 2
    .parameter

    .prologue
    .line 193
    const-class v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;
    .registers 1

    .prologue
    .line 193
    sget-object v0, Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->$VALUES:[Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/api/ApiaryVolume$Viewability;

    return-object v0
.end method

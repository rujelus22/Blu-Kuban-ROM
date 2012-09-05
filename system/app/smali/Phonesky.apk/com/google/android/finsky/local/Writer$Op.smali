.class public final enum Lcom/google/android/finsky/local/Writer$Op;
.super Ljava/lang/Enum;
.source "Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/local/Writer$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/local/Writer$Op;

.field public static final enum DELETE:Lcom/google/android/finsky/local/Writer$Op;

.field public static final enum INSERT:Lcom/google/android/finsky/local/Writer$Op;

.field public static final enum POISON:Lcom/google/android/finsky/local/Writer$Op;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/google/android/finsky/local/Writer$Op;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/local/Writer$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/local/Writer$Op;->INSERT:Lcom/google/android/finsky/local/Writer$Op;

    .line 17
    new-instance v0, Lcom/google/android/finsky/local/Writer$Op;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/local/Writer$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/local/Writer$Op;->DELETE:Lcom/google/android/finsky/local/Writer$Op;

    .line 18
    new-instance v0, Lcom/google/android/finsky/local/Writer$Op;

    const-string v1, "POISON"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/local/Writer$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/local/Writer$Op;->POISON:Lcom/google/android/finsky/local/Writer$Op;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/local/Writer$Op;

    sget-object v1, Lcom/google/android/finsky/local/Writer$Op;->INSERT:Lcom/google/android/finsky/local/Writer$Op;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/local/Writer$Op;->DELETE:Lcom/google/android/finsky/local/Writer$Op;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/local/Writer$Op;->POISON:Lcom/google/android/finsky/local/Writer$Op;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/local/Writer$Op;->$VALUES:[Lcom/google/android/finsky/local/Writer$Op;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/local/Writer$Op;
    .registers 2
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/google/android/finsky/local/Writer$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/Writer$Op;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/local/Writer$Op;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/finsky/local/Writer$Op;->$VALUES:[Lcom/google/android/finsky/local/Writer$Op;

    invoke-virtual {v0}, [Lcom/google/android/finsky/local/Writer$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/local/Writer$Op;

    return-object v0
.end method

.class public final enum Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;
.super Ljava/lang/Enum;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnglishCapsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

.field public static final enum CAPSLOCK:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

.field public static final enum NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

.field public static final enum SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

.field public static final enum UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 379
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    const-string v1, "SHIFTED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    const-string v1, "CAPSLOCK"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->CAPSLOCK:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->CAPSLOCK:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->$VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

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
    .line 379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;
    .registers 2
    .parameter

    .prologue
    .line 379
    const-class v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;
    .registers 1

    .prologue
    .line 379
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->$VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {v0}, [Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    return-object v0
.end method

.class public final enum Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;
.super Ljava/lang/Enum;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnglishT9Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

.field public static final enum OFF:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

.field public static final enum ON:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

.field public static final enum UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->OFF:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->ON:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->OFF:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->ON:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->$VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

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
    .line 382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;
    .registers 2
    .parameter

    .prologue
    .line 382
    const-class v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;
    .registers 1

    .prologue
    .line 382
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->$VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    invoke-virtual {v0}, [Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    return-object v0
.end method

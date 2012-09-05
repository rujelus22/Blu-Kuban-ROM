.class public final enum Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;
.super Ljava/lang/Enum;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PopupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

.field public static final enum INPUTMETHOD:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

.field public static final enum LANGUAGE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

.field public static final enum NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 420
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    const-string v1, "INPUTMETHOD"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->INPUTMETHOD:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    const-string v1, "LANGUAGE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->LANGUAGE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->INPUTMETHOD:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->LANGUAGE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->$VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

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
    .line 420
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;
    .registers 2
    .parameter

    .prologue
    .line 420
    const-class v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;
    .registers 1

    .prologue
    .line 420
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->$VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    invoke-virtual {v0}, [Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    return-object v0
.end method

.class public final enum Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;
.super Ljava/lang/Enum;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capitalize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

.field public static final enum CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

.field public static final enum NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

.field public static final enum SENTENCES:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

.field public static final enum WORDS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 376
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    const-string v1, "SENTENCES"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->SENTENCES:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    const-string v1, "WORDS"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->WORDS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    const-string v1, "CHARACTERS"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->SENTENCES:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->WORDS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->$VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

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
    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;
    .registers 2
    .parameter

    .prologue
    .line 376
    const-class v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;
    .registers 1

    .prologue
    .line 376
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->$VALUES:[Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    invoke-virtual {v0}, [Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    return-object v0
.end method

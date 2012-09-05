.class Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;
.super Ljava/lang/Object;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceResults"
.end annotation


# instance fields
.field alternatives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;


# direct methods
.method private constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 2
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    return-void
.end method

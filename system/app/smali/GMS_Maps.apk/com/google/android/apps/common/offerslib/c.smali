.class Lcom/google/android/apps/common/offerslib/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/c;->a:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/c;->b:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/c;->a:Ljava/lang/String;

    .line 23
    if-nez p1, :cond_8

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/c;->b:Ljava/util/regex/Pattern;

    .line 28
    :goto_7
    return-void

    .line 26
    :cond_8
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/c;->b:Ljava/util/regex/Pattern;

    goto :goto_7
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/c;->b:Ljava/util/regex/Pattern;

    if-nez v1, :cond_6

    .line 39
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

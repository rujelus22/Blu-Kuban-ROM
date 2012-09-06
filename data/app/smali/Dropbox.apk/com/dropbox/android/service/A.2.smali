.class final Lcom/dropbox/android/service/A;
.super Lcom/dropbox/android/service/B;
.source "panda.py"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/dropbox/android/service/B;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/service/x;)V
    .registers 2
    .parameter

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/dropbox/android/service/A;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 498
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 503
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldbxyzptlk/j/m;->c(Ljava/lang/String;)V

    .line 504
    return-void
.end method

.class public Lcom/sec/android/inputmethod/axt9/AxT9Config;
.super Ljava/lang/Object;
.source "AxT9Config.java"


# static fields
.field public static DA_MODE:Z

.field private static final INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9Config;

.field public static LANG_LIST:Ljava/lang/String;

.field public static final PRODUCT_GALAXY_SPICA:Z

.field public static final PRODUCT_HOUDINI:Z

.field public static final PRODUCT_ORION:Z

.field public static final PRODUCT_SPICA:Z

.field public static final PRODUCT_UNKNOWN:Z

.field public static USE_TRACE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    const-string v0, "en(US);es;"

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->LANG_LIST:Ljava/lang/String;

    .line 63
    const-string v0, "galaxy_s"

    const-string v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->PRODUCT_UNKNOWN:Z

    .line 64
    const-string v0, "galaxy_s"

    const-string v3, "houdini"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "galaxy_s"

    const-string v3, "SGH-T939"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_24
    move v0, v2

    :goto_25
    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->PRODUCT_HOUDINI:Z

    .line 66
    const-string v0, "galaxy_s"

    const-string v3, "spica"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->PRODUCT_SPICA:Z

    .line 67
    const-string v0, "galaxy_s"

    const-string v3, "orion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "galaxy_s"

    const-string v3, "GT-I7500"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_45
    :goto_45
    sput-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9Config;->PRODUCT_ORION:Z

    .line 69
    const-string v0, "galaxy_s"

    const-string v2, "sec_spica"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->PRODUCT_GALAXY_SPICA:Z

    .line 82
    sput-boolean v1, Lcom/sec/android/inputmethod/axt9/AxT9Config;->USE_TRACE:Z

    .line 84
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Config;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9Config;

    .line 106
    sput-boolean v1, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    return-void

    :cond_5d
    move v0, v1

    .line 64
    goto :goto_25

    :cond_5f
    move v2, v1

    .line 67
    goto :goto_45
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Config;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9Config;

    return-object v0
.end method

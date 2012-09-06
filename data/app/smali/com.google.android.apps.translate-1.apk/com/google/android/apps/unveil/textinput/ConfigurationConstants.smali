.class public Lcom/google/android/apps/unveil/textinput/ConfigurationConstants;
.super Ljava/lang/Object;
.source "ConfigurationConstants.java"


# static fields
.field public static final IS_RELEASE_BUILD:Z = false

.field public static final LOOPER_FPS:I = 0x1e

.field public static final SMUDGE_ENTER_FADE_DURATION_MS:I = 0x258

.field public static final SMUDGE_EXIT_FADE_DURATION_MS:I = 0x190

.field public static final TEXT_RESULT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Text"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Contact"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/ConfigurationConstants;->TEXT_RESULT_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTextResult(Lcom/google/android/apps/unveil/results/ResultItem;)Z
    .registers 3
    .parameter "result"

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/apps/unveil/textinput/ConfigurationConstants;->TEXT_RESULT_TYPES:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

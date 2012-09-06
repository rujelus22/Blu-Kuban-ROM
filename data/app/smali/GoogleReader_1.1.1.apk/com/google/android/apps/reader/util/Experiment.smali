.class public final enum Lcom/google/android/apps/reader/util/Experiment;
.super Ljava/lang/Enum;
.source "Experiment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/reader/util/Experiment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/reader/util/Experiment;

.field public static final enum GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;


# instance fields
.field private final mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/google/android/apps/reader/util/Experiment;

    const-string v1, "GOOGLE_PLUS"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/reader/util/Experiment;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    .line 19
    new-array v0, v3, [Lcom/google/android/apps/reader/util/Experiment;

    sget-object v1, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/reader/util/Experiment;->$VALUES:[Lcom/google/android/apps/reader/util/Experiment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-boolean p3, p0, Lcom/google/android/apps/reader/util/Experiment;->mEnabled:Z

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/reader/util/Experiment;
    .registers 2
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/google/android/apps/reader/util/Experiment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/reader/util/Experiment;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/reader/util/Experiment;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/apps/reader/util/Experiment;->$VALUES:[Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v0}, [Lcom/google/android/apps/reader/util/Experiment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/reader/util/Experiment;

    return-object v0
.end method


# virtual methods
.method public isDisabled()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/apps/reader/util/Experiment;->mEnabled:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/apps/reader/util/Experiment;->mEnabled:Z

    return v0
.end method

.class public abstract Lcom/google/android/finsky/config/GservicesValue;
.super Ljava/lang/Object;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;,
        Lcom/google/android/finsky/config/GservicesValue$GservicesReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;


# instance fields
.field private final mKey:Ljava/lang/String;

.field private mOverride:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/google/android/finsky/config/GservicesValue;->mKey:Ljava/lang/String;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/config/GservicesValue$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/config/GservicesValue;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/android/finsky/config/GservicesValue$GservicesReader;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    return-object v0
.end method

.method public static init(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "prefixesToCache"

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    .line 23
    return-void
.end method

.method public static partnerSetting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;
    .registers 3
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$6;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/GservicesValue;
    .registers 3
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/finsky/config/GservicesValue;
    .registers 3
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$4;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;
    .registers 3
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$3;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/GservicesValue;
    .registers 3
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$2;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;
    .registers 3
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    .line 49
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/config/GservicesValue;->retrieve()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract retrieve()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

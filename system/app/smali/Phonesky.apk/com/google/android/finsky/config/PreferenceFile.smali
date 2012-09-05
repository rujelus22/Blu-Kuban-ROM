.class public Lcom/google/android/finsky/config/PreferenceFile;
.super Ljava/lang/Object;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;,
        Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    }
.end annotation


# static fields
.field public static sAsyncSaveMethod:Ljava/lang/reflect/Method;

.field private static sContext:Landroid/content/Context;

.field public static sUseAsyncSave:Z


# instance fields
.field private final mMode:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/config/PreferenceFile;->sAsyncSaveMethod:Ljava/lang/reflect/Method;

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/config/PreferenceFile;->sUseAsyncSave:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/finsky/config/PreferenceFile;->mName:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/google/android/finsky/config/PreferenceFile;->mMode:I

    .line 53
    return-void
.end method

.method public static commit(Landroid/content/SharedPreferences$Editor;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 88
    sget-boolean v0, Lcom/google/android/finsky/config/PreferenceFile;->sUseAsyncSave:Z

    if-nez v0, :cond_a

    .line 89
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 118
    :goto_9
    return v0

    .line 92
    :cond_a
    sget-object v0, Lcom/google/android/finsky/config/PreferenceFile;->sAsyncSaveMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1b

    .line 97
    :try_start_e
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/config/PreferenceFile;->sAsyncSaveMethod:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_29

    .line 107
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/google/android/finsky/config/PreferenceFile;->sAsyncSaveMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_30

    .line 109
    :try_start_1f
    sget-object v0, Lcom/google/android/finsky/config/PreferenceFile;->sAsyncSaveMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_2d

    .line 110
    const/4 v0, 0x1

    goto :goto_9

    .line 101
    :catch_29
    move-exception v0

    .line 102
    sput-boolean v3, Lcom/google/android/finsky/config/PreferenceFile;->sUseAsyncSave:Z

    goto :goto_1b

    .line 111
    :catch_2d
    move-exception v0

    .line 114
    sput-boolean v3, Lcom/google/android/finsky/config/PreferenceFile;->sUseAsyncSave:Z

    .line 118
    :cond_30
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_9
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 45
    sput-object p0, Lcom/google/android/finsky/config/PreferenceFile;->sContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public open()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/finsky/config/PreferenceFile;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/config/PreferenceFile;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/config/PreferenceFile;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public prefixPreference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .registers 4
    .parameter "prefix"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$6;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .registers 4
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$3;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$3;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .registers 4
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$4;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$4;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .registers 4
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$1;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .registers 4
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$2;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$2;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

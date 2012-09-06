.class Lcom/google/android/apps/common/offerslib/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

.field private final b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/u;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    invoke-direct {p0}, Lcom/google/android/apps/common/offerslib/u;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/u;->b:Ljava/lang/reflect/Method;

    .line 953
    return-void
.end method

.method private a()Ljava/lang/reflect/Method;
    .registers 4

    .prologue
    .line 957
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    .line 960
    :goto_b
    return-object v0

    .line 958
    :catch_c
    move-exception v0

    .line 960
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .registers 6
    .parameter

    .prologue
    .line 969
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/u;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_26

    .line 971
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/u;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_c} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_c} :catch_44

    .line 989
    :goto_c
    return-void

    .line 973
    :catch_d
    move-exception v0

    .line 976
    const-string v1, "OfferDetailsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when trying to call Editor.apply(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_26
    :goto_26
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c

    .line 977
    :catch_2a
    move-exception v0

    .line 980
    const-string v1, "OfferDetailsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when trying to call Editor.apply(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 981
    :catch_44
    move-exception v0

    .line 985
    const-string v1, "OfferDetailsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when trying to call Editor.apply(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

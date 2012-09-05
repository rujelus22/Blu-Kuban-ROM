.class public final Llj;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llj$1;
    }
.end annotation


# instance fields
.field final a:Lhq;

.field final b:Lju;

.field final c:Lhx$a;

.field final d:Lgy;

.field protected e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lhq;Lju;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Llj;->a:Lhq;

    .line 44
    iput-object p2, p0, Llj;->b:Lju;

    .line 45
    invoke-virtual {p1}, Lhq;->g()Lhx$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lju;->a(Lhx$a;)Lhx$a;

    move-result-object v0

    iput-object v0, p0, Llj;->c:Lhx$a;

    .line 46
    iget-object v0, p0, Llj;->a:Lhq;

    invoke-virtual {v0}, Lhq;->a()Lgy;

    move-result-object v0

    iput-object v0, p0, Llj;->d:Lgy;

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    .line 185
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 186
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    goto :goto_0

    .line 188
    :cond_c
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_13

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 189
    :cond_13
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 190
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Llj;->e:Ljava/lang/Object;

    if-nez v0, :cond_43

    iget-object v0, p0, Llj;->b:Lju;

    iget-object v1, p0, Llj;->a:Lhq;

    sget-object v2, Lhq$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhq$a;

    invoke-virtual {v1, v2}, Lhq;->a(Lhq$a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lju;->a(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llj;->e:Ljava/lang/Object;

    iget-object v0, p0, Llj;->e:Ljava/lang/Object;

    if-nez v0, :cond_43

    iget-object v0, p0, Llj;->b:Lju;

    invoke-virtual {v0}, Lju;->c()Ljl;

    move-result-object v0

    iget-object v0, v0, Ljl;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has no default constructor; can not instantiate default bean value to support \'properties=JsonSerialize.Inclusion.NON_DEFAULT\' annotation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    iget-object v0, p0, Llj;->e:Ljava/lang/Object;

    .line 173
    if-eqz p2, :cond_4f

    .line 174
    const/4 v1, 0x0

    :try_start_48
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    :goto_4e
    return-object v0

    .line 176
    :cond_4f
    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_54

    move-result-object v0

    goto :goto_4e

    .line 177
    :catch_54
    move-exception v1

    invoke-static {v1, p1, v0}, Llj;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4e
.end method

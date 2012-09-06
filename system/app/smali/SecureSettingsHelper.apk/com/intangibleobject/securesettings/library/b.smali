.class public final Lcom/intangibleobject/securesettings/library/b;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static final c:Ljava/lang/String;

.field public static d:I

.field public static e:I

.field private static f:Ljava/lang/String;

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-string v0, "Secure Settings"

    sput-object v0, Lcom/intangibleobject/securesettings/library/b;->f:Ljava/lang/String;

    sput-boolean v2, Lcom/intangibleobject/securesettings/library/b;->g:Z

    sput-boolean v2, Lcom/intangibleobject/securesettings/library/b;->h:Z

    sput-boolean v2, Lcom/intangibleobject/securesettings/library/b;->i:Z

    sput-boolean v2, Lcom/intangibleobject/securesettings/library/b;->j:Z

    sput-boolean v2, Lcom/intangibleobject/securesettings/library/b;->k:Z

    const-string v0, "SecureSettings"

    sput-object v0, Lcom/intangibleobject/securesettings/library/b;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/intangibleobject/securesettings/library/b;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intangibleobject/securesettings/library/b;->m:Ljava/lang/String;

    sget-object v0, Lcom/intangibleobject/securesettings/library/b;->l:Ljava/lang/String;

    sput-object v0, Lcom/intangibleobject/securesettings/library/b;->n:Ljava/lang/String;

    const-class v0, Lcom/intangibleobject/securesettings/library/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intangibleobject/securesettings/library/b;->o:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/intangibleobject/securesettings/library/b;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/intangibleobject/securesettings/library/b;->b:I

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intangibleobject/securesettings/library/b;->c:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/intangibleobject/securesettings/library/b;->d:I

    sput v2, Lcom/intangibleobject/securesettings/library/b;->e:I

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s(): This class is non-instantiable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/intangibleobject/securesettings/library/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intangibleobject/securesettings/library/b;->n:Ljava/lang/String;

    const-string v1, "com.intangibleobject.securesettings.plugin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "SecureSettings"

    invoke-static {v0}, Lcom/intangibleobject/securesettings/library/b;->a(Ljava/lang/String;)V

    const-string v0, "Secure Settings"

    sput-object v0, Lcom/intangibleobject/securesettings/library/b;->f:Ljava/lang/String;

    :cond_18
    :goto_18
    invoke-static {p0}, Lcom/intangibleobject/securesettings/library/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/intangibleobject/securesettings/library/b;->o:Ljava/lang/String;

    const-string v1, "DEBUG"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/intangibleobject/securesettings/library/b;->h:Z

    sput-boolean v2, Lcom/intangibleobject/securesettings/library/b;->g:Z

    sput-boolean v2, Lcom/intangibleobject/securesettings/library/b;->k:Z

    :cond_2b
    invoke-static {p0}, Lcom/intangibleobject/securesettings/library/c;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/intangibleobject/securesettings/library/b;->j:Z

    sget-object v0, Lcom/intangibleobject/securesettings/library/b;->o:Ljava/lang/String;

    const-string v1, "App initialized"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_39
    sget-object v0, Lcom/intangibleobject/securesettings/library/b;->n:Ljava/lang/String;

    const-string v1, "com.intangibleobject.securesettings.helper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "SecureSettingsHelper"

    invoke-static {v0}, Lcom/intangibleobject/securesettings/library/b;->a(Ljava/lang/String;)V

    const-string v0, "Secure Settings Helper"

    sput-object v0, Lcom/intangibleobject/securesettings/library/b;->f:Ljava/lang/String;

    goto :goto_18
.end method

.method private static a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intangibleobject/securesettings/library/b;->m:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/intangibleobject/securesettings/library/b;->g:Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/intangibleobject/securesettings/library/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .registers 1

    sget-boolean v0, Lcom/intangibleobject/securesettings/library/b;->g:Z

    return v0
.end method

.method public static d()Z
    .registers 1

    sget-boolean v0, Lcom/intangibleobject/securesettings/library/b;->j:Z

    return v0
.end method

.method public static e()Z
    .registers 1

    sget-boolean v0, Lcom/intangibleobject/securesettings/library/b;->k:Z

    return v0
.end method

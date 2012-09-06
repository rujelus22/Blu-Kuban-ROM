.class public final Lcom/dropbox/android/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static a()Landroid/content/Context;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/dropbox/android/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 10
    sget-object v0, Lcom/dropbox/android/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can only set app context once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_c
    sput-object p0, Lcom/dropbox/android/a;->a:Landroid/content/Context;

    .line 14
    return-void
.end method

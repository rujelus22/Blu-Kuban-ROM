.class public final Ldbxyzptlk/z/b;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:C

.field private static final c:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/z/b;->a:Ljava/lang/String;

    .line 119
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Ldbxyzptlk/z/b;->b:C

    .line 126
    invoke-static {}, Ldbxyzptlk/z/b;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 127
    const/16 v0, 0x2f

    sput-char v0, Ldbxyzptlk/z/b;->c:C

    .line 131
    :goto_16
    return-void

    .line 129
    :cond_17
    const/16 v0, 0x5c

    sput-char v0, Ldbxyzptlk/z/b;->c:C

    goto :goto_16
.end method

.method static a()Z
    .registers 2

    .prologue
    .line 147
    sget-char v0, Ldbxyzptlk/z/b;->b:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

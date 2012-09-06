.class public final enum Lcom/darekxan/extweaks/a;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/darekxan/extweaks/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/darekxan/extweaks/a;

.field public static final enum b:Lcom/darekxan/extweaks/a;

.field public static final enum c:Lcom/darekxan/extweaks/a;

.field private static final synthetic g:[Lcom/darekxan/extweaks/a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/darekxan/extweaks/widgets/SettingsRoot;

.field private f:Lcom/darekxan/extweaks/f;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/darekxan/extweaks/a;

    const-string v1, "KERNEL"

    const-string v2, "/res/"

    invoke-direct {v0, v1, v3, v2}, Lcom/darekxan/extweaks/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/darekxan/extweaks/a;->a:Lcom/darekxan/extweaks/a;

    .line 8
    new-instance v0, Lcom/darekxan/extweaks/a;

    const-string v1, "ROM"

    const-string v2, "/system/"

    invoke-direct {v0, v1, v4, v2}, Lcom/darekxan/extweaks/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/darekxan/extweaks/a;->b:Lcom/darekxan/extweaks/a;

    .line 9
    new-instance v0, Lcom/darekxan/extweaks/a;

    const-string v1, "USER"

    const-string v2, "/data/"

    invoke-direct {v0, v1, v5, v2}, Lcom/darekxan/extweaks/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/darekxan/extweaks/a;->c:Lcom/darekxan/extweaks/a;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/darekxan/extweaks/a;

    sget-object v1, Lcom/darekxan/extweaks/a;->a:Lcom/darekxan/extweaks/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/darekxan/extweaks/a;->b:Lcom/darekxan/extweaks/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/darekxan/extweaks/a;->c:Lcom/darekxan/extweaks/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/darekxan/extweaks/a;->g:[Lcom/darekxan/extweaks/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/darekxan/extweaks/a;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/a;->b(Lcom/darekxan/extweaks/widgets/SettingsRoot;)V

    .line 17
    iput-object v0, p0, Lcom/darekxan/extweaks/a;->f:Lcom/darekxan/extweaks/f;

    .line 18
    return-void
.end method

.method public static a(Lcom/darekxan/extweaks/widgets/SettingsRoot;)Lcom/darekxan/extweaks/f;
    .registers 6
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lcom/darekxan/extweaks/a;->values()[Lcom/darekxan/extweaks/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_a

    .line 24
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 20
    :cond_a
    aget-object v3, v1, v0

    .line 21
    iget-object v4, v3, Lcom/darekxan/extweaks/a;->e:Lcom/darekxan/extweaks/widgets/SettingsRoot;

    if-ne v4, p0, :cond_13

    .line 22
    iget-object v0, v3, Lcom/darekxan/extweaks/a;->f:Lcom/darekxan/extweaks/f;

    goto :goto_9

    .line 20
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static a(Lcom/darekxan/extweaks/f;)Lcom/darekxan/extweaks/widgets/SettingsRoot;
    .registers 6
    .parameter

    .prologue
    .line 27
    invoke-static {}, Lcom/darekxan/extweaks/a;->values()[Lcom/darekxan/extweaks/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_a

    .line 31
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 27
    :cond_a
    aget-object v3, v1, v0

    .line 28
    iget-object v4, v3, Lcom/darekxan/extweaks/a;->f:Lcom/darekxan/extweaks/f;

    if-ne v4, p0, :cond_13

    .line 29
    iget-object v0, v3, Lcom/darekxan/extweaks/a;->e:Lcom/darekxan/extweaks/widgets/SettingsRoot;

    goto :goto_9

    .line 27
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/darekxan/extweaks/a;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/darekxan/extweaks/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/a;

    return-object v0
.end method

.method public static values()[Lcom/darekxan/extweaks/a;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/darekxan/extweaks/a;->g:[Lcom/darekxan/extweaks/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/darekxan/extweaks/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/darekxan/extweaks/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/darekxan/extweaks/widgets/SettingsRoot;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/darekxan/extweaks/a;->e:Lcom/darekxan/extweaks/widgets/SettingsRoot;

    return-object v0
.end method

.method public final b(Lcom/darekxan/extweaks/f;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/darekxan/extweaks/a;->f:Lcom/darekxan/extweaks/f;

    .line 47
    return-void
.end method

.method public final declared-synchronized b(Lcom/darekxan/extweaks/widgets/SettingsRoot;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/darekxan/extweaks/a;->e:Lcom/darekxan/extweaks/widgets/SettingsRoot;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 41
    monitor-exit p0

    return-void

    .line 40
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

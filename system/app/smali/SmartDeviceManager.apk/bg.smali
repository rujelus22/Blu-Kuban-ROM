.class public Lbg;
.super Ljava/lang/Object;
.source "a"


# static fields
.field private static b:Lbg;


# instance fields
.field public a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbg;->a:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbg;
    .registers 3
    .parameter

    .prologue
    .line 15
    sget-object v0, Lbg;->b:Lbg;

    if-eqz v0, :cond_7

    sget-object v0, Lbg;->b:Lbg;

    .line 21
    :goto_6
    return-object v0

    .line 17
    :cond_7
    const-class v0, Lbg;

    monitor-enter v0

    .line 18
    :try_start_a
    sget-object v1, Lbg;->b:Lbg;

    if-nez v1, :cond_15

    new-instance v1, Lbg;

    invoke-direct {v1, p0}, Lbg;-><init>(Landroid/content/Context;)V

    sput-object v1, Lbg;->b:Lbg;

    .line 19
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 21
    sget-object v0, Lbg;->b:Lbg;

    goto :goto_6

    .line 19
    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lbe;)Lbg;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lbg;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    const-string v1, "last_phone_number"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    const-string v1, "last_direction"

    invoke-virtual {p2}, Lbe;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lbg;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_phone_number"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbe;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lbg;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_direction"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-nez v0, :cond_d

    move-object v0, v2

    .line 71
    :goto_c
    return-object v0

    :cond_d
    const-class v1, Lbe;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbe;

    move-object v0, p0

    goto :goto_c
.end method

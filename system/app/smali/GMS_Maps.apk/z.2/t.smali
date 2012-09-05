.class public Lz/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Landroid/content/SharedPreferences$Editor;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DriveAbout"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lz/t;->a:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_19

    iget-object v0, p0, Lz/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Lz/t;->b:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lz/t;->c:Ljava/lang/String;

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_14
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLz/s;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lz/t;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lz/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lz/t;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-object p1

    :cond_5
    invoke-direct {p0, p1}, Lz/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p1, v0

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .registers 5

    invoke-direct {p0, p1}, Lz/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1}, Lz/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lz/t;
    .registers 4

    iget-object v0, p0, Lz/t;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lz/t;->c:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lz/t;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lz/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_12
    iget-object v0, p0, Lz/t;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lag/b;->a(Landroid/content/SharedPreferences$Editor;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lz/t;
    .registers 5

    iget-object v0, p0, Lz/t;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lz/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lz/t;->b:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_17
    iget-object v0, p0, Lz/t;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lag/b;->a(Landroid/content/SharedPreferences$Editor;)V

    return-object p0

    :cond_1d
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lz/t;->b:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    :cond_29
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lz/t;->b:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 5

    invoke-direct {p0, p1}, Lz/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

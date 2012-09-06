.class public Lt/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Landroid/content/SharedPreferences$Editor;

.field private final c:Ljava/lang/String;

.field private final d:LaT/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const-string v0, "DriveAbout"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lt/s;->a:Landroid/content/SharedPreferences;

    .line 184
    invoke-static {p1}, LaT/b;->a(Landroid/content/Context;)LaT/b;

    move-result-object v0

    iput-object v0, p0, Lt/s;->d:LaT/b;

    .line 185
    if-eqz p3, :cond_1f

    iget-object v0, p0, Lt/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_1a
    iput-object v0, p0, Lt/s;->b:Landroid/content/SharedPreferences$Editor;

    .line 186
    iput-object p2, p0, Lt/s;->c:Ljava/lang/String;

    .line 187
    return-void

    .line 185
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLt/r;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1, p2, p3}, Lt/s;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lt/s;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 272
    :cond_4
    :goto_4
    return-object p1

    .line 271
    :cond_5
    invoke-direct {p0, p1}, Lt/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lt/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p1, v0

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lt/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lt/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lt/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lt/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lt/s;
    .registers 4
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lt/s;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    iget-object v0, p0, Lt/s;->c:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 257
    iget-object v0, p0, Lt/s;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lt/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    :cond_12
    iget-object v0, p0, Lt/s;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, LR/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 260
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lt/s;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lt/s;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 229
    invoke-direct {p0, p1}, Lt/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    :cond_8
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    .line 232
    iget-object v0, p0, Lt/s;->b:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 240
    :goto_17
    iget-object v0, p0, Lt/s;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, LR/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 241
    return-object p0

    .line 233
    :cond_1d
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 234
    iget-object v0, p0, Lt/s;->b:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    .line 235
    :cond_29
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_39

    .line 236
    iget-object v0, p0, Lt/s;->b:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    .line 238
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
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lt/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lt/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lt/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    if-nez v0, :cond_8

    .line 223
    :cond_7
    :goto_7
    return-object p2

    .line 219
    :cond_8
    iget-object v1, p0, Lt/s;->d:LaT/b;

    invoke-virtual {v1, v0}, LaT/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_7

    move-object p2, v0

    .line 223
    goto :goto_7
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lt/s;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lt/s;->d:LaT/b;

    invoke-virtual {v0, p2}, LaT/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lt/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lt/s;

    move-result-object v0

    return-object v0
.end method

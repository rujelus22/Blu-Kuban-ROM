.class public abstract Lcom/anddoes/launcher/preference/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/anddoes/launcher/preference/g;->a:Landroid/content/Context;

    .line 9
    iput-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    .line 12
    iput-object p1, p0, Lcom/anddoes/launcher/preference/g;->a:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    .line 33
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 35
    :cond_a
    return p2
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 56
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    :cond_10
    return-void
.end method

.method public final a(Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    .line 65
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 67
    :cond_a
    return p2
.end method

.method public final b(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 40
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    :cond_10
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 72
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    :cond_10
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    .line 17
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    :cond_a
    return-object p2
.end method

.method public final d(Ljava/lang/String;)J
    .registers 5
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 48
    iget-object v2, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_c

    .line 49
    iget-object v2, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 51
    :cond_c
    return-wide v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 24
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 25
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    :cond_10
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 107
    iget-object v0, p0, Lcom/anddoes/launcher/preference/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    :cond_10
    return-void
.end method

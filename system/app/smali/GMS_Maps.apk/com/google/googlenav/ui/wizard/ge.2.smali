.class Lcom/google/googlenav/ui/wizard/gE;
.super Landroid/widget/AlphabetIndexer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gz;)V
    .registers 4
    .parameter

    .prologue
    .line 27
    const/16 v0, 0x8

    invoke-static {p1}, Lcom/google/googlenav/ui/wizard/gE;->a(Lcom/google/googlenav/ui/wizard/gz;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 28
    return-void
.end method

.method static a(Ljava/lang/String;)C
    .registers 4
    .parameter

    .prologue
    const/16 v0, 0x20

    .line 76
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 84
    :cond_8
    :goto_8
    return v0

    .line 80
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 82
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_8
.end method

.method static a(Lcom/google/googlenav/ui/wizard/gz;)Ljava/lang/CharSequence;
    .registers 4
    .parameter

    .prologue
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gz;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 41
    :cond_c
    invoke-static {p0}, Lcom/google/googlenav/ui/wizard/gE;->b(Lcom/google/googlenav/ui/wizard/gz;)C

    move-result v1

    .line 42
    if-eq v1, v0, :cond_16

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 46
    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gz;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 48
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Lcom/google/googlenav/ui/wizard/gz;)C
    .registers 3
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gz;->b()Lcom/google/googlenav/friend/aI;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/google/googlenav/friend/aI;->b:Lcom/google/googlenav/friend/aI;

    if-ne v0, v1, :cond_f

    .line 61
    :cond_c
    const/16 v0, 0x25cb

    .line 65
    :goto_e
    return v0

    .line 62
    :cond_f
    sget-object v1, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    if-ne v0, v1, :cond_1c

    .line 63
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gE;->a(Ljava/lang/String;)C

    move-result v0

    goto :goto_e

    .line 65
    :cond_1c
    const/16 v0, 0x20

    goto :goto_e
.end method
